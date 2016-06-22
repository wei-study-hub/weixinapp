package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.UserRight;
import org.yuedong.dao.UserRightDao;

@Repository("userRightDao")
public class UserRightDaoImpl extends BaseDaoImpl<UserRight> implements UserRightDao{
	
}
