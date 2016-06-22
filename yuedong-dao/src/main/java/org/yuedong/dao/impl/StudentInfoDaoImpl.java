package org.yuedong.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.StudentInfo;
import org.yuedong.dao.StudentInfoDao;

@Repository("studentInfoDao")
public class StudentInfoDaoImpl extends BaseDaoImpl<StudentInfo> implements StudentInfoDao{

	public List<StudentInfo> findByUserCode(String userCode) {
		return this.getSqlSession().selectList("findByUserCode", userCode);
	}
	
}
