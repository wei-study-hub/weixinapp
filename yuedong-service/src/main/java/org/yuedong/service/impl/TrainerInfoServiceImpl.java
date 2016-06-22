package org.yuedong.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;


import org.yuedong.dao.TrainerInfoDao;
import org.yuedong.model.TrainerInfo;
import org.yuedong.service.TrainerInfoService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;

@Service("trainerInfoService")
public class TrainerInfoServiceImpl extends BaseServiceImpl<TrainerInfo> implements TrainerInfoService {

	@Autowired
	private TrainerInfoDao trainerInfoDao;
	
	@Autowired
	@Qualifier("trainerInfoDao")
	public void setBaseDao(BaseDao<TrainerInfo> baseDao) {
		super.setBaseDao(baseDao);
	}


	
}
