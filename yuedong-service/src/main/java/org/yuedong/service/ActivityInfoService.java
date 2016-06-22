package org.yuedong.service;

import java.util.List;

import org.yuedong.model.ActivityInfo;
import org.yuedong.service.BaseService;
import org.yuedong.vo.ActivityBanner;
import org.yuedong.vo.ActivityDetail;
import org.yuedong.vo.ActivityIndex;

public interface ActivityInfoService extends BaseService<ActivityInfo>{

	
	/**
	 * 获取活动首页，活动banner
	 * @return ActivityBanner 活动banner实体
	 */
	public List<ActivityBanner> getActivityBanner();
	
	/**
	 * 获取活动首页，活动实体信息
	 * @return ActivityIndex 活动首页实体
	 */
	public List<ActivityIndex> getActivityIndex(int index);
	
	/**
	 * 获取活动详情
	 * @param userCode 用户编码
	 * @param activityInfo 活动对象
	 * @return
	 */
	public ActivityDetail getActivityDetail(String userCode, ActivityInfo activityInfo);

	/**
	 * @describle TODO
	 * @return List<ActivityInfo>
	 */
	public List<ActivityInfo> findNotEndActivity(String status);
}
