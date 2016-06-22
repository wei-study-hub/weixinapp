package org.yuedong.vo;

/**
 * 通知模型
 * 
 * @author 黑夜骑士
 *
 */
public class NoticeModel {

	// 通知编码
	private String noticeCode;
	// 标题
	private String title;
	// 内容
	private String content;
	// 日期
	private String dataTime;
	
	private String noticeType;

	public String getNoticeCode() {
		return noticeCode;
	}

	public void setNoticeCode(String noticeCode) {
		this.noticeCode = noticeCode;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDataTime() {
		return dataTime;
	}

	public void setDataTime(String dataTime) {
		this.dataTime = dataTime;
	}

	public String getNoticeType() {
		return noticeType;
	}

	public void setNoticeType(String noticeType) {
		this.noticeType = noticeType;
	}

}
