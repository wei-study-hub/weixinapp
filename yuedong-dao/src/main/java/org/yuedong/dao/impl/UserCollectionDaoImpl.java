package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.UserCollection;
import org.yuedong.dao.UserCollectionDao;

@Repository("userCollectionDao")
public class UserCollectionDaoImpl extends BaseDaoImpl<UserCollection> implements UserCollectionDao{
	
}
