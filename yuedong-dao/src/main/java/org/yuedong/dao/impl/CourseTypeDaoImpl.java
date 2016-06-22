package org.yuedong.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.CourseType;
import org.yuedong.dao.CourseTypeDao;

@Repository("courseTypeDao")
public class CourseTypeDaoImpl extends BaseDaoImpl<CourseType> implements CourseTypeDao{

}
