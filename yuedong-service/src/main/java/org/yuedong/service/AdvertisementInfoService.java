package org.yuedong.service;


import java.util.List;

import org.yuedong.model.AdvertisementInfo;

public interface AdvertisementInfoService extends BaseService<AdvertisementInfo>{

	public List<AdvertisementInfo> findByType(String adType);

}
