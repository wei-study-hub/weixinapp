package org.yuedong.service;

import java.util.List;

import org.yuedong.model.UserCollection;
import org.yuedong.service.BaseService;
import org.yuedong.vo.CollectModel;

public interface UserCollectionService extends BaseService<UserCollection>{

	/**
	 * 获取用户收藏列表
	 * @param userCode 用户编码
	 * @param collectType 收藏类型
	 * @param index 当前页码
	 * @return List<CollectModel> 收藏活动或课程实体
	 */
	public List<CollectModel> getUserCollectList(String userCode, String collectType, int index);
}
