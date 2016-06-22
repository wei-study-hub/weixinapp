package org.yuedong.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.yuedong.model.BaseModel;

public class CouponType extends BaseModel {

	private static final long serialVersionUID = 1L;

	private String couponTypeCode;
	private String couponTypeName;
	private Integer num;
	private Date deadline;
	private String scopeTypeCode;
	private String status;
	private Date effectDate;
	private Integer discount;
	private Integer remind;
	private String remarks;
	private String imgCode;
	private String discountType;
	//使用条件
	private String conditions;
	//至少消费规定金额，才能使用
	private Integer consumeAmount;

	public void setCouponTypeCode(String couponTypeCode) {
		this.couponTypeCode = couponTypeCode;
	}

	public String getCouponTypeCode() {
		return this.couponTypeCode;
	}

	public void setCouponTypeName(String couponTypeName) {
		this.couponTypeName = couponTypeName;
	}

	public String getCouponTypeName() {
		return this.couponTypeName;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Integer getNum() {
		return this.num;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public Date getDeadline() {
		return this.deadline;
	}

	public void setScopeTypeCode(String scopeTypeCode) {
		this.scopeTypeCode = scopeTypeCode;
	}

	public String getScopeTypeCode() {
		return this.scopeTypeCode;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatus() {
		return this.status;
	}

	public void setEffectDate(Date effectDate) {
		this.effectDate = effectDate;
	}

	public Date getEffectDate() {
		return this.effectDate;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public Integer getDiscount() {
		return this.discount;
	}

	public void setRemind(Integer remind) {
		this.remind = remind;
	}

	public Integer getRemind() {
		return this.remind;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getImgCode() {
		return imgCode;
	}

	public void setImgCode(String imgCode) {
		this.imgCode = imgCode;
	}

	public String getDiscountType() {
		return discountType;
	}

	public void setDiscountType(String discountType) {
		this.discountType = discountType;
	}

	public String getConditions() {
		return conditions;
	}

	public void setConditions(String conditions) {
		this.conditions = conditions;
	}

	public Integer getConsumeAmount() {
		return consumeAmount;
	}

	public void setConsumeAmount(Integer consumeAmount) {
		this.consumeAmount = consumeAmount;
	}

}
