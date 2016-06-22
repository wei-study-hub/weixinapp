package org.yuedong.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.AdvertisementInfo;
import org.yuedong.dao.AdvertisementInfoDao;

@Repository("advertisementInfoDao")
public class AdvertisementInfoDaoImpl extends BaseDaoImpl<AdvertisementInfo> implements AdvertisementInfoDao{

	/**
	 * 根据类型查询广告
	 */
	public List<AdvertisementInfo> findByType(String adType) {
		return this.getSqlSession().selectList(this.getClass().getName() + ".findByType", adType);
	}
	
}
