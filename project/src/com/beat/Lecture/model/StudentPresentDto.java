package com.beat.Lecture.model;

import java.sql.Date;

public class StudentPresentDto {

	
	private int mnum;
	private int mname;
	private int lectserinum;
	private int presentDays;
	private int absentdays;
	private int latetimes;
	private int notes;
	//////////////////////////////////이하는 결석 기록
	private int absent_serialNum;
	private Date absentDate;
	private String absentReason;
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public int getMname() {
		return mname;
	}
	public void setMname(int mname) {
		this.mname = mname;
	}
	public int getLectserinum() {
		return lectserinum;
	}
	public void setLectserinum(int lectserinum) {
		this.lectserinum = lectserinum;
	}
	public int getPresentDays() {
		return presentDays;
	}
	public void setPresentDays(int presentDays) {
		this.presentDays = presentDays;
	}
	public int getAbsentdays() {
		return absentdays;
	}
	public void setAbsentdays(int absentdays) {
		this.absentdays = absentdays;
	}
	public int getLatetimes() {
		return latetimes;
	}
	public void setLatetimes(int latetimes) {
		this.latetimes = latetimes;
	}
	public int getNotes() {
		return notes;
	}
	public void setNotes(int notes) {
		this.notes = notes;
	}
	public int getAbsent_serialNum() {
		return absent_serialNum;
	}
	public void setAbsent_serialNum(int absent_serialNum) {
		this.absent_serialNum = absent_serialNum;
	}
	public Date getAbsentDate() {
		return absentDate;
	}
	public void setAbsentDate(Date absentDate) {
		this.absentDate = absentDate;
	}
	public String getAbsentReason() {
		return absentReason;
	}
	public void setAbsentReason(String absentReason) {
		this.absentReason = absentReason;
	}
	
	
}
