package org.yuedong.service;

import org.yuedong.model.UserPreference;
import org.yuedong.service.BaseService;

public interface UserPreferenceService extends BaseService<UserPreference>{

	/**
	 * 设置用户偏好
	 * @param preferenceTypeCode 偏好类型编码，以分号分隔
	 * @param userCode 用户编码
	 */
	public void addUserPreference(String preferenceTypeCode, String userCode);
	
	/**
	 * 获取用户偏好编码
	 * @param userCode 用户编码
	 * @return 偏好名称
	 */
	public String getUserPreferenceCode(String userCode);
	
	/**
	 * 将用户偏好编码(包含分号)转为名称
	 * @param preferenceTypeCode 用户偏码编码，多个编码以分号分隔
	 * @return String 所有偏好名称
	 */
	public String convertPreferenceCodeToName(String preferenceTypeCode);
}
