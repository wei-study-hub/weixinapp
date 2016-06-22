package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.TrainerInfo;
import org.yuedong.dao.TrainerInfoDao;

@Repository("trainerInfoDao")
public class TrainerInfoDaoImpl extends BaseDaoImpl<TrainerInfo> implements TrainerInfoDao{
	
}
