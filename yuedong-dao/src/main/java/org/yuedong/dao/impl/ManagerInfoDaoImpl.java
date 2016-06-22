package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.ManagerInfo;
import org.yuedong.dao.ManagerInfoDao;

@Repository("managerInfoDao")
public class ManagerInfoDaoImpl extends BaseDaoImpl<ManagerInfo> implements ManagerInfoDao{
	
}
