package org.yuedong.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.aop.ThrowsAdvice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;

import org.yuedong.dao.UserPreferenceDao;
import org.yuedong.model.CourseType;
import org.yuedong.model.UserPreference;
import org.yuedong.service.UserPreferenceService;
import org.yuedong.dao.BaseDao;
import org.yuedong.dao.CourseTypeDao;
import org.yuedong.service.impl.BaseServiceImpl;
import org.yuedong.utils.CodeGeneratorUtils;

import com.alibaba.fastjson.JSON;

@Service("userPreferenceService")
public class UserPreferenceServiceImpl extends BaseServiceImpl<UserPreference> implements UserPreferenceService {

	@Autowired
	private UserPreferenceDao userPreferenceDao;

	@Autowired
	private CourseTypeDao courseTypeDao;

	@Autowired
	@Qualifier("userPreferenceDao")
	public void setBaseDao(BaseDao<UserPreference> baseDao) {
		super.setBaseDao(baseDao);
	}

	/**
	 * 设置用户偏好
	 */
	public void addUserPreference(String preferenceTypeCode, String userCode) {
		UserPreference userPreference = new UserPreference();
		userPreference.setUserCode(userCode);
		List<UserPreference> userPreferences = this.findAll(userPreference);
		userPreference.setPreferneceTypeCode(preferenceTypeCode);
		if (userPreferences != null && userPreferences.size() > 0) {
			userPreference.setPreferenceCode(userPreferences.get(0).getPreferenceCode());
			this.userPreferenceDao.updateByCode(userPreference);
		} else {
			userPreference.setPreferenceCode(CodeGeneratorUtils.getCode(20));
			userPreference.setCreateTime(new Date());
			userPreference.setModifyTime(new Date());
			this.insert(userPreference);
		}

	}

	/**
	 * 获取用户偏好编码
	 */
	public String getUserPreferenceCode(String userCode) {
		UserPreference userPreference = new UserPreference();
		userPreference.setUserCode(userCode);
		List<UserPreference> userPreferences = this.findAll(userPreference);
		if (userPreferences != null && userPreferences.size() > 0) {
			userPreference = userPreferences.get(0);
			return userPreference.getPreferneceTypeCode();
		}
		return null;
	}

	/**
	 * 将用户偏好编码(包含分号)转为名称
	 */
	public String convertPreferenceCodeToName(String preferenceTypeCode) {
		String preferenceName = "";
		if (preferenceTypeCode.contains(";")) {
			String codes[] = preferenceTypeCode.split(";");
			for (String code : codes) {
				CourseType courseType = this.courseTypeDao.findByCode(code);
				preferenceName += courseType.getCourseTypeName();
			}
			return preferenceName;
		}
		CourseType courseType = this.courseTypeDao.findByCode(preferenceTypeCode);
		preferenceName = courseType.getCourseTypeName();
		return preferenceName;
	}

}
