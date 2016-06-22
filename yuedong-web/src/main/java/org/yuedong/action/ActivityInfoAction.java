package org.yuedong.action;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.yuedong.constants.ResponseCode;
import org.yuedong.model.ActivityInfo;
import org.yuedong.service.ActivityInfoService;
import org.yuedong.utils.Response;
import org.yuedong.vo.ActivityBanner;
import org.yuedong.vo.ActivityDetail;
import org.yuedong.vo.ActivityIndex;


/**
 * 活动类操作
 * @author 黑夜骑士
 *
 */
@Controller
@RequestMapping("/activity")
public class ActivityInfoAction extends BaseAction {

	@Autowired
	private ActivityInfoService activityInfoService;

	/**
	 * 活动首页
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/indexPage", name="活动首页")
	public Object index(@PathVariable("v") String v, @RequestParam Map<String, String> params){
	    int pageIndex = 1;
	    String index = params.get("index");
	    try {
	    	 pageIndex = Integer.parseInt(index);
		} catch (Exception e) {
			return Response.error(ResponseCode.PARAMS_EROR, "index error");
		}
		
		List<ActivityBanner> bannerList = null;
		List<ActivityIndex> activityList = null;
		bannerList = this.activityInfoService.getActivityBanner();
		activityList = this.activityInfoService.getActivityIndex(pageIndex);
		
		Map<String, Object> resultParams = new HashMap<String, Object>();
		resultParams.put("bannerList", bannerList);
		resultParams.put("activityList", activityList);
		resultParams.put("index", (index+1));
		return Response.success(resultParams);
	}
	
	/**
	 * 活动详情
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/detail", name="活动详情")
	public Object activityDetail(HttpServletRequest request, @RequestParam Map<String, String> params){
		String activityCode = params.get("activityCode");
		String userCode = params.get("userCode");
		ActivityDetail activityDetail = new ActivityDetail();
		if(StringUtils.isBlank(activityCode)){
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		ActivityInfo activityInfo = this.activityInfoService.findByCode(activityCode);
		if(activityInfo == null){
			return Response.error(ResponseCode.NOT_EXIT, "not exit");
		}
		activityDetail = this.activityInfoService.getActivityDetail(userCode, activityInfo);
		if(activityCode.equals(request.getSession().getAttribute("activityCode"))){
			
			activityDetail.setStudentCode((String) request.getSession().getAttribute("studentCode"));
			activityDetail.setStudentName((String) request.getSession().getAttribute("studentName"));
			activityDetail.setCouponCode((String) request.getSession().getAttribute("couponCode"));
			activityDetail.setDiscount((String) request.getSession().getAttribute("price"));
			
		}
		return Response.success(activityDetail);
	}

	/**
	 * 活动详情
	 * @return
	 *//*
	@ResponseBody
	@RequestMapping(value="/client/{v}/list", name="活动详情", method = RequestMethod.GET)
	public ModelAndView getIndexDetail(ModelAndView modelAndView ){
		modelAndView.addObject("aList","code"); 
		modelAndView.setViewName("index");
		return modelAndView;
	}*/
}
