package org.yuedong.vo;

/**
 * 学员信息
 * 
 * @author 黑夜骑士
 *
 */
public class StudentDetail {

	// 学员编码
	private String studentCode;
	// 学员联系方式
	private String telephone;
	// 学员姓名
	private String studentName;
	// 性别
	private String sex;
	// 年龄
	private int age;
	//所在学校
	private String school;
	
	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getStudentCode() {
		return studentCode;
	}

	public void setStudentCode(String studentCode) {
		this.studentCode = studentCode;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
