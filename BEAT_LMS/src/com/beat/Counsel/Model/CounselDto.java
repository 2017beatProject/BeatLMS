package com.beat.Counsel.Model;

import java.sql.Date;

public class CounselDto {

	private int counselLog;
	private String mname;
	private String mid;
	private int mphone;
	private String counselContant;
	private Date counseldate;
	
	public int getCounselLog() {
		return counselLog;
	}
	public void setCounselLog(int counselLog) {
		this.counselLog = counselLog;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getMphone() {
		return mphone;
	}
	public void setMphone(int mphone) {
		this.mphone = mphone;
	}
	public String getCounselContant() {
		return counselContant;
	}
	public void setCounselContant(String counselContant) {
		this.counselContant = counselContant;
	}
	public Date getCounseldate() {
		return counseldate;
	}
	public void setCounseldate(Date counseldate) {
		this.counseldate = counseldate;
	}
	
	
	
}
