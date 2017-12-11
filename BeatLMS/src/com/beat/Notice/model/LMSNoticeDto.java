package com.beat.Notice.model;

import java.sql.Date;

public class LMSNoticeDto {

	private int lmsblog;
	private int lmsbcode;
	private String lmsbauthor;
	private Date lmsbdate;
	private String lmsbtitle;
	private String lmsbcontent;
	
	public int getLmsblog() {
		return lmsblog;
	}
	
	public void setLmsblog(int lmsblog) {
		this.lmsblog = lmsblog;
	}
	
	public int getLmsbcode() {
		return lmsbcode;
	}
	
	public void setLmsbcode(int lmsbcode) {
		this.lmsbcode = lmsbcode;
	}
	
	public String getLmsbauthor() {
		return lmsbauthor;
	}
	
	public void setLmsbauthor(String lmsbauthor) {
		this.lmsbauthor = lmsbauthor;
	}
	
	public Date getLmsbdate() {
		return lmsbdate;
	}
	
	public void setLmsbdate(Date lmsbdate) {
		this.lmsbdate = lmsbdate;
	}
	
	public String getLmsbtitle() {
		return lmsbtitle;
	}
	
	public void setLmsbtitle(String lmsbtitle) {
		this.lmsbtitle = lmsbtitle;
	}
	
	public String getLmsbcontent() {
		return lmsbcontent;
	}
	
	public void setLmsbcontent(String lmsbcontent) {
		this.lmsbcontent = lmsbcontent;
	}
	

}