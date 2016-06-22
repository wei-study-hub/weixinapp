package org.yuedong.vo;

/**
 * 活动详情实体
 * @author 黑夜骑士
 *
 */
public class ActivityDetail {

	//图片地址
	private String imgUrl;
	//活动唯一编码
	private String activityCode;
	//活动名称
	private String activityName;
	//报名人数
	private int joinNum;
	//最大报名人数
	private int maxJoinNum;
	//价格
	private int price;
	//折扣价格
	private int discountPrice;
	//地址
	private String address;
	//经度
	private String longitude;
	//纬度
	private String latitude;
	//电话
	private String telephone;
	//开始时间
	private String beginTime;
	//结束时间
	private String endTime;
	//活动详情
	private String content;
	//活动类型编码
	private String scopeTypeCode;
	//是否已经收藏
	private String isCollect;
	//状态
	private String status;
	//选中的学员编码
	private String studentCode;
	//选中的学员名称
	private String studentName;
	//选中的优惠劵编码
	private String couponCode;
	//优惠劵的折扣
	private String discount;
	

	public String getStudentCode() {
		return studentCode;
	}

	public void setStudentCode(String studentCode) {
		this.studentCode = studentCode;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getCouponCode() {
		return couponCode;
	}

	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getActivityCode() {
		return activityCode;
	}

	public void setActivityCode(String activityCode) {
		this.activityCode = activityCode;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public int getJoinNum() {
		return joinNum;
	}

	public void setJoinNum(int joinNum) {
		this.joinNum = joinNum;
	}

	public int getMaxJoinNum() {
		return maxJoinNum;
	}

	public void setMaxJoinNum(int maxJoinNum) {
		this.maxJoinNum = maxJoinNum;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	public String getScopeTypeCode() {
		return scopeTypeCode;
	}

	public void setScopeTypeCode(String scopeTypeCode) {
		this.scopeTypeCode = scopeTypeCode;
	}

	public String getIsCollect() {
		return isCollect;
	}

	public void setIsCollect(String isCollect) {
		this.isCollect = isCollect;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
