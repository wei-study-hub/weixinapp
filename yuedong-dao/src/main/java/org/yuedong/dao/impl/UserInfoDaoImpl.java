package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.UserInfo;
import org.yuedong.dao.UserInfoDao;

@Repository("userInfoDao")
public class UserInfoDaoImpl extends BaseDaoImpl<UserInfo> implements UserInfoDao{
	/**
	 * 根据电话号码查询
	 */
	public UserInfo findByTelephone(String telephone) {
		return this.getSqlSession().selectOne(this.getClass().getName() + ".findByTelephone", telephone);
	}
	
}
