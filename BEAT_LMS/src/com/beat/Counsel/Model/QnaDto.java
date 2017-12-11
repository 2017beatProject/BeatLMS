package com.beat.Counsel.Model;

import java.sql.Date;

public class QnaDto {
	
	private int lmsblog;
	private int qnaLog;
	private String qnaTitle;
	private String mid;
	private Date qnaDate;
	private String qnaAuthor;
	private String qnaContent;
	
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent.trim();
	}
	public String getQnaAuthor() {
		return qnaAuthor;
	}
	public void setQnaAuthor(String qnaAuthor) {
		this.qnaAuthor = qnaAuthor.trim();
	}
	private int qnaCount;

	
	public int getLmsblog() {
		return lmsblog;
	}
	public void setLmsblog(int lmsblog) {
		this.lmsblog = lmsblog;
	}
	public int getQnaLog() {
		return qnaLog;
	}
	public void setQnaLog(int qnaLog) {
		this.qnaLog = qnaLog;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle.trim();
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid.trim();
	}
	public Date getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}
	public int getQnaCount() {
		return qnaCount;
	}
	public void setQnaCount(int qnaCount) {
		this.qnaCount = qnaCount;
	}
	
	
}
