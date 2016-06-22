package org.yuedong.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;


import org.yuedong.dao.ManagerInfoDao;
import org.yuedong.model.ManagerInfo;
import org.yuedong.service.ManagerInfoService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;

@Service("managerInfoService")
public class ManagerInfoServiceImpl extends BaseServiceImpl<ManagerInfo> implements ManagerInfoService {

	@Autowired
	private ManagerInfoDao managerInfoDao;
	
	@Autowired
	@Qualifier("managerInfoDao")
	public void setBaseDao(BaseDao<ManagerInfo> baseDao) {
		super.setBaseDao(baseDao);
	}


	
}
