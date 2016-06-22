package org.yuedong.vo;

/**
 * 优惠券实体
 * @author 黑夜骑士
 *
 */
public class CouponModel {

	//优惠券编码
	private String couponCode;
	//优惠券状态
	private String status;
	//有效日期
	private String deadline;
	//优惠券名称
	private String couponName;
	//备注
	private String remarks;
	//折扣信息
	private String discount;
	//优惠券使用条件
	private String conditions;
	
	public String getCouponCode() {
		return couponCode;
	}
	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public String getConditions() {
		return conditions;
	}
	public void setConditions(String conditions) {
		this.conditions = conditions;
	}
	
	
	
}
