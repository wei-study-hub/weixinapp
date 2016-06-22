package org.yuedong.vo;

/**
 * 用户收藏实体
 * @author 黑夜骑士
 *
 */
public class CollectModel {

	//唯一编码
	private String code;
	//图片编码
	private String imgUrl;
	//名称
	private String name;
	//类型名称（篮球羽毛球）
	private String type;
	//地址
	private String address;
	//区域
	private String distince;
	//日期
	private String date;
	//价格
	private int price;
	//优惠价格
	private int discount;
	//状态
	private String status;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDistince() {
		return distince;
	}

	public void setDistince(String distince) {
		this.distince = distince;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
