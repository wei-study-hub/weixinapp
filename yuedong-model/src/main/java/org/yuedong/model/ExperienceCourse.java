package org.yuedong.model;

import java.util.Date;

public class ExperienceCourse extends BaseModel {

	private static final long serialVersionUID = 1L;

	private String courseName;
	private String courseCode;
	private String status;
	private String courseTypeCode;
	private String courseRank;
	private String imgUrl;
	private Date beginTime;
	private Date endTime;
	private String address;
	private String courseTimeDetail;
	private String remarks;
	private String publisherCode;
	private String publisherName;
	private String content;
	private String courseTypeName;
	private String telephone;
	
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

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatus() {
		return this.status;
	}

	public void setCourseTypeCode(String courseTypeCode) {
		this.courseTypeCode = courseTypeCode;
	}

	public String getCourseTypeCode() {
		return this.courseTypeCode;
	}

	public void setCourseRank(String courseRank) {
		this.courseRank = courseRank;
	}

	public String getCourseRank() {
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

	public void setCourseTimeDetail(String courseTimeDetail) {
		this.courseTimeDetail = courseTimeDetail;
	}

	public String getCourseTimeDetail() {
		return this.courseTimeDetail;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getRemarks() {
		return this.remarks;
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

	public void setContent(String content) {
		this.content = content;
	}

	public String getContent() {
		return this.content;
	}

	public String getCourseTypeName() {
		return courseTypeName;
	}

	public void setCourseTypeName(String courseTypeName) {
		this.courseTypeName = courseTypeName;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

}
