package org.yuedong.model;
import org.yuedong.model.BaseModel;

/**
 *
 * @author sgl 2016年2月23日 上午11:20:26
 * @describle 课程类型西信息类
 * @version 1.1
 */
public class CourseType extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String courseTypeCode; // 课程类型标识
	private String courseTypeName; // 课程类型明称
	private String courseTypeTitle; // 课程类型标题
	private String imgUrl; // 课程类型图片
	//等级
	private Integer rank;
	public void setCourseTypeCode(String courseTypeCode) {
		this.courseTypeCode = courseTypeCode;
	}

	public String getCourseTypeCode() {
		return this.courseTypeCode;
	}

	public void setCourseTypeName(String courseTypeName) {
		this.courseTypeName = courseTypeName;
	}

	public String getCourseTypeName() {
		return this.courseTypeName;
	}

	public void setCourseTypeTitle(String courseTypeTitle) {
		this.courseTypeTitle = courseTypeTitle;
	}

	public String getCourseTypeTitle() {
		return this.courseTypeTitle;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getImgUrl() {
		return this.imgUrl;
	}

	public Integer getRank() {
		return rank;
	}

	public void setRank(Integer rank) {
		this.rank = rank;
	}

}
