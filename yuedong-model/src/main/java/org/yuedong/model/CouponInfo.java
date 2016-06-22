package org.yuedong.model;


import org.yuedong.model.BaseModel;

public class CouponInfo extends BaseModel {

	private static final long serialVersionUID = 1L;

	private String couponCode;
	private String remarks;
	private String userCode;
	private String couponTypeCode;
	private String status;

	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}

	public String getCouponCode() {
		return this.couponCode;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserCode() {
		return this.userCode;
	}

	public void setCouponTypeCode(String couponTypeCode) {
		this.couponTypeCode = couponTypeCode;
	}

	public String getCouponTypeCode() {
		return this.couponTypeCode;
	}


	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatus() {
		return this.status;
	}

}
