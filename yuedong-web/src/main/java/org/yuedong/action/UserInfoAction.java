package org.yuedong.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yuedong.constants.DeadlineTime;
import org.yuedong.constants.OrderType;
import org.yuedong.constants.ResponseCode;
import org.yuedong.model.ImgInfo;
import org.yuedong.model.UserInfo;
import org.yuedong.service.CouponInfoService;
import org.yuedong.service.ImgInfoService;
import org.yuedong.service.OrderInfoService;
import org.yuedong.service.UserInfoService;
import org.yuedong.service.UserPreferenceService;
import org.yuedong.utils.Md5Utils;
import org.yuedong.utils.MemcachedUtils;
import org.yuedong.utils.MessageUtil;
import org.yuedong.utils.Response;
import org.yuedong.utils.UploadToken;
import org.yuedong.vo.UserCenterIndex;
import org.yuedong.vo.UserModel;

/**
 * 用户基本操作操作类
 * @author 黑夜骑士
 *
 */
@Controller
@RequestMapping("/user")
public class UserInfoAction extends BaseAction {

	@Autowired
	private UserInfoService userInfoService;
	
	@Autowired
	private ImgInfoService imgInfoService;
	@Autowired
	private UserPreferenceService userPreferenceService;
	@Autowired
	private OrderInfoService orderInfoService;
	@Autowired
	private CouponInfoService couponInfoService;
	
