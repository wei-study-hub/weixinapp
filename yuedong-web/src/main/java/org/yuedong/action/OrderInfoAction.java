package org.yuedong.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.yuedong.constants.CourseStatus;
import org.yuedong.constants.OrderStatus;
import org.yuedong.constants.ResponseCode;
import org.yuedong.constants.WxPbConstants;
import org.yuedong.constants.WxpubOAuth;
import org.yuedong.model.ActivityInfo;
import org.yuedong.model.CouponInfo;
import org.yuedong.model.CourseInfo;
import org.yuedong.model.OrderInfo;
import org.yuedong.model.UserInfo;
import org.yuedong.pay.Charge;
import org.yuedong.pay.PingCharge;
import org.yuedong.service.ActivityInfoService;
import org.yuedong.service.CouponInfoService;
import org.yuedong.service.CourseInfoService;
import org.yuedong.service.OrderInfoService;
import org.yuedong.service.StudentInfoService;
import org.yuedong.service.UserInfoService;
import org.yuedong.utils.MemcachedUtils;
import org.yuedong.utils.Response;
import org.yuedong.vo.ActivityOrderModel;
import org.yuedong.vo.OrderDetail;
import org.yuedong.vo.OrderModel;
import org.yuedong.vo.PayModel;

import com.alibaba.fastjson.JSON;
import com.pingplusplus.model.Event;
import com.pingplusplus.model.Webhooks;
/**
 * 处理客户端 订单请求的action
 * 
 * @author sgl 2016年2月24日 下午1:27:30 TODO
 * @version 1.1
 */
@Controller
@RequestMapping("/order")
public class OrderInfoAction extends BaseAction {

	private static final String HttpClientUtil = null;
	@Autowired
	private OrderInfoService orderInfoService;
	@Autowired
	private CourseInfoService courseInfoService;
	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private StudentInfoService studentInfoService;
	@Autowired
	private CouponInfoService couponInfoService;
	@Autowired
	private ActivityInfoService activityInfoService;
	@Autowired
	private PingCharge pingCharge;

