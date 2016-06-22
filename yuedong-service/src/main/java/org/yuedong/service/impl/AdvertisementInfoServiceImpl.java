package org.yuedong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;
import org.yuedong.constants.AdvertisementType;
import org.yuedong.dao.AdvertisementInfoDao;
import org.yuedong.model.AdvertisementInfo;
import org.yuedong.service.AdvertisementInfoService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;

@Service("advertisementInfoService")
public class AdvertisementInfoServiceImpl extends BaseServiceImpl<AdvertisementInfo> implements AdvertisementInfoService {

	@Autowired
	private AdvertisementInfoDao advertisementInfoDao;
	
	@Autowired
	@Qualifier("advertisementInfoDao")
	public void setBaseDao(BaseDao<AdvertisementInfo> baseDao) {
		super.setBaseDao(baseDao);
	}

	public List<AdvertisementInfo> findByType(String adType) {
		return this.advertisementInfoDao.findByType(adType);
	}


	
}
