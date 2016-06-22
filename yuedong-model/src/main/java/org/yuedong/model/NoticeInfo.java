package org.yuedong.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.yuedong.model.BaseModel;

public class NoticeInfo extends BaseModel {

	private static final long serialVersionUID = 1L;

	private String noticeCode;
	private String title;
	private String content;
	private String imgCode;
	private String userCode;
	private String noticeType;
	private String remarks;

	public String getNoticeType() {
		return noticeType;
	}

	public void setNoticeType(String noticeType) {
		this.noticeType = noticeType;
	}

	public void setNoticeCode(String noticeCode) {
		this.noticeCode = noticeCode;
	}

	public String getNoticeCode() {
		return this.noticeCode;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitle() {
		return this.title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContent() {
		return this.content;
	}

	public void setImgCode(String imgCode) {
		this.imgCode = imgCode;
	}

	public String getImgCode() {
		return this.imgCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserCode() {
		return this.userCode;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

}