	/**
	 * 课程-立即报名
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/createCourseOrder", name = "立即报名")
	public Object createCourseOrder(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String userCode = params.get("userCode");
		String courseCode = params.get("courseCode");
		// 获取课程信息
		CourseInfo courseInfo = courseInfoService.findByCode(courseCode);
		int currNum = courseInfo.getJoinNum();// 当前人数
		int maxNum = courseInfo.getMaxJoinNum();// 最大人数
		// 已经满足最大人数
		if (currNum == maxNum) {
			courseInfo.setStatus(CourseStatus.IS_FUNLL);
			courseInfoService.updateByCode(courseInfo);// 改变课程当前人数状态
			return Response.success(CourseStatus.IS_FUNLL);
		}
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("courseInfo", courseInfo);
		return Response.success(ResponseCode.SUCCESS, resultMap);
	}

	/**
	 * 获取课程订单详细信息
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/courseOrderDetails", name = "订单详情")
	public Object getCourseOrderDetails(@PathVariable("v") String v, @RequestParam("orderCode") String orderCode) {
		if (StringUtils.isBlank(orderCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "param error");
		}

		OrderDetail orderDetail = (OrderDetail) MemcachedUtils.get(orderCode);
		if (orderDetail == null) {
			OrderInfo orderInfo = this.orderInfoService.findByCode(orderCode);
			if (orderInfo == null) {
				return Response.error(ResponseCode.PARAMS_EROR, "orderNo error");
			}
			orderDetail = this.orderInfoService.getOrderDetail(orderInfo);
			if (orderDetail == null) {
				return Response.error(ResponseCode.NOT_EXIT, "orderType error");
			}
		}
		return Response.success(orderDetail);
		
	}

	/**
	 * 提交课程订单
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/submitCourseOrder", name = "提交课程订单")
	public Object submitCourseOrder(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String orderNo = params.get("orderNo");
		if (orderNo != null) { // 用户从个人中心进入
			Map<String, Object> resultMap = new HashMap<String, Object>();
			OrderInfo orderInfo = orderInfoService.findByCode(orderNo);
			CourseInfo courseInfo = courseInfoService.findByCode(orderInfo.getGoodsCode());
			resultMap.put("amount", orderInfo.getAmount());// 总金额
			resultMap.put("orderNo", orderInfo.getOrderNo());// 订单号
			resultMap.put("subject", courseInfo.getCourseTypeName());
			resultMap.put("body", courseInfo.getCourseName());
			return Response.success(resultMap);
		}
		// 获取用户信息
		String userCode = params.get("userCode");
		// 获取课程信息
		String courseCode = params.get("courseCode");
		// 获取学员信息
		String stuCode = params.get("studentCode");
		// 获取优惠券信息
		String couponCode = params.get("couponCode");
		// 获取备注信息
		String remark = params.get("remark");
		// 获取客户端计算的金额结果
		int clientAmount = Integer.parseInt(params.get("amount"));
		if (StringUtils.isBlank(userCode) || StringUtils.isBlank(courseCode) || StringUtils.isBlank(stuCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "param error");
		}
		CourseInfo courseInfo = courseInfoService.findByCode(courseCode);
		if (courseInfo != null) {
			Map<String, Object> resultMap = orderInfoService.createCourseOrder(userCode, courseInfo, stuCode,
					couponCode, clientAmount, remark);
			if (resultMap.get("resultCode") != null && resultMap.get("resultCode").equals(ResponseCode.INVALID)) {
				return Response.error(ResponseCode.INVALID, "client money not match to server..");
			}
			return Response.success(resultMap);
		}
		return Response.error(ResponseCode.NOT_EXIT, "course not exit");
	}

	/**
	 * 活动立即报名
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/createActivityOrder", name = "活动立即报名")
	public Object createActivityOrderInfo(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String userCode = params.get("userCode");
		String activityCode = params.get("activityCode");
		String activityTypeCode = params.get("activityTypeCode");
		String temp = params.get("price");

		if (!StringUtils.isNumeric(temp)) {
			return Response.error(ResponseCode.PARAMS_EROR, "price error");
		}
		int price = 0;
		price = Integer.parseInt(temp);

		if (StringUtils.isBlank(activityTypeCode) || StringUtils.isBlank(activityCode)
				|| StringUtils.isBlank(userCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		ActivityOrderModel activityOrderModel = this.orderInfoService.createActivityOrder(userCode, activityCode,
				activityTypeCode);
		if (activityOrderModel != null) {
			int couponNum = 0;
			List<CouponInfo> list = this.couponInfoService.getCouponListOnSpecifyType(userCode, activityTypeCode,
					price);
			if (list != null && list.size() > 0) {
				couponNum = list.size();
			}
			activityOrderModel.setCouponNum(couponNum);
			return Response.success(activityOrderModel);
		}
		return Response.error(ResponseCode.INVALID, "can not join");
	}


	/**
	 * 提交活动订单 点击立即付款
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/submitActivityOrder", name = "提交活动订单")
	public Object submitActivityOrder(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String userCode = params.get("userCode");
		String goodsCode = params.get("activityCode");
		String studentCode = params.get("studentCode");
		String couponCode = params.get("couponCode");
		String price = params.get("price");
		String amount = params.get("amount");
		String orderNo = params.get("orderNo");
		String remarks = params.get("remarks");

		System.out.println(JSON.toJSONString(params));

		orderNo = this.orderInfoService.intsertActivityOrder(userCode, goodsCode, studentCode, couponCode, price,
				amount, orderNo, remarks);
		if (StringUtils.isBlank(orderNo)) {
			return Response.fail("submit order error");
		}
		if (ResponseCode.EXIT.equals(orderNo)) {
			return Response.error(ResponseCode.EXIT, "already submit order");
		}
		OrderInfo orderInfo = this.orderInfoService.findByCode(orderNo);
		if (orderInfo != null) {
			ActivityInfo activityInfo = this.activityInfoService.findByCode(orderInfo.getGoodsCode());
			if (activityInfo != null) {
				Map<String, String> resultParams = new HashMap<String, String>();
				resultParams.put("orderNo", orderNo);
				resultParams.put("amount", orderInfo.getAmount() + "");
				resultParams.put("subject", activityInfo.getActivityName());
				resultParams.put("body", activityInfo.getActivityName());
				return Response.success(resultParams);
			}
		}
		return Response.error(ResponseCode.NOT_EXIT, "not exit");

     }

	/**
	 * 订单详情
	 * 
	 * @param v
	 * @param orderNo
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/detail", name = "订单详情")
	public Object getOrderDetail(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String orderNo = params.get("orderNo");
		if (StringUtils.isBlank(orderNo)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		OrderInfo orderInfo = this.orderInfoService.findByCode(orderNo);
		if (orderInfo == null) {
			return Response.error(ResponseCode.PARAMS_EROR, "orderNo error");
		}
		OrderDetail orderDetail = this.orderInfoService.getOrderDetail(orderInfo);
		if (orderDetail == null) {
			return Response.error(ResponseCode.NOT_EXIT, "orderType error");

		}
		return Response.success(orderDetail);
	}

	/**
	 * 订单列表
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/list", name = "订单列表")
	public Object findUserOrderList(@PathVariable("v") String v, @RequestParam Map<String, String> params) {
		String userCode = params.get("userCode");
		String orderType = params.get("orderType");
		String index = params.get("index");
		int pageIndex = 1;
		if (StringUtils.isBlank(userCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		try {
			pageIndex = Integer.parseInt(index);
		} catch (Exception e) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		List<OrderModel> cModels = this.orderInfoService.getActivityOrderList(userCode, pageIndex);
		List<OrderModel> courseModels = this.orderInfoService.getCourseOrderList(userCode, pageIndex);
        Map<String, Object> map = new HashMap<String, Object>();
		map.put("courseModels", courseModels);
		map.put("cModels", cModels);
		return Response.success("orderModels", map);
	}

	/**
	 * 发起支付，获取凭证
	 * 
	 * @param v
	 * @param payModel
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/getCharge", name = "发起支付，获取凭证")
	public Object getCharge(@PathVariable("v") String v, @RequestBody PayModel payModel) {
		try {
			System.out.println(JSON.toJSONString(payModel));
			OrderInfo orderInfo = new OrderInfo();
			orderInfo.setOrderNo(payModel.getOrderNo());
			orderInfo.setStatus(OrderStatus.OBLIGATION);
			List<OrderInfo> list = null;
			list = this.orderInfoService.findAll(orderInfo);
			if (list != null && list.size() > 0) {
				orderInfo = list.get(0);
				Charge charge = pingCharge.charge(payModel);
				orderInfo.setChargeId(charge.getId());
				if (this.orderInfoService.updateByCode(orderInfo) <= 0) {
					return Response.fail("server error");
				}
				return Response.success(charge);
			}
			return Response.error(ResponseCode.NOT_EXIT, "orderNo error");
		} catch (Exception e) {
			return Response.fail("server exception");
		}
	}
   /**
	 * 支付成功
	 * 
	 * @param v
	 * @param event
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/client/{v}/pay/result", name = "支付成功")
	public void getPingResult(@PathVariable("v") String v, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		request.setCharacterEncoding("UTF8");
		// 获取头部所有信息
		Enumeration<String> headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String key = headerNames.nextElement();
			String value = request.getHeader(key);
			System.out.println(key + " " + value);
		}
		// 获得 http body 内容
		BufferedReader reader = request.getReader();
		StringBuffer buffer = new StringBuffer();
		String string;
		while ((string = reader.readLine()) != null) {
			buffer.append(string);
		}
		reader.close();
		// 解析异步通知数据
		Event event = Webhooks.eventParse(buffer.toString());
		Integer code = 500;
		if ("charge.succeeded".equals(event.getType())) {
			code = orderInfoService.paySuccess(event);
			response.setStatus(code);
		} else {
			response.setStatus(500);
		}
	}

	/**
	 * 删除未付款订单
	 * 
	 * @param v
	 * @param params
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/delete", name = "删除未付款订单")
	public Object deleteUnpayOrder(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String orderNo = params.get("orderNo");
		if (StringUtils.isBlank(orderNo)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		OrderInfo orderInfo = this.orderInfoService.findByCode(orderNo);
		if (orderInfo == null) {
			return Response.error(ResponseCode.NOT_EXIT, "orderNo not exit");
		}
		this.orderInfoService.deletOutTimeOrder(orderNo);
		return Response.success("success");
	}

	/**
	 * 产品预约
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/appoint", name = "产品预约")
	public Object userAppoint(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String userCode = params.get("userCode");
		String goodsCode = params.get("goodsCode");
		String appointType = params.get("appointType");
		String studentCode = params.get("studentCode");

		if (StringUtils.isBlank(userCode) || StringUtils.isBlank(goodsCode) || StringUtils.isBlank(appointType)
				|| StringUtils.isBlank(studentCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}

		OrderInfo orderInfo = new OrderInfo();
		orderInfo.setUserCode(userCode);
		orderInfo.setGoodsCode(goodsCode);
		orderInfo.setStudentCode(studentCode);
		orderInfo.setOrderType(appointType);
		List<OrderInfo> orderInfos = this.orderInfoService.findAll(orderInfo);
		if (orderInfos != null && orderInfos.size() > 0) {
			return Response.error(ResponseCode.EXIT, "order exit");
		}

		boolean result = false;
		result = this.orderInfoService.userAppoint(orderInfo);
		if (result) {
			return Response.success("appoint success");
		}
		return Response.fail("appoint fail");
	}
	/**
	 * 体验课预约
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/createEcourseOrder", name = "体验课预约")
	public Object createEcourseOrderInfo(@PathVariable("v") String v, @RequestParam Map<String, String> params) {
        String userCode = params.get("userCode");
		String goodsCode = params.get("goodsCode");
	//	String appointType = params.get("appointType");  
		String appointType = "exp_course"; 
		String studentCode = params.get("studentCode");
		
        if (StringUtils.isBlank(userCode) || StringUtils.isBlank(goodsCode) || StringUtils.isBlank(appointType)
				|| StringUtils.isBlank(studentCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
        OrderInfo orderInfo = new OrderInfo();
		orderInfo.setUserCode(userCode);
		orderInfo.setGoodsCode(goodsCode);
		orderInfo.setStudentCode(studentCode);
		orderInfo.setOrderType(appointType);                                                      
		List<OrderInfo> orderInfos = this.orderInfoService.findAll(orderInfo);
		if (orderInfos != null && orderInfos.size() > 0) {
			return Response.error(ResponseCode.EXIT, "order exit");
		}
		boolean result = false;
		result = this.orderInfoService.userAppoint(orderInfo);
		if (result) {
			return Response.success("appoint success");
		}
		return Response.fail("appoint fail");
	}
	/**
	 * 移除完成订单
	 * 
	 * @param v
	 * @param params
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/remove", name = "移除完成订单")
	public Object removeCompleteOrder(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String orderNo = params.get("orderNo");
		OrderInfo temp = this.orderInfoService.findByCode(orderNo);
		if (temp != null) {
			if (OrderStatus.APPOINTMENT.equals(temp.getStatus())) {
				int value = 0;
				value = this.orderInfoService.deleteByCode(orderNo);
				if (value > 0) {
					return Response.success("remove success");
				}
 			}
			if (OrderStatus.COMPLETION.equals(temp.getStatus())) {
				temp.setDeleted("T");
				int result = 0;
				result = this.orderInfoService.updateByCode(temp);
				if (result > 0) {
					return Response.success("remove success");
				}
				return Response.fail("remove error");
			}
			return Response.fail("order not complete, status error");
		}
		return Response.error(ResponseCode.NOT_EXIT, "orderNo not exit");
	}
	/**
	 * 请求微信code
	 * @param courseCode
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/weixin/request_code")
	public Object getCode(String courseCode ,String studentCode ,String couponCode,String account, String remark ,HttpServletRequest request){
		String codeUrl = null;
	    request.getSession().setAttribute("courseCode", courseCode);
	    try {
			String redirectUrl = "http://www.yuedongke.com/yuedong-weixin/order/weixin/get_code";
			                             
			// 生成重定向的路劲
			codeUrl = WxpubOAuth.createOauthUrlForCode(WxPbConstants.wx_app_id, redirectUrl, true);
		    
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	    CourseInfo courseInfo = courseInfoService.findByCode(courseCode);
		UserInfo userInfo = (UserInfo) request.getSession().getAttribute("user");
		if (StringUtils.isEmpty(userInfo.getUserCode()) || StringUtils.isEmpty(courseCode)) {
			return null;
		}
		int accounts = Integer.parseInt(account);
		if (courseInfo != null) {
			 //生成代付款的订单
			Map<String, Object> resultMap = orderInfoService.createCourseOrder(userInfo.getUserCode(), 	 courseInfo , studentCode,
					couponCode, accounts, remark);
		    request.getSession().setAttribute("orderNo", resultMap.get("orderNo"));
			request.getSession().setAttribute("resultMap", resultMap);
		}
        return codeUrl;
	} 
	
	/**
	 * 异步获取用户授权
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/weixin/get_code")
	public ModelAndView receiveCode(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		String code = request.getParameter("code");
		modelAndView.addObject("code", code);
		String courseCode = (String)request.getSession().getAttribute("courseCode");
		modelAndView.addObject("courseCode", courseCode);
		modelAndView.setViewName("wxpb_get_code");
		return modelAndView;
	}
	
	
	/**
	 * 微信异步调用 获取charge
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/weixin/pay/charge")
	public Object getCharge(String courseCode, HttpServletRequest request) {
		String code = request.getParameter("code");
		String openId = null;                         
		try 
		{
			//获取openId
			openId = WxpubOAuth.getOpenId(WxPbConstants.wx_app_id, WxPbConstants.wx_app_secret, code);
		} catch (UnsupportedEncodingException e) {
			return "openId null";
		}
		UserInfo userInfo= (UserInfo) request.getSession().getAttribute("user");
		//判断课程编码与code是否存在
		if (StringUtils.isEmpty(userInfo.getUserCode()) || StringUtils.isEmpty(courseCode)) {
			return "false";
		} 
		String orderNo = (String) request.getSession().getAttribute("orderNo");
		return  orderInfoService.payCourseOrder(userInfo.getUserCode(), courseCode, openId,orderNo);
	}
	

	/**
	 * 支付成功
	 * 
	 * @param orderNo
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/weixin/pay/success")
	public Object orderPaySuccess(String orderNo,HttpServletRequest request) {
		String courseCode =  (String) request.getSession().getAttribute("courseCode");
		return this.orderInfoService.orderPaySuccess(orderNo,courseCode);
	}	
}
