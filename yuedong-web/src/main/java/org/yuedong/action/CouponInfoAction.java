package org.yuedong.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yuedong.constants.CouponStatus;
import org.yuedong.constants.ResponseCode;
import org.yuedong.model.CouponInfo;
import org.yuedong.model.CouponType;
import org.yuedong.service.CouponInfoService;
import org.yuedong.service.CouponTypeService;
import org.yuedong.utils.DataUtil;
import org.yuedong.utils.Datagrid;
import org.yuedong.utils.Response;
import org.yuedong.vo.CouponModel;


@Controller
@RequestMapping("/coupon")
public class CouponInfoAction extends BaseAction {

	@Autowired
	private CouponInfoService couponInfoService;
	@Autowired
	private CouponTypeService couponTypeService;
	
	/**
	 * 我的优惠券列表
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/list", name="我的优惠券列表")
	public Object userCouponList(@PathVariable("v") String v, @RequestParam Map<String, String> params){
		String userCode = params.get("userCode");
		String index = params.get("index");
		int pageIndex = 1;
		try {
			pageIndex = Integer.parseInt(index);
		} catch (Exception e) {
			return Response.error(ResponseCode.PARAMS_EROR, "index error");
		}
		if(StringUtils.isBlank(userCode)){
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		CouponInfo couponInfo = new CouponInfo();
		couponInfo.setUserCode(userCode);
		couponInfo.setStatus(CouponStatus.UNUSED);
		Datagrid<CouponInfo> datagrid = new Datagrid<CouponInfo>();
		datagrid.setSort("desc");
		datagrid.setIndex(pageIndex);
		datagrid.setT(couponInfo);
		datagrid.pagenation();
		List<CouponInfo> couponInfos = this.couponInfoService.page(datagrid).getResult();
		List<CouponModel> couponModels = this.convertToPageModel(couponInfos);
		return Response.success("couponModels",couponModels);
	}
	
	/**
	 * 我的某一活动或课程的优惠券列表
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/specialList", name="我的某一活动或课程的优惠券列表")
	public Object getCouponListOnSpecifyType(@PathVariable("v") String v, @RequestParam Map<String, String> params){
		String userCode = params.get("userCode");
		String scopeTypeCode = params.get("scopeTypeCode");
		String temp = params.get("price");
		
		if(!StringUtils.isNumeric(temp)){
			return Response.error(ResponseCode.PARAMS_EROR, "price error");
		}
		int price = 0;
		price = Integer.parseInt(temp);
		List<CouponInfo> couponInfos = this.couponInfoService.getCouponListOnSpecifyType(userCode, scopeTypeCode, price);
		List<CouponModel> couponModels = this.convertToPageModel(couponInfos);
		return Response.success("couponModels", couponModels);
	}
	
	/**
	 * 获取可用优惠券个数 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/unusedNum", name="获取可用优惠券个数")
	public Object getCouponNumOnSpecifyType(@PathVariable("v") String v, @RequestParam Map<String, String> params){
		String userCode = params.get("userCode");
		String scopeTypeCode = params.get("scopeTypeCode");
		String temp = params.get("price");
		if(!StringUtils.isNumeric(temp)){
			return Response.error(ResponseCode.PARAMS_EROR, "price error");
		}
		int price = 0;
		price = Integer.parseInt(temp);
		
		int num = 0;
		List<CouponInfo> couponInfos = this.couponInfoService.getCouponListOnSpecifyType(userCode, scopeTypeCode, price);
		if(couponInfos != null && couponInfos.size() > 0){
			num = couponInfos.size();
		}
		return Response.success("couponNum", num);
	}
	/**
	 * 保存选中优惠劵的信息
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/saveCoupon", name="获取可用优惠券个数")
	public void saveCoupon(HttpServletRequest request, @RequestParam Map<String, String> params){
	
		String couponCode = params.get("couponCode");
		String price = params.get("price");
		String activityCode = (String)request.getSession().getAttribute("activityCode");
		if(null !=activityCode && !activityCode.equals(params.get("activityCode"))){
			request.getSession().removeAttribute("studentCode");
			request.getSession().removeAttribute("studentName");
			
		}
        request.getSession().setAttribute("couponCode", couponCode);
		request.getSession().setAttribute("price", price);
		request.getSession().setAttribute("activityCode", params.get("activityCode"));
		
	}
	
	/**
	 * 优惠券模型转换
	 */
	private List<CouponModel> convertToPageModel(List<CouponInfo> couponInfos){
		
		List<CouponModel> couponModels = new ArrayList<CouponModel>();
		for(CouponInfo temp: couponInfos){
			CouponModel couponModel = new CouponModel();
			String couponTypeCode = temp.getCouponTypeCode();
			CouponType couponType = this.couponTypeService.findByCode(couponTypeCode);
			couponModel.setCouponCode(temp.getCouponCode());
			couponModel.setCouponName(couponType.getCouponTypeName());
			couponModel.setDeadline(DataUtil.dateToStr("yyyy-MM-dd", couponType.getDeadline()));
			couponModel.setDiscount(couponType.getDiscount() + "");
			couponModel.setRemarks(couponType.getRemarks());
			couponModel.setStatus(temp.getStatus());
			couponModel.setConditions(couponType.getConditions());
			couponModels.add(couponModel);
		}
		return couponModels;
	}

	
}
