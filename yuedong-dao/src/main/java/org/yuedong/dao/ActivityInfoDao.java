package org.yuedong.dao;

import org.yuedong.model.ActivityInfo;

import java.util.List;

import org.yuedong.dao.BaseDao;

public interface ActivityInfoDao extends BaseDao<ActivityInfo> {

	/**
	 * @describle TODO
	 * @return List<ActivityInfo>
	 */
	List<ActivityInfo> findNotEndActivity(String status);

}
