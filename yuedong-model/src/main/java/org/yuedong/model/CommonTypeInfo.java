package org.yuedong.model;

/**
 * 包含  课程类型和适用人群类型 中属性的公共属性类
 * @author sgl
 * 2016年2月23日 下午3:19:57
 * TODO
 * @version 1.1
 */
public class CommonTypeInfo implements Comparable<Object>{

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getClassCode() {
		return classCode;
	}

	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}

	public String getClassName() {
		return className;
	}
	
	public void setClassName(String className) {
		this.className = className;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getIconUrl() {
		return iconUrl;
	}
	
	public void setIconUrl(String iconUrl) {
		this.iconUrl = iconUrl;
	}
	
	public int getClassNum() {
		return classNum;
	}

	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}
	private String classCode;
	private String className; //课程名
	private String title; //课程标题描述
	private String iconUrl; // 课程图片
	private int classNum; //该类型类课程数量
	private String type;//标记goodsType/courseType
	
	public int compareTo(Object arg0) {
		CommonTypeInfo commInfo=(CommonTypeInfo)arg0;
		if (this.classNum > commInfo.getClassNum()) {
            return (-this.classNum + commInfo.getClassNum());
        }
        return 1;
	}
}
