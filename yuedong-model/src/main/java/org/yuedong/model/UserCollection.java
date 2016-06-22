package org.yuedong.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.yuedong.model.BaseModel;

public class UserCollection extends BaseModel {

	private static final long serialVersionUID = 1L;

	private String targetCode;
	private String userCode;
	private String title;
	private String collectCode;
	private String collectType;

	public void setTargetCode(String targetCode) {
		this.targetCode = targetCode;
	}

	public String getTargetCode() {
		return this.targetCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserCode() {
		return this.userCode;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitle() {
		return this.title;
	}

	public void setCollectCode(String collectCode) {
		this.collectCode = collectCode;
	}

	public String getCollectCode() {
		return this.collectCode;
	}

	public String getCollectType() {
		return collectType;
	}

	public void setCollectType(String collectType) {
		this.collectType = collectType;
	}

}