	/**
	 * 修改用户信息
	 * @param v
	 * @param userInfo
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/update", name="修改用户信息")
	public Object updateUserInfo(@PathVariable("v") String v, @RequestParam Map<String,String> params){
	    UserModel userModel = new UserModel();
		userModel.setUserCode(params.get("userCode"));
		userModel.setUserName(params.get("userName"));
	    userModel.setTelephone(params.get("telephone"));
		if(null ==params.get("age") || "".equals(params.get("age"))){
			
		}else{
			userModel.setAge(Integer.parseInt(params.get("age")));
		}
		System.out.println("sex------->>>>"+params.get("sex"));
		userModel.setSex(params.get("sex"));
		userModel.setLocationCity(params.get("addresing"));
		int result = this.userInfoService.updateUserInfo(userModel);
		if(result <= 0){
			return Response.fail("server exception");
		}
		return Response.success("update seccess");
	}
	
	/**
	 * 获取图片上传token
	 * 
	 * @param v
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/img/token",name="获取图片上传token")
	public Object getUserUploadToken(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String key = params.get("imgUrl");
		Map<String, String> map = new HashMap<String, String>();
		try {
			map.put("token", UploadToken.getToken("yuedongke", key));
		} catch (Exception e) {
			return Response.fail(null);
		}
		return Response.success(map);
	}
	
	/**
	 * 获取用户信息
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/detail", name="获取用户信息", method=RequestMethod.GET)
	public Object getUserInfo(@PathVariable("v") String v, @RequestParam("userCode") String userCode){
		if(StringUtils.isBlank(userCode)){
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		UserModel userModel = new UserModel();
		System.out.println(userCode);
		UserInfo userInfo = this.userInfoService.findByCode(userCode);
		userModel.setAge(userInfo.getAge());
		userModel.setLocationCity(userInfo.getLocationCity());
		userModel.setSex(userInfo.getSex());
		userModel.setTelephone(userInfo.getTelephone());
		userModel.setUserCode(userCode);
		userModel.setUserName(userInfo.getUserName());
		String imgUrl = userInfo.getImgUrl();
		/*if(!StringUtils.isBlank(imgCode)){
			ImgInfo imgInfo = this.imgInfoService.findByCode(imgCode);
			if(imgInfo != null){
				userModel.setImgUrl(imgInfo.getImgUrl());
				userModel.setImgCode(imgCode);
			}
		}*/
		userModel.setImgUrl(imgUrl);
		return Response.success(userModel);
	}
	
	
	/**
	 * 用户个人中心首页
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{V}/centerIndex", name="用户个人中心首页")
	public Object userCenterIndexPage(@PathVariable("V") String v, @RequestParam Map<String, String> params){
		String userCode = params.get("userCode");
		if(StringUtils.isBlank(userCode)){
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		UserInfo userInfo = this.userInfoService.findByCode(userCode);
		if(userInfo == null){
			return Response.error(ResponseCode.NOT_EXIT, "not exit");
		}
		UserCenterIndex userCenterInde = new UserCenterIndex();
	    String preferenceCode = this.userPreferenceService.getUserPreferenceCode(userCode);
		String preferenceName = "";
		if(!StringUtils.isBlank(preferenceCode)){
			preferenceName = this.userPreferenceService.convertPreferenceCodeToName(preferenceCode);
		}
		int activityOrderNum = this.orderInfoService.getOngoingOrderNum(userCode, OrderType.ACTIVITY);
		int courseOrderNum = this.orderInfoService.getOngoingOrderNum(userCode, OrderType.COURSE);
		int couponNum = this.couponInfoService.getUnusedCouponNum(userCode);
		
		userCenterInde.setActivityOrderNum(activityOrderNum);
		userCenterInde.setCourseOrderNum(courseOrderNum);
		userCenterInde.setCouponNum(couponNum);
		userCenterInde.setPreferenceName(preferenceName);
		userCenterInde.setImgUrl(userInfo.getImgUrl());
		userCenterInde.setUserName(userInfo.getUserName());
		return Response.success(userCenterInde);
	}
	
	/**
	 * 修改密码
	 * @param v
	 * @param params
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/resetPassword", name="修改密码")
	public Object resetPassword(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String telephone = params.get("telephone");
		String verifyCode = params.get("verifyCode");
		String password = params.get("password");
		String confirmPassword = params.get("confirmPassword");
		String userCode = params.get("userCode");
		String memcachCode = null;
		UserInfo userInfo = null;

		memcachCode = (String) MemcachedUtils.get(telephone);
		if (StringUtils.isBlank(memcachCode)) {
			return Response.error(ResponseCode.PARAMS_EROR,"verifyCode deadline");
		}
		if (StringUtils.isBlank(telephone) || StringUtils.isBlank(verifyCode)
				|| StringUtils.isBlank(password)
				|| StringUtils.isBlank(confirmPassword)
				|| !isTelphone(telephone) || !password.equals(confirmPassword)
				|| !memcachCode.equals(verifyCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}

		userInfo = this.userInfoService.findByTelephone(telephone);
		if (userInfo == null || !userCode.equals(userInfo.getUserCode())) {
			return Response.error(ResponseCode.NOT_EXIT, "telephone not regist");
		}
		userInfo = null;
		userInfo = new UserInfo();
		userInfo.setUserCode(userCode);
		userInfo.setPassword(Md5Utils.md5(Md5Utils.md5(password)));
		this.userInfoService.updateByCode(userInfo);
		userInfo = null;
		return Response.success("resetpassword success");
	}
	
	/**
	 * 获取验证码
	 * @param v
	 * @param telephone
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/getVerifyCode",name="获取验证码", method = RequestMethod.GET)
	public Object getVerifyCode(@PathVariable("v") String v,
			@RequestParam("telephone") String telephone) {
		if (StringUtils.isBlank(telephone) || !isTelphone(telephone)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		String verifyCode = RandomStringUtils.random(4, false, true);
		MemcachedUtils.set(telephone, DeadlineTime.VERIFY_CODE, verifyCode);
		Map<String, String> responseParams = new HashMap<String, String>();
		responseParams.put("verifyCode", verifyCode);
		return MessageUtil.sendMessage(telephone, verifyCode + ",2",
				responseParams);
	}

	/**
	 * 通过验证码登录
	 * @param v
	 * @param params
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/loginByCode", name="通过验证码登录",  method = RequestMethod.POST)
	public Object loginByVerifyCode(@PathVariable("v") String v,
			@RequestParam Map<String, String> params, HttpServletRequest request) {
		String telephone = null;
		String verifyCode = null;
		String memcaheCode = null;
		String password = null;
		telephone = params.get("telephone");
		verifyCode = params.get("verifyCode");
		password  =  params.get("password");
		if (StringUtils.isBlank(telephone) || StringUtils.isBlank(verifyCode)
				|| !isTelphone(telephone)){
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		memcaheCode = (String) MemcachedUtils.get(telephone);
		if(StringUtils.isBlank(memcaheCode)){
			return Response.error(ResponseCode.NOT_EXIT, "verifyCode deadline");
		}
		if(!verifyCode.equals(memcaheCode)){
			return Response.error(ResponseCode.PARAMS_EROR, "verifyCode error");
		}
		UserInfo userInfo = this.userInfoService.findByTelephone(telephone);
		Map<String, String> resultParams = new HashMap<String, String>();
		if(userInfo != null){
			//用户已存在
			if(userInfo.getPassword().equals(Md5Utils.md5(Md5Utils.md5(password)))){
				//登录成功
				resultParams.put("userCode", userInfo.getUserCode());
				MemcachedUtils.set("user", DeadlineTime.SESSION_TIME, userInfo);
				request.getSession().setAttribute("user", userInfo);
				return Response.success(resultParams);
			}else{
				return Response.error(ResponseCode.PARAMS_EROR, "password error");
			}
		}
		String userCode = this.userInfoService.addUser(telephone,Md5Utils.md5(Md5Utils.md5(password)));
		userInfo = new UserInfo();
		userInfo.setUserCode(userCode);
		userInfo.setTelephone(telephone);		
		MemcachedUtils.set("user", DeadlineTime.SESSION_TIME, userInfo);
		resultParams.put("userCode", userCode);
		request.getSession().setAttribute("user", userInfo);
		return Response.success(resultParams);
	}
	
	/**
	 * 通过密码登录
	 * @param v
	 * @param userInfo
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/loginByPassword", name="通过密码登录",  method = RequestMethod.POST)
	public Object loginByPassword(@PathVariable("v") String v,
			@RequestParam Map<String ,String > param, HttpServletRequest request) {
		String telephone = null;
		String password = null;
		UserInfo temp = null;
		telephone = param.get("telephone");
		password = param.get("password");
		if (StringUtils.isBlank(telephone) || StringUtils.isBlank(password)
				|| !isTelphone(telephone)){
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		temp = this.userInfoService.findByTelephone(telephone);
		if(temp == null){
			return Response.error(ResponseCode.NOT_EXIT, "not regist");
		}
		password = Md5Utils.md5(Md5Utils.md5(password));
		if(password.equals(temp.getPassword())){
			MemcachedUtils.set("user", DeadlineTime.SESSION_TIME, temp);
			request.getSession().setAttribute("user", temp);
			request.setAttribute("userCode", temp.getUserCode());
			return Response.success("userCode",temp.getUserCode());
		}
		return Response.error(ResponseCode.PARAMS_EROR, "password error");
	}
	/**
	 * 获取session
	 * @param params
	 * @return
	 */
    @ResponseBody
	@RequestMapping("/get/session")
	public  Map<String, String> getSession(HttpServletRequest request) {
    	 HttpSession session = request.getSession();
	     UserInfo userInfo  = (UserInfo) session.getAttribute("user");
	     Map<String, String>  map = new HashMap<String ,String>();
	     if(userInfo!=null){
	    	 map.put("userCode", userInfo.getUserCode());
	     }
		return map; 
	}
}
