package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.UserType;
import org.yuedong.dao.UserTypeDao;

@Repository("userTypeDao")
public class UserTypeDaoImpl extends BaseDaoImpl<UserType> implements UserTypeDao{
	
}
