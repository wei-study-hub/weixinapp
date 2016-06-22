package org.yuedong.vo;

/**
 * 偏好模型
 * 
 * @author 黑夜骑士
 *
 */
public class PreferenceModel {

	// 偏好编码
	private String preferenceCode;
	// 偏好名称
	private String preferenceName;
	//图片地址
	private String imgUrl;

	public String getPreferenceCode() {
		return preferenceCode;
	}

	public void setPreferenceCode(String preferenceCode) {
		this.preferenceCode = preferenceCode;
	}

	public String getPreferenceName() {
		return preferenceName;
	}

	public void setPreferenceName(String preferenceName) {
		this.preferenceName = preferenceName;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

}
