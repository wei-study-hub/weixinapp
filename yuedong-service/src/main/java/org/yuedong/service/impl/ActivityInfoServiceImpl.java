package org.yuedong.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;
import org.yuedong.constants.ActivityStatus;
import org.yuedong.constants.AdvertisementType;
import org.yuedong.dao.ActivityInfoDao;
import org.yuedong.dao.AdvertisementInfoDao;
import org.yuedong.model.ActivityInfo;
import org.yuedong.model.AdvertisementInfo;
import org.yuedong.model.UserCollection;
import org.yuedong.service.ActivityInfoService;
import org.yuedong.dao.BaseDao;
import org.yuedong.dao.ImgInfoDao;
import org.yuedong.dao.UserCollectionDao;
import org.yuedong.service.impl.BaseServiceImpl;
import org.yuedong.utils.DataUtil;
import org.yuedong.utils.Datagrid;
import org.yuedong.vo.ActivityBanner;
import org.yuedong.vo.ActivityDetail;
import org.yuedong.vo.ActivityIndex;

@Service("activityInfoService")
public class ActivityInfoServiceImpl extends BaseServiceImpl<ActivityInfo> implements ActivityInfoService {

	@Autowired
	private ActivityInfoDao activityInfoDao;
	@Autowired
	private ImgInfoDao imgInfoDao;
	@Autowired
	private AdvertisementInfoDao advertisementInfoDao;
	@Autowired
	private UserCollectionDao userCollectionDao;

	@Autowired
	@Qualifier("activityInfoDao")
	public void setBaseDao(BaseDao<ActivityInfo> baseDao) {
		super.setBaseDao(baseDao);
	}

	/**
	 * 获取活动首页，活动banner
	 */
	public List<ActivityBanner> getActivityBanner() {
		List<AdvertisementInfo> activityAds = this.advertisementInfoDao.findByType(AdvertisementType.ACTIVITY);
		System.out.println("--------->"+activityAds.size());
		List<ActivityBanner> bannerList = new ArrayList<ActivityBanner>();
		for (AdvertisementInfo advertisementInfo : activityAds) {
			ActivityBanner activityBanner = new ActivityBanner();
			String imgUrl = advertisementInfo.getImgUrl();
			activityBanner.setActivityCode(advertisementInfo.getRefUrl());
			activityBanner.setImgUrl(imgUrl);
			activityBanner.setTitle(advertisementInfo.getTitle());
			bannerList.add(activityBanner);
		}
		return bannerList;
	}

	/**
	 * 获取活动首页，活动实体信息
	 */
	public List<ActivityIndex> getActivityIndex(int index) {
		Datagrid<ActivityInfo> datagrid = new Datagrid<ActivityInfo>();
		datagrid.setIndex(index);
		datagrid.setOrderBy("activity_rank");
		datagrid.setSort("desc");
		datagrid.pagenation();

		datagrid = this.page(datagrid);
		List<ActivityInfo> activities = datagrid.getResult();
		List<ActivityIndex> activityList = new ArrayList<ActivityIndex>();
		if (activities != null && activities.size() > 0) {
			for (ActivityInfo activityInfo : activities) {
				ActivityIndex activityIndex = new ActivityIndex();
				String imgUrl = activityInfo.getImgUrl();
				activityIndex.setActivityCode(activityInfo.getActivityCode());
				activityIndex.setActivityName(activityInfo.getActivityName());
				activityIndex.setDiscountPrice(activityInfo.getDiscountPrice());
				activityIndex.setImgUrl(imgUrl);
				activityIndex.setPrice(activityInfo.getPrice());
				activityIndex.setStatus(activityInfo.getStatus());
				activityList.add(activityIndex);
			}
		}
		return activityList;
	}

	/**
	 * 获取活动详情
	 */
	public ActivityDetail getActivityDetail(String userCode, ActivityInfo activityInfo) {

		String imgUrl = activityInfo.getImgUrl();

		UserCollection userCollection = new UserCollection();
		userCollection.setUserCode(userCode);
		userCollection.setTargetCode(activityInfo.getActivityCode());
		List<UserCollection> list = this.userCollectionDao.findAll(userCollection);
		ActivityDetail activityDetail = new ActivityDetail();

		activityDetail.setActivityCode(activityInfo.getActivityCode());
		activityDetail.setActivityName(activityInfo.getActivityName());
		
		activityDetail.setAddress(activityInfo.getAddress());
		activityDetail.setBeginTime(DataUtil.dateToStr("yyyy.MM.dd", activityInfo.getBeginTime()));
		activityDetail.setEndTime(DataUtil.dateToStr("yyyy.MM.dd", activityInfo.getEndTime()));
		activityDetail.setContent(activityInfo.getContent());
		activityDetail.setDiscountPrice(activityInfo.getDiscountPrice());
		activityDetail.setImgUrl(imgUrl);
		
		activityDetail.setPrice(activityInfo.getPrice());
		activityDetail.setTelephone(activityInfo.getTelephone());
		activityDetail.setIsCollect("F");
		if (list != null && list.size() > 0) {
			activityDetail.setIsCollect("T");
		}
		if(StringUtils.isBlank(userCode)){
			activityDetail.setIsCollect("F");
		}
		activityDetail.setStatus(activityInfo.getStatus());
		return activityDetail;
	}

	/*
	 * 
	 */
	public List<ActivityInfo> findNotEndActivity(String status) {
		// TODO Auto-generated method stub
		return activityInfoDao.findNotEndActivity(status);
	}

}
