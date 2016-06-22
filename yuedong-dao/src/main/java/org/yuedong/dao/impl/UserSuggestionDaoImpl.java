package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.UserSuggestion;
import org.yuedong.dao.UserSuggestionDao;

@Repository("userSuggestionDao")
public class UserSuggestionDaoImpl extends BaseDaoImpl<UserSuggestion> implements UserSuggestionDao{
	
}
