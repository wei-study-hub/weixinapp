package org.yuedong.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;
import org.yuedong.dao.CourseTypeDao;
import org.yuedong.model.CourseType;
import org.yuedong.service.CourseTypeService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;
@Service("courseTypeService")
public class CourseTypeServiceImpl extends BaseServiceImpl<CourseType> implements CourseTypeService {

	@Autowired
	private CourseTypeDao courseTypeDao;
	
	@Autowired
	@Qualifier("courseTypeDao")
	public void setBaseDao(BaseDao<CourseType> baseDao) {
		super.setBaseDao(baseDao);
	}
}
