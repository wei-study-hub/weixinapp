package org.yuedong.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.yuedong.model.BaseModel;

public class UserPreference extends BaseModel {

	private static final long serialVersionUID = 1L;

	private String preferenceCode;
	private String userCode;
	private String preferneceTypeCode;

	public void setPreferenceCode(String preferenceCode) {
		this.preferenceCode = preferenceCode;
	}

	public String getPreferenceCode() {
		return this.preferenceCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserCode() {
		return this.userCode;
	}

	public void setPreferneceTypeCode(String preferneceTypeCode) {
		this.preferneceTypeCode = preferneceTypeCode;
	}

	public String getPreferneceTypeCode() {
		return this.preferneceTypeCode;
	}

}
