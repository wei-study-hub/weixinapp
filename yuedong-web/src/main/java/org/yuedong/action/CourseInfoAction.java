package org.yuedong.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yuedong.constants.ResponseCode;
import org.yuedong.model.CommonTypeInfo;
import org.yuedong.model.CourseInfo;
import org.yuedong.service.CourseInfoService;
import org.yuedong.utils.Datagrid;
import org.yuedong.utils.Response;
import org.yuedong.vo.CourseDetials;
import org.yuedong.vo.CourseModel;

import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/course")
public class CourseInfoAction extends BaseAction {

	@Autowired
	private CourseInfoService courseInfoService;
	/**
	 * 课程首页
	 * 
	 * @return Object
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/courseIndex", name = "课程首页")
	public Object courseIndex(@PathVariable("v")String v) {
		List<CommonTypeInfo> commList = courseInfoService.getAllCommonType();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("commList", commList);
		return Response.success(resultMap);
	}

	/**
	 * 获取课程列表
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/courseList", name = "课程列表")
	@Deprecated
	public Object getCourseList(@PathVariable("v")String v,@RequestBody Map<String, String> params) {
		String type=params.get("type");//类型
		if (StringUtils.isBlank(type)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if (type.equals(CourseInfoService.GOODSTYPE)) {  //产品类型
			String goodsTypeCode = params.get("typeCode");
			if (StringUtils.isBlank(goodsTypeCode)) {
				List<CourseInfo> list = courseInfoService.findAll(null);
				resultMap.put("courseList", list);
				return Response.success(resultMap);
			}
			CourseInfo courseInfo = new CourseInfo();
			List<CourseModel> list = courseInfoService.findAllCourseByCon(courseInfo);
			resultMap.put("courseList", list);
			return Response.success(resultMap);
		}
		else if (type.equals(CourseInfoService.COURSETYPE)) {//课程类型
			String courseTypeCode = params.get("typeCode");
			if (StringUtils.isBlank(courseTypeCode)) {
				return Response.error(ResponseCode.PARAMS_EROR, "params error");
			}
			CourseInfo courseInfo = new CourseInfo();
			courseInfo.setCourseTypeCode(courseTypeCode);
			List<CourseModel> list = courseInfoService.findAllCourseByCon(courseInfo);
			resultMap.put("courseList", list);
			return Response.success(resultMap);
		}
		return Response.error(ResponseCode.PARAMS_EROR, "params error");
	}
	/**
	 * 课程筛选
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/courseFilter", name = "课程筛选")
	public Object filterCourse(@PathVariable("v")String v,@RequestParam Map<String, String> params) {
 		
		String courseTypeCode = params.get("courseTypeCode"); //课程类型
		String serviceAreasName = params.get("serviceAreasName"); // 区域
		String index = params.get("index");
		if (StringUtils.isBlank(courseTypeCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		int pageIndex = 1;
		try {
			pageIndex = Integer.parseInt(index);
		} catch (Exception e) {
			// TODO: handle exception
		}
		CourseInfo courseInfo = new CourseInfo();
		
		courseInfo.setServiceAreasName(serviceAreasName);
	   if (!courseTypeCode.equals("8")) {
			courseInfo.setCourseTypeCode(courseTypeCode);
		}
		Datagrid<CourseInfo> datagrid = new Datagrid<CourseInfo>();
		datagrid.setT(courseInfo);
		datagrid.setIndex(pageIndex);
		datagrid.setOrderBy("id");
		datagrid.setSort("desc");
		datagrid.pagenation();
		
		datagrid = this.courseInfoService.page(datagrid);
		List<CourseInfo> courseList = datagrid.getResult();
		List<CourseModel> list=getCourseModel(courseList);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		System.out.println(JSON.toJSONString(list));
		resultMap.put("courseList", list);
		return Response.success(resultMap);
	}
	/**
	 * @describle 根据课程详细信息列表获取课程model列表，用于客户端展示
	 * @return List<CourseModel>
	 */
	private List<CourseModel> getCourseModel(List<CourseInfo> courseList) {
		List<CourseModel> list=new ArrayList<CourseModel>();
		for (CourseInfo courseInfo : courseList) {
			CourseModel model=courseInfoService.getModelInfo(courseInfo);
			list.add(model);
		}
		return list;
	}

	/**
	 * 课程详细信息
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/courseDetails", name = "课程详细信息")
	public Object getCourseInfo(HttpServletRequest request ,@RequestParam Map<String, String> params)
	{
		String courseCode = params.get("courseCode");
		System.out.println("----->>>>>>"+params.get("courseCode"));
		String userCode = params.get("userCode");
		if (StringUtils.isBlank(courseCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		CourseInfo temp = this.courseInfoService.findByCode(courseCode);
		if(temp == null){
			return Response.error(ResponseCode.NOT_EXIT, "courseCode not exit");
		}
		CourseDetials courseInfo = courseInfoService.getCourseDetails(userCode, courseCode);
        if(courseCode.equals(request.getSession().getAttribute("activityCode"))){
        	courseInfo.setStudentCode((String) request.getSession().getAttribute("studentCode"));
        	courseInfo.setStudentName((String) request.getSession().getAttribute("studentName"));
        	courseInfo.setCouponCode((String) request.getSession().getAttribute("couponCode"));
        	courseInfo.setDiscount((String) request.getSession().getAttribute("price"));
		}
		return Response.success(courseInfo);
	}
	/**
	 *  课程搜索
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/courseSearch", name = "课程搜索")
	public Object courseSearch(@PathVariable("v")String v,@RequestParam("paramKey") String paramKey)
	{
		if (StringUtils.isBlank(paramKey)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		List<CourseModel> courseList=courseInfoService.searchCourse(paramKey);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("courseList", courseList);
		return Response.success(resultMap);
	}
}
