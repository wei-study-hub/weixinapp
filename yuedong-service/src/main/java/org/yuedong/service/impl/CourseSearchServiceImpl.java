package org.yuedong.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;


import org.yuedong.dao.CourseSearchDao;
import org.yuedong.model.CourseSearch;
import org.yuedong.service.CourseSearchService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;

@Service("courseSearchService")
public class CourseSearchServiceImpl extends BaseServiceImpl<CourseSearch> implements CourseSearchService {

	@Autowired
	private CourseSearchDao courseSearchDao;
	
	@Autowired
	@Qualifier("courseSearchDao")
	public void setBaseDao(BaseDao<CourseSearch> baseDao) {
		super.setBaseDao(baseDao);
	}


	
}
