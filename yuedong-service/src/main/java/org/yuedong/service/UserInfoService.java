package org.yuedong.service;

import org.yuedong.model.UserInfo;
import org.yuedong.service.BaseService;
import org.yuedong.vo.UserModel;

public interface UserInfoService extends BaseService<UserInfo>{
	/**
	 * 根据电话号码查询
	 * @param telephone
	 * @return
	 */
	public UserInfo findByTelephone(String telephone);
	
	/**
	 * 通过验证码登录
	 * @param telephone
	 * @return
	 */
	public String addUser(String telephone,String password);
	
	/**
	 * 修改用户信息
	 * @param userModel 用户实体
	 * @return int
	 */
	public int updateUserInfo(UserModel userModel);
}
