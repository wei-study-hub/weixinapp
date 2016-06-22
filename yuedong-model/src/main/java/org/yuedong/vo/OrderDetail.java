package org.yuedong.vo;

/**
 * 订单详情
 * 
 * @author 黑夜骑士
 *
 */
public class OrderDetail {

	// 报名产品名称
	private String name;
	// 开始（上课、活动）时间
	private String timeDetail;
	// 地址
	private String address;
	// 原价
	private int originPrice;
	// 实付价格
	private int realPrice;
	// 订单号
	private String orderNo;
	// 预约时间
	private String bookTime;
	// 学员名称
	private String studentName;
	// 学员联系方式
	private String telephone;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTimeDetail() {
		return timeDetail;
	}

	public void setTimeDetail(String timeDetail) {
		this.timeDetail = timeDetail;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getOriginPrice() {
		return originPrice;
	}

	public void setOriginPrice(int originPrice) {
		this.originPrice = originPrice;
	}

	public int getRealPrice() {
		return realPrice;
	}

	public void setRealPrice(int realPrice) {
		this.realPrice = realPrice;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getBookTime() {
		return bookTime;
	}

	public void setBookTime(String bookTime) {
		this.bookTime = bookTime;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

}
