package org.yuedong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;


import org.yuedong.dao.StudentInfoDao;
import org.yuedong.model.StudentInfo;
import org.yuedong.service.StudentInfoService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;

@Service("studentInfoService")
public class StudentInfoServiceImpl extends BaseServiceImpl<StudentInfo> implements StudentInfoService {

	@Autowired
	private StudentInfoDao studentInfoDao;
	
	@Autowired
	@Qualifier("studentInfoDao")
	public void setBaseDao(BaseDao<StudentInfo> baseDao) {
		super.setBaseDao(baseDao);
	}

	public List<StudentInfo> findStuListByUserCode(String userCode) {
		// TODO Auto-generated method stub
		return studentInfoDao.findByUserCode(userCode);
	}
}
