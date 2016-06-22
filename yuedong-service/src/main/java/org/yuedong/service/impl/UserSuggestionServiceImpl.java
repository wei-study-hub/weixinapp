package org.yuedong.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;


import org.yuedong.dao.UserSuggestionDao;
import org.yuedong.model.UserSuggestion;
import org.yuedong.service.UserSuggestionService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;

@Service("userSuggestionService")
public class UserSuggestionServiceImpl extends BaseServiceImpl<UserSuggestion> implements UserSuggestionService {

	@Autowired
	private UserSuggestionDao userSuggestionDao;
	
	@Autowired
	@Qualifier("userSuggestionDao")
	public void setBaseDao(BaseDao<UserSuggestion> baseDao) {
		super.setBaseDao(baseDao);
	}


	
}
