package com.beat.Notice.model;

import java.sql.Date;

public class LMSNoticeDto {

	private int bbsrow;
	private int lmsbcode;
	private int lmsblog;
	private String lmsbauthor;
	private Date lmsbdate;
	private String lmstitle;
	private String lmsbcontent;
	
	
	public int getBbsrow() {
		return bbsrow;
	}
	public void setBbsrow(int bbsrow) {
		this.bbsrow = bbsrow;
	}
	public int getLmsbcode() {
		return lmsbcode;
	}
	public void setLmsbcode(int lmsbcode) {
		this.lmsbcode = lmsbcode;
	}
	public int getLmsblog() {
		return lmsblog;
	}
	public void setLmsblog(int lmsblog) {
		this.lmsblog = lmsblog;
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
	public String getLmstitle() {
		return lmstitle;
	}
	public void setLmstitle(String lmstitle) {
		this.lmstitle = lmstitle;
	}
	public String getLmsbcontent() {
		return lmsbcontent;
	}
	public void setLmsbcontent(String lmsbcontent) {
		this.lmsbcontent = lmsbcontent;
	}

}