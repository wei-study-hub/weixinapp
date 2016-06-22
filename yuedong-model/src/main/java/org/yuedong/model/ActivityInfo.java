package org.yuedong.model;

import java.util.Date;

import org.yuedong.model.BaseModel;

public class ActivityInfo extends BaseModel {

	private static final long serialVersionUID = 1L;

	private String activityCode;
	private String activityName;
	private String activityTypeName;
	private String status;
	private String activityRank;
	private Date beginTime;
	private Date endTime;
	private String address;
	private String remarks;
	private String content;
	private Integer price;
	private Integer discountPrice;
	private String imgUrl;
	private String publisherCode;
	private String publisherName;
	private String telephone;
	private String isFree;

	public void setActivityCode(String activityCode) {
		this.activityCode = activityCode;
	}

	public String getActivityCode() {
		return this.activityCode;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public String getActivityName() {
		return this.activityName;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatus() {
		return this.status;
	}

	public void setActivityRank(String activityRank) {
		this.activityRank = activityRank;
	}

	public String getActivityRank() {
		return this.activityRank;
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

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContent() {
		return this.content;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setDiscountPrice(Integer discountPrice) {
		this.discountPrice = discountPrice;
	}

	public Integer getDiscountPrice() {
		return this.discountPrice;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getImgUrl() {
		return this.imgUrl;
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

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getIsFree() {
		return isFree;
	}

	public void setIsFree(String isFree) {
		this.isFree = isFree;
	}

	public String getActivityTypeName() {
		return activityTypeName;
	}

	public void setActivityTypeName(String activityTypeName) {
		this.activityTypeName = activityTypeName;
	}

}
