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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yuedong.constants.ResponseCode;
import org.yuedong.model.ExperienceCourse;
import org.yuedong.service.ActivityInfoService;
import org.yuedong.service.ExperienceCourseService;
import org.yuedong.utils.Response;
import org.yuedong.vo.ActivityBanner;
import org.yuedong.vo.ExperienceCourseModel;
import org.yuedong.vo.ExperienceDetail;

@Controller
@RequestMapping("/eCourse")
public class ExperienceCourseAction  extends BaseAction{
	@Autowired
	private ExperienceCourseService experienceCourseService;
	@Autowired
	private ActivityInfoService activityInfoService;
	
	/**
	 * 体验课首页
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/indexPage", name="体验课首页")
	public Object index(@PathVariable("v") String v, @RequestParam Map<String, String> params){
	    int pageIndex = 1;
	    String index = params.get("index");
	    try {
	    	 pageIndex = Integer.parseInt(index);
		} catch (Exception e) {
			return Response.error(ResponseCode.PARAMS_EROR, "index error");
		}
	    List<ActivityBanner> bannerList = null;
		List<ExperienceCourseModel> eCourseList = null;
		bannerList = this.activityInfoService.getActivityBanner();
		eCourseList = this.experienceCourseService.getCourseIndex(pageIndex);
		Map<String, Object> resultParams = new HashMap<String, Object>();
		resultParams.put("bannerList", bannerList);
		resultParams.put("eCourseList", eCourseList);
		resultParams.put("index", (index+1));
		return Response.success(resultParams);
	}
	/**
	 * 体验课详情
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/detail", name="体验课详情")
	public Object activityDetail(HttpServletRequest request, @RequestParam Map<String, String> params){
		String experienceCode = params.get("eCourseCode");
		String userCode = params.get("userCode");
		ExperienceDetail experienceDetail = new ExperienceDetail();
		if(StringUtils.isBlank(experienceCode)){
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		ExperienceCourse experienceCourse = this.experienceCourseService.findByCode(experienceCode);
		if(experienceCourse == null){
			return Response.error(ResponseCode.NOT_EXIT, "not exit");
		}
		experienceDetail = this.experienceCourseService.getEcourseDetail(userCode, experienceCourse);
		if(experienceCode.equals(request.getSession().getAttribute("activityCode"))){
			experienceDetail.setStudentCode((String) request.getSession().getAttribute("studentCode"));
			experienceDetail.setStudentName((String) request.getSession().getAttribute("studentName"));
			experienceDetail.setCouponCode((String) request.getSession().getAttribute("couponCode"));
			experienceDetail.setDiscount((String) request.getSession().getAttribute("price"));
		}
		return Response.success(experienceDetail); 
	}
}
