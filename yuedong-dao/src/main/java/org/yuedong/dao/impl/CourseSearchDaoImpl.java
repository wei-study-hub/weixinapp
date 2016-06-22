package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.CourseSearch;
import org.yuedong.dao.CourseSearchDao;

@Repository("courseSearchDao")
public class CourseSearchDaoImpl extends BaseDaoImpl<CourseSearch> implements CourseSearchDao{
	
}
