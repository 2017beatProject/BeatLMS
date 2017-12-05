package com.beat.Member.model;

import java.sql.Date;

public class MemberInfoDto {
	private String mname;
	private Date mbirth;
	private int mzen;
	private int mphone;
	private String mmail;
	private String maddress;
	private int maddnum;
	private Date joindate;
		
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public Date getMbirth() {
		return mbirth;
	}
	public void setMbirth(Date mbirth) {
		this.mbirth = mbirth;
	}
	public int getMzen() {
		return mzen;
	}
	public void setMzen(int mzen) {
		this.mzen = mzen;
	}
	public int getMphone() {
		return mphone;
	}
	public void setMphone(int mphone) {
		this.mphone = mphone;
	}
	public String getMmail() {
		return mmail;
	}
	public void setMmail(String mmail) {
		this.mmail = mmail;
	}
	public String getMaddress() {
		return maddress;
	}
	public void setMaddress(String maddress) {
		this.maddress = maddress;
	}
	public int getMaddnum() {
		return maddnum;
	}
	public void setMaddnum(int maddnum) {
		this.maddnum = maddnum;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
}
