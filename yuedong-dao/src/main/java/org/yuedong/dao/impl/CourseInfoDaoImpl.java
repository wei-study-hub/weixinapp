package org.yuedong.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.CourseInfo;
import org.yuedong.dao.CourseInfoDao;

@Repository("courseInfoDao")
public class CourseInfoDaoImpl extends BaseDaoImpl<CourseInfo> implements CourseInfoDao{

	
	public List<CourseInfo> findAllCourse(CourseInfo courseInfo) {
		return this.getSqlSession().selectList("findAllCourse",courseInfo);
	}

	/*
	 * 通过条件查询课程列表
	 */
	public List<CourseInfo> searchByCourseKey(String paramKey) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("searchByCourseKey",paramKey);
	}

	/*
	 * 
	 */
	public List<CourseInfo> findNotEndCourse(String status) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("findNotEndCourse",status);
	}
	
}
