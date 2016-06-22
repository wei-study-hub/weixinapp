package org.yuedong.service;

import java.util.List;

import org.yuedong.model.CommonTypeInfo;
import org.yuedong.model.CourseInfo;
import org.yuedong.service.BaseService;
import org.yuedong.vo.CourseDetials;
import org.yuedong.vo.CourseModel;

public interface CourseInfoService extends BaseService<CourseInfo>{
	String GOODSTYPE="goodsType";
	String COURSETYPE="courseType";
	public List<CommonTypeInfo> getAllCommonType();

	/**
	 * 根据课程信息类中拥有的条件获取所有课程信息
	 * void
	 * @return 
	 */
	public List<CourseModel> findAllCourseByCon(CourseInfo courseInfo);

	/**
	 * TODO
	 * List<CourseInfo>
	 */
	public List<CourseModel> searchCourse(String paramKey);
	
	/**
	 * 
	 * @describle 将课程信息封装成客户端展示所需要的信息集合
	 * @return CourseDetials 课程详细信息
	 */
	public CourseDetials getCourseDetails(String userCode, String courseCode);
	/**
	 * 
	 * @describle 查询未结束的课程
	 * @return List<CourseInfo>
	 */
	public List<CourseInfo> findNotEndCourse(String status);
	/**
	 * 
	 * @describle 包装课程信息类
	 * @return CourseModel
	 */
	public CourseModel getModelInfo(CourseInfo temp);
}
