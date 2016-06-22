package org.yuedong.dao;

import org.yuedong.model.CourseInfo;

import java.util.List;

import org.yuedong.dao.BaseDao;

public interface CourseInfoDao extends BaseDao<CourseInfo> {
	
	public List<CourseInfo> findAllCourse(CourseInfo courseInfo);

	/**
	 * 通过课程名和课程详细上课地址搜索
	 * List<CourseInfo>
	 */
	public List<CourseInfo> searchByCourseKey(String paramKey);

	public List<CourseInfo> findNotEndCourse(String status);
}
