package org.yuedong.vo;

/**
 * 活动首页，活动实体
 * 
 * @author 黑夜骑士
 *
 */
public class ActivityIndex {

	//活动编码
	private String activityCode;
	//图片链接
	private String imgUrl;
	//活动名称
	private String activityName;
	//报名数量
	private Integer joinNum;
	//最大报名数量
	private Integer maxJoinNum;
	//活动价格
	private Integer price;
	//折扣价格
	private Integer discountPrice;
	//活动状态
	//00  进行中
	//01  活动人数已满
	//02  活动结束
	private String status;

	public String getActivityCode() {
		return activityCode;
	}

	public void setActivityCode(String activityCode) {
		this.activityCode = activityCode;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public Integer getJoinNum() {
		return joinNum;
	}

	public void setJoinNum(Integer joinNum) {
		this.joinNum = joinNum;
	}

	public Integer getMaxJoinNum() {
		return maxJoinNum;
	}

	public void setMaxJoinNum(Integer maxJoinNum) {
		this.maxJoinNum = maxJoinNum;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(Integer discountPrice) {
		this.discountPrice = discountPrice;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
