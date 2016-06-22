package org.yuedong.model;

import org.yuedong.model.BaseModel;

public class UserLoginInfo extends BaseModel {

	private static final long serialVersionUID = 1L;

	private String loginType;
	private String accountNo;
	private String token;
	private String userCode;

	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}

	public String getLoginType() {
		return this.loginType;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getAccountNo() {
		return this.accountNo;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getToken() {
		return this.token;
	}


	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserCode() {
		return this.userCode;
	}

}
