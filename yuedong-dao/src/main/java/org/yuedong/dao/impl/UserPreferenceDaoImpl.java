package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.UserPreference;
import org.yuedong.dao.UserPreferenceDao;

@Repository("userPreferenceDao")
public class UserPreferenceDaoImpl extends BaseDaoImpl<UserPreference> implements UserPreferenceDao{
	
}
