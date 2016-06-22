package org.yuedong.service.impl;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;


import org.yuedong.dao.UserInfoDao;
import org.yuedong.model.ImgInfo;
import org.yuedong.model.UserInfo;
import org.yuedong.service.UserInfoService;
import org.yuedong.constants.UserType;
import org.yuedong.dao.BaseDao;
import org.yuedong.dao.ImgInfoDao;
import org.yuedong.service.impl.BaseServiceImpl;
import org.yuedong.utils.CodeGeneratorUtils;
import org.yuedong.utils.MemcachedUtils;
import org.yuedong.vo.UserModel;

@Service("userInfoService")
public class UserInfoServiceImpl extends BaseServiceImpl<UserInfo> implements UserInfoService {

	@Autowired
	private UserInfoDao userInfoDao;
	@Autowired
	private ImgInfoDao imgInfoDao;
	
	@Autowired
	@Qualifier("userInfoDao")
	public void setBaseDao(BaseDao<UserInfo> baseDao) {
		super.setBaseDao(baseDao);
	}

	/**
	 * 根据电话号码查询
	 */
	public UserInfo findByTelephone(String telephone) {
		return this.userInfoDao.findByTelephone(telephone);
	}

	/**
	 * 通过验证码登录
	 */
	public String  addUser(String telephone,String password) {
		UserInfo userInfo = new UserInfo();
		String userCode = CodeGeneratorUtils.getCode(20);
		userInfo.setUserCode(userCode);
		userInfo.setTelephone(telephone);
		userInfo.setCreateTime(new Date());
		userInfo.setModifyTime(new Date());
		userInfo.setPassword(password);
		userInfo.setUserTypeCode(UserType.NORMAL);
		this.insert(userInfo);
		return userCode;
	}

	/**
	 * 修改用户信息
	 */
	public int updateUserInfo(UserModel userModel) {
		UserInfo userInfo = new UserInfo();
		userInfo.setAge(userModel.getAge());
		userInfo.setSex(userModel.getSex());
		userInfo.setTelephone(userModel.getTelephone());
		userInfo.setUserName(userModel.getUserName());
		userInfo.setLocationCity(userModel.getLocationCity());
		userInfo.setUserCode(userModel.getUserCode());
		int result = 0;
		/*int value = 0;
		ImgInfo imgInfo = new ImgInfo();
		if(!StringUtils.isBlank(userModel.getImgCode())){
			imgInfo = this.imgInfoDao.findByCode(userModel.getImgCode());
			//imgInfo.setImgCode(userModel.getImgCode());
			if(imgInfo != null){
				imgInfo.setImgUrl(userModel.getImgUrl());
				value = this.imgInfoDao.updateByCode(imgInfo);
				MemcachedUtils.delete(userModel.getImgCode());
				
			}
		}*/
		/*if(StringUtils.isBlank(userModel.getImgCode())){
			imgInfo.setImgCode(CodeGeneratorUtils.getCode(20));
			imgInfo.setImgUrl(userModel.getImgUrl());
			imgInfo.setNamespace("yuedongke");
			imgInfo.setCreateTime(new Date());
			imgInfo.setModifyTime(new Date());
			value = this.imgInfoDao.insert(imgInfo);
			userInfo.setImgCode(imgInfo.getImgCode());
		}
		else {
			Object ob = MemcachedUtils.get(userModel.getImgCode());
			if(ob != null){
				MemcachedUtils.delete(userModel.getImgCode());
			}
			
		}*/
		result = this.updateByCode(userInfo);
		if(result >0){
			return 1;
		}
		return 0;
	}
	
}
