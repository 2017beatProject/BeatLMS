package com.beat.Lecture.model;

public class StudentPresentDto {

	private int mnum;
	private String mname;
	private int mphone;
	private String mmail;
	private int stuPresent;
	private int stuAbsent;
	private int stuLate;
	private int stuEarlyBack;
	private int stuPresentPercent;
	
	
	public int getStuLate() {
		return stuLate;
	}
	public void setStuLate(int stuLate) {
		this.stuLate = stuLate;
	}
	public int getStuEarlyBack() {
		return stuEarlyBack;
	}
	public void setStuEarlyBack(int stuEarlyBack) {
		this.stuEarlyBack = stuEarlyBack;
	}
	
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
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
	public int getStuPresent() {
		return stuPresent;
	}
	public void setStuPresent(int stuPresent) {
		this.stuPresent = stuPresent;
	}
	public int getStuAbsent() {
		return stuAbsent;
	}
	public void setStuAbsent(int stuAbsent) {
		this.stuAbsent = stuAbsent;
	}
	public int getStuPresentPercent() {
		return stuPresentPercent;
	}
	public void setStuPresentPercent(int stuPresentPercent) {
		this.stuPresentPercent = stuPresentPercent;
	}
	
	
	
}
