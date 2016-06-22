package org.yuedong.vo;

/**
 * 订单模型实体
 * 
 * @author 黑夜骑士
 *
 */
public class OrderModel {

	// 订单编号
	private String orderNo;
	// 图片地址
	private String imgUrl;
	// 价格
	private int price;
	// 日期
	private String dateTime;
	// 订单状态
	private String status;
	// 地址
	private String address;
	// 标题
	private String title;
	//活动或者课程编码
	private String goodsCode;

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getGoodsCode() {
		return goodsCode;
	}

	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}

}
