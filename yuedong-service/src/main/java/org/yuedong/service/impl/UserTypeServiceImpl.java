package org.yuedong.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;


import org.yuedong.dao.UserTypeDao;
import org.yuedong.model.UserType;
import org.yuedong.service.UserTypeService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;

@Service("userTypeService")
public class UserTypeServiceImpl extends BaseServiceImpl<UserType> implements UserTypeService {

	@Autowired
	private UserTypeDao userTypeDao;
	
	@Autowired
	@Qualifier("userTypeDao")
	public void setBaseDao(BaseDao<UserType> baseDao) {
		super.setBaseDao(baseDao);
	}


	
}
