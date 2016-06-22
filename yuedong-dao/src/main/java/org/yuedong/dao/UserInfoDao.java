package org.yuedong.dao;

import org.yuedong.model.UserInfo;

import org.yuedong.dao.BaseDao;

public interface UserInfoDao extends BaseDao<UserInfo> {

	/**
	 * 根据电话号码查询
	 * @param telephone
	 * @return
	 */
	public UserInfo findByTelephone(String telephone);
}
