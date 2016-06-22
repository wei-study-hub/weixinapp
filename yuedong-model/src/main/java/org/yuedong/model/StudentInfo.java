package org.yuedong.model;


import org.yuedong.model.BaseModel;

public class StudentInfo extends BaseModel {

	private static final long serialVersionUID = 1L;

	private String studentCode;
	private String studentName;
	private Integer age;
	private String sex;
	private String userCode;
	private String school;
	private Integer height;
	private Integer weight;

	public void setStudentCode(String studentCode) {
		this.studentCode = studentCode;
	}

	public String getStudentCode() {
		return this.studentCode;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentName() {
		return this.studentName;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getSex() {
		return this.sex;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserCode() {
		return this.userCode;
	}


	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

}
