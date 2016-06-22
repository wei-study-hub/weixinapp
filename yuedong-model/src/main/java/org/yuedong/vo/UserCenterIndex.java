package org.yuedong.vo;

/**
 * 用户个人中心首页实体
 * 
 * @author 黑夜骑士
 *
 */
public class UserCenterIndex {

	// 用户图像地址
	private String imgUrl;
	// 用户名
	private String userName;
	// 用户偏好名称
	private String preferenceName;
	// 未结束活动订单数量
	private int activityOrderNum;
	// 未结束课程订单数量
	private int courseOrderNum;
	// 未使用优惠券个数
	private int couponNum;

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

	public String getPreferenceName() {
		return preferenceName;
	}

	public void setPreferenceName(String preferenceName) {
		this.preferenceName = preferenceName;
	}

	public int getActivityOrderNum() {
		return activityOrderNum;
	}

	public void setActivityOrderNum(int activityOrderNum) {
		this.activityOrderNum = activityOrderNum;
	}

	public int getCourseOrderNum() {
		return courseOrderNum;
	}

	public void setCourseOrderNum(int courseOrderNum) {
		this.courseOrderNum = courseOrderNum;
	}

	public int getCouponNum() {
		return couponNum;
	}

	public void setCouponNum(int couponNum) {
		this.couponNum = couponNum;
	}

}
