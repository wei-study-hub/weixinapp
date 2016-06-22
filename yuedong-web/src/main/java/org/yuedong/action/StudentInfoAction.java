package org.yuedong.action;

import java.util.ArrayList;
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
import org.yuedong.model.StudentInfo;
import org.yuedong.service.StudentInfoService;
import org.yuedong.utils.CodeGeneratorUtils;
import org.yuedong.utils.DataUtil;
import org.yuedong.utils.Response;
import org.yuedong.vo.StudentDetail;



@Controller
@RequestMapping("/student")
public class StudentInfoAction extends BaseAction {

	@Autowired
	private StudentInfoService studentInfoService;
	
	/**
	 * 获取学员列表
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/stuList", name = "学员列表")
	public Object getStuList(@PathVariable("v") String v,@RequestParam("userCode") String userCode)
	{ 
		if (StringUtils.isBlank(userCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "param error");
		}
		List<StudentInfo> stuList = studentInfoService.findStuListByUserCode(userCode);
		List<StudentDetail> list = new ArrayList<StudentDetail>();
		for(StudentInfo studentInfo: stuList){
			StudentDetail studentDetail = new StudentDetail();
			studentDetail.setAge(studentInfo.getAge());
			studentDetail.setSex(studentInfo.getSex());
			studentDetail.setStudentCode(studentInfo.getStudentCode());
			studentDetail.setStudentName(studentInfo.getStudentName());
			studentDetail.setSchool(studentInfo.getSchool());
			list.add(studentDetail);
		}
		return Response.success("stuList", list);
	}
	/**
	 * 添加新的学员
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/addNewStudent", name = "添加新学员")
	public Object addNewStudent(@PathVariable("v") String v,@RequestParam Map<String, String> params)
	{
		//提取学员信息
		String stuName=params.get("studentName");
		String stuSex=params.get("sex");
		int age=Integer.parseInt(params.get("age"));
		String school=params.get("school");
		String userCode=params.get("userCode");
		if (StringUtils.isBlank(userCode)||StringUtils.isBlank(stuName)) {
			return Response.error(ResponseCode.PARAMS_EROR, "param error");
		}
		
		//设置学员信息
		StudentInfo stuInfo=new StudentInfo();
		stuInfo.setAge(age);
		stuInfo.setSex(stuSex);
		stuInfo.setStudentCode(CodeGeneratorUtils.getCode(20));
		stuInfo.setStudentName(stuName);
		stuInfo.setUserCode(userCode);
		stuInfo.setCreateTime(DataUtil.getCurrDate());
		stuInfo.setSchool(school);
	//	stuInfo.setTelephone(phone);
	//  学员信息入库
		studentInfoService.insert(stuInfo);
		return Response.success("add student success!");
	}
	/**
	 * 
	 * 删除学员
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/deleteStudent", name = "删除学员")
	public Object deleteStudent(@PathVariable("v") String v,@RequestBody Map<String, String> params)
	{
		String studentCode=params.get("studentCode");
		if (StringUtils.isBlank(studentCode)) {
			return Response.success(ResponseCode.PARAMS_EROR);
		}
		StudentInfo studentInfo = new StudentInfo();
		studentInfo.setStudentCode(studentCode);
		studentInfo.setDeleted("T");
		int result = studentInfoService.updateByCode(studentInfo);
		if (result > 0) {
			return Response.success(ResponseCode.SUCCESS);
		}
		return Response.success(ResponseCode.EXCEPTION);
	}
	
	
	/**
	 * 获取学员信息
	 * @param v
	 * @param studentCode
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/detail", name="获取学员信息")
	public Object getStudentInfo(@PathVariable("v") String v, @RequestParam("studentCode") String studentCode){
		if(StringUtils.isBlank(studentCode)){
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		StudentInfo studentInfo = this.studentInfoService.findByCode(studentCode);
		StudentDetail studentDetail = new StudentDetail();
		studentDetail.setAge(studentInfo.getAge());
		studentDetail.setSex(studentInfo.getSex());
		studentDetail.setStudentCode(studentCode);
		studentDetail.setStudentName(studentInfo.getStudentName());
		studentDetail.setSchool(studentInfo.getSchool());
		return Response.success(studentDetail);
	}
	
	/**
	 * 修改学员信息
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/update", name="修改学员信息")
	public Object updateStudentInfo(@PathVariable("v") String v, @RequestParam Map<String,String> params ){
		StudentInfo studentInfo= new StudentInfo();
		studentInfo.setStudentCode(params.get("studentCode"));
		studentInfo.setStudentName(params.get("studentName"));
		if(null !=params.get("age") && !"".equals(params.get("age"))){
			studentInfo.setAge(Integer.parseInt(params.get("age")));
		}
		studentInfo.setSchool(params.get("school"));
		studentInfo.setSex(params.get("sex"));
		int result = this.studentInfoService.updateByCode(studentInfo);
		if(result <= 0){
			return Response.fail("server error");
		}
		return Response.success("success");
	}
	/**
	 * 保存选中的学员信息
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/save", name="修改学员信息")
	public void saveStudentInfo(HttpServletRequest request, @RequestParam Map<String,String> params ){
		String activityCode = (String)request.getSession().getAttribute("activityCode");
		if(null !=activityCode && !activityCode.equals(params.get("activityCode"))){
			request.getSession().removeAttribute("couponCode");
			request.getSession().removeAttribute("price");
		}
		request.getSession().setAttribute("studentCode", params.get("studentCode"));
		request.getSession().setAttribute("studentName", params.get("studentName"));
		request.getSession().setAttribute("activityCode", params.get("activityCode"));
	}
	
}
