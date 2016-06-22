package org.yuedong.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;


import org.yuedong.dao.UserRightDao;
import org.yuedong.model.UserRight;
import org.yuedong.service.UserRightService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;

@Service("userRightService")
public class UserRightServiceImpl extends BaseServiceImpl<UserRight> implements UserRightService {

	@Autowired
	private UserRightDao userRightDao;
	
	@Autowired
	@Qualifier("userRightDao")
	public void setBaseDao(BaseDao<UserRight> baseDao) {
		super.setBaseDao(baseDao);
	}


	
}
