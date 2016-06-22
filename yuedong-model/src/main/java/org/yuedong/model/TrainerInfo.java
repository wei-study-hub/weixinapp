package org.yuedong.model;

import org.yuedong.model.BaseModel;

public class TrainerInfo extends BaseModel {

	private static final long serialVersionUID = 1L;

	private String schoolName;
	private Integer experience;
	private String honors;
	private String trainerCode;
	private String persionSign;
	private String trainerName;

	private String imgUrl;
	private String sex;
	private String teachExps;

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	public String getSchoolName() {
		return this.schoolName;
	}

	public void setExperience(Integer experience) {
		this.experience = experience;
	}

	public Integer getExperience() {
		return this.experience;
	}

	public void setHonors(String honors) {
		this.honors = honors;
	}

	public String getHonors() {
		return this.honors;
	}

	public void setTrainerCode(String trainerCode) {
		this.trainerCode = trainerCode;
	}

	public String getTrainerCode() {
		return this.trainerCode;
	}

	public void setPersionSign(String persionSign) {
		this.persionSign = persionSign;
	}

	public String getPersionSign() {
		return this.persionSign;
	}

	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}

	public String getTrainerName() {
		return this.trainerName;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTeachExps() {
		return teachExps;
	}

	public void setTeachExps(String teachExps) {
		this.teachExps = teachExps;
	}
}
