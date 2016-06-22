package org.yuedong.vo;

import java.util.List;

/**
 * @author sgl
 * @describle 课程详细信息展示类
 * 2016年2月29日 下午3:22:17
 * @version 1.1
 */
public class CourseDetials {
	private String courseCode;
	private String courseName;//课程名
	private String imgUrl;//课程logo
	private int price;//价格
	private int maxJoinNum;//最大参加人数
	private int joinNum;//当前参加人数
	private String address;//地址
	private String beginTime;//开始时间
	private String endTime;//结束时间
	private String detailTime;//详细上课时间
	private String telephone;//联系方式
    private List<TrainerModel> trainerList;
	private int imgNum;//图片个数
	private String longitude;// 经度
	private String latitude;// 纬度
	private String isCollect;//是否被收藏了
	private String status;//课程状态
	private String scopeTypeCode;//课程类型编码
	private String remark;//课程详情
	//选中的学员编码
		private String studentCode;
		//选中的学员名称
		private String studentName;
		//选中的优惠劵编码
		private String couponCode;
		//优惠劵的折扣
		private String discount;
		
		
		
	public String getRemark() {
			return remark;
		}
		public void setRemark(String remark) {
			this.remark = remark;
		}
	public String getStudentCode() {
			return studentCode;
		}
		public void setStudentCode(String studentCode) {
			this.studentCode = studentCode;
		}
		public String getStudentName() {
			return studentName;
		}
		public void setStudentName(String studentName) {
			this.studentName = studentName;
		}
		public String getCouponCode() {
			return couponCode;
		}
		public void setCouponCode(String couponCode) {
			this.couponCode = couponCode;
		}
		public String getDiscount() {
			return discount;
		}
		public void setDiscount(String discount) {
			this.discount = discount;
		}
	public String getScopeTypeCode() {
		return scopeTypeCode;
	}
	public void setScopeTypeCode(String scopeTypeCode) {
		this.scopeTypeCode = scopeTypeCode;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
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
	public int getMaxJoinNum() {
		return maxJoinNum;
	}
	public void setMaxJoinNum(int maxJoinNum) {
		this.maxJoinNum = maxJoinNum;
	}
	public int getJoinNum() {
		return joinNum;
	}
	public void setJoinNum(int joinNum) {
		this.joinNum = joinNum;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getDetailTime() {
		return detailTime;
	}
	public void setDetailTime(String detailTime) {
		this.detailTime = detailTime;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public int getImgNum() {
		return imgNum;
	}
	public void setImgNum(int imgNum) {
		this.imgNum = imgNum;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	


	public String getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getIsCollect() {
		return isCollect;
	}
	public void setIsCollect(String isCollect) {
		this.isCollect = isCollect;
	}
	public List<TrainerModel> getTrainerList() {
		return trainerList;
	}
	public void setTrainerList(List<TrainerModel> trainerList) {
		this.trainerList = trainerList;
	}
}
