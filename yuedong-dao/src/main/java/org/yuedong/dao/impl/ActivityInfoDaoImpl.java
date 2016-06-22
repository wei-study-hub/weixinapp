package org.yuedong.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.ActivityInfo;
import org.yuedong.dao.ActivityInfoDao;

@Repository("activityInfoDao")
public class ActivityInfoDaoImpl extends BaseDaoImpl<ActivityInfo> implements ActivityInfoDao{

	/*
	 * 
	 */
	public List<ActivityInfo> findNotEndActivity(String status) {
		// TODO Auto-generated method stub
		 return this.getSqlSession().selectList("findNotEndActivity",status);
	}
	
}
