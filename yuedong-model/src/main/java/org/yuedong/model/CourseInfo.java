package org.yuedong.model;

import java.util.Date;

import org.yuedong.model.BaseModel;

/**
 * 
 * @author sgl 2016年2月23日 上午11:18:58 课程信息实体类
 * @version 1.1
 */

public class CourseInfo extends BaseModel {

	private static final long serialVersionUID = 1L;

	private String courseName;// 课程名
	private String courseCode;// 课程标识
	private Integer price;// 课程价格
	private String serviceCityName;// 城市
	private String serviceAreasName;// 区域
	private String trainerCode;// 教练编码
	private String status;// 课程状态码
	private String courseTypeName;// 课程类型名称（足球）
	private Integer courseRank;// 课程等级
	private String imgUrl;//
	private Date beginTime;// 开始时间
	private Date endTime;// 结束时间
	private String address;// 地址
	private Integer maxJoinNum;// 最大参加人数
	private Integer minJoinNum;// 最少参加人数
	private Integer joinNum;// 包名人数
	private String remarks;//
	private String courseTypeCode;// 课程类型编码
	private Integer discountPrice;// 折扣价格
	private String longitude;// 经度
	private String latitude;// 纬度
	private String publisherCode;// 发布者编码
	private String publisherName;// 发布者名称
	//是否支持在线支付
	private String isOnline;
	//联系方式
	private String telephone;
	//体验课编码
	private String expCourseCode;
	//截止日期 
	private Date deadline;

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}

	public String getCourseCode() {
		return this.courseCode;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setServiceCityName(String serviceCityName) {
		this.serviceCityName = serviceCityName;
	}

	public String getServiceCityName() {
		return this.serviceCityName;
	}

	public void setServiceAreasName(String serviceAreasName) {
		this.serviceAreasName = serviceAreasName;
	}

	public String getServiceAreasName() {
		return this.serviceAreasName;
	}

	public void setTrainerCode(String trainerCode) {
		this.trainerCode = trainerCode;
	}

	public String getTrainerCode() {
		return this.trainerCode;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatus() {
		return this.status;
	}

	public void setCourseTypeName(String courseTypeName) {
		this.courseTypeName = courseTypeName;
	}

	public String getCourseTypeName() {
		return this.courseTypeName;
	}

	public void setCourseRank(Integer courseRank) {
		this.courseRank = courseRank;
	}

	public Integer getCourseRank() {
		return this.courseRank;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getImgUrl() {
		return this.imgUrl;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public Date getBeginTime() {
		return this.beginTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Date getEndTime() {
		return this.endTime;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress() {
		return this.address;
	}

	public void setMaxJoinNum(Integer maxJoinNum) {
		this.maxJoinNum = maxJoinNum;
	}

	public Integer getMaxJoinNum() {
		return this.maxJoinNum;
	}

	public void setMinJoinNum(Integer minJoinNum) {
		this.minJoinNum = minJoinNum;
	}

	public Integer getMinJoinNum() {
		return this.minJoinNum;
	}

	public void setJoinNum(Integer joinNum) {
		this.joinNum = joinNum;
	}

	public Integer getJoinNum() {
		return this.joinNum;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setCourseTypeCode(String courseTypeCode) {
		this.courseTypeCode = courseTypeCode;
	}

	public String getCourseTypeCode() {
		return this.courseTypeCode;
	}

	public void setDiscountPrice(Integer discountPrice) {
		this.discountPrice = discountPrice;
	}

	public Integer getDiscountPrice() {
		return this.discountPrice;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getLongitude() {
		return this.longitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLatitude() {
		return this.latitude;
	}

	public void setPublisherCode(String publisherCode) {
		this.publisherCode = publisherCode;
	}

	public String getPublisherCode() {
		return this.publisherCode;
	}

	public void setPublisherName(String publisherName) {
		this.publisherName = publisherName;
	}

	public String getPublisherName() {
		return this.publisherName;
	}

	public String getIsOnline() {
		return isOnline;
	}

	public void setIsOnline(String isOnline) {
		this.isOnline = isOnline;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getExpCourseCode() {
		return expCourseCode;
	}

	public void setExpCourseCode(String expCourseCode) {
		this.expCourseCode = expCourseCode;
	}

}
