package org.yuedong.dao;

import org.yuedong.model.AdvertisementInfo;

import java.util.List;

import org.yuedong.dao.BaseDao;

public interface AdvertisementInfoDao extends BaseDao<AdvertisementInfo> {

	/**
	 * 根据类型查询广告
	 * @param adType
	 * @return
	 */
	public List<AdvertisementInfo> findByType(String adType);

}
