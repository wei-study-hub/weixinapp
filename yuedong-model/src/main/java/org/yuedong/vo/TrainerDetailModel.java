package org.yuedong.vo;

import java.util.List;

/**
 * @author sgl
 * @describle 教练详情 2016年3月9日 上午10:37:36
 * @version 1.1
 * @return
 */
public class TrainerDetailModel {

	private String trainerImgUrl;// 头像
	private String trainerName;// 姓名
	private String trainerCode;
	private String sex;// 性别
	private int years;// 执教年数
	private List<String> lifeImgList;// 生活照
	private List<String> honorList;// 个人荣誉
	private List<String> teachLifeList;// 执教经历

	public String getTrainerImgUrl() {
		return trainerImgUrl;
	}

	public void setTrainerImgUrl(String trainerImgUrl) {
		this.trainerImgUrl = trainerImgUrl;
	}

	public String getTrainerName() {
		return trainerName;
	}

	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}

	public String getTrainerCode() {
		return trainerCode;
	}

	public void setTrainerCode(String trainerCode) {
		this.trainerCode = trainerCode;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getYears() {
		return years;
	}

	public void setYears(int years) {
		this.years = years;
	}

	public List<String> getLifeImgList() {
		return lifeImgList;
	}

	public void setLifeImgList(List<String> lifeImgList) {
		this.lifeImgList = lifeImgList;
	}

	public List<String> getHonorList() {
		return honorList;
	}

	public void setHonorList(List<String> honorList) {
		this.honorList = honorList;
	}

	public List<String> getTeachLifeList() {
		return teachLifeList;
	}

	public void setTeachLifeList(List<String> teachLifeList) {
		this.teachLifeList = teachLifeList;
	}
}
