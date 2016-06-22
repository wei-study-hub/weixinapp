package org.yuedong.vo;


/**
 * 用户信息实体
 * 
 * @author 黑夜骑士
 *
 */
public class UserModel {

	// 用户名
	private String userName;
	// 用户唯一编码
	private String userCode;
	// 电话
	private String telephone;
	// 年龄
	private Integer age;
	// 性别
	private String sex;
	// 所在城市
	private String locationCity;
	//图片地址
	private String imgUrl;
	
	private String imgCode;
	



	public String getImgCode() {
		return imgCode;
	}

	public void setImgCode(String imgCode) {
		this.imgCode = imgCode;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}


	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getLocationCity() {
		return locationCity;
	}

	public void setLocationCity(String locationCity) {
		this.locationCity = locationCity;
	}
}
