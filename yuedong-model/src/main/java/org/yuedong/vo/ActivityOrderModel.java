package org.yuedong.vo;

/**
 * 活动订单实体
 * 
 * @author 黑夜骑士
 *
 */
public class ActivityOrderModel {

	//活动编码
	private String activityCode;
	//用户编码
	private String userCode;
	//活动名称
	private String activityName;
	//优惠券个数
	private int couponNum;
	//活动类型编码
	private String scopeTypeCode;
	//活动时间
	private String activityTime;
	//活动地址
	private String address;
	//价格
	private int price;

	public String getActivityCode() {
		return activityCode;
	}

	public void setActivityCode(String activityCode) {
		this.activityCode = activityCode;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public int getCouponNum() {
		return couponNum;
	}

	public void setCouponNum(int couponNum) {
		this.couponNum = couponNum;
	}


	public String getScopeTypeCode() {
		return scopeTypeCode;
	}

	public void setScopeTypeCode(String scopeTypeCode) {
		this.scopeTypeCode = scopeTypeCode;
	}

	public String getActivityTime() {
		return activityTime;
	}

	public void setActivityTime(String activityTime) {
		this.activityTime = activityTime;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}


}
