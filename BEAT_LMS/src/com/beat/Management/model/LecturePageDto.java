package com.beat.Management.model;

import java.sql.Date;

public class LecturePageDto {

	int lecName;
	String lecRoom;
	String lecTeacher;
	Date lecStart;
	Date lecEnd;
 	String reDate;
 	int maxnum;
 	int num;
 	String lecContent;
 	
 	
 	
	public String getLecContent() {
		return lecContent;
	}
	public void setLecContent(String lecContent) {
		this.lecContent = lecContent;
	}
	public void setReDate(String reDate) {
		this.reDate = reDate;
	}
	public int getLecName() {
		return lecName;
	}
	public void setLecName(int lecName) {
		this.lecName = lecName;
	}
	public String getLecRoom() {
		return lecRoom;
	}
	public void setLecRoom(String lecRoom) {
		this.lecRoom = lecRoom;
	}
	public String getLecTeacher() {
		return lecTeacher;
	}
	public void setLecTeacher(String lecTeacher) {
		this.lecTeacher = lecTeacher;
	}
	public Date getLecStart() {
		return lecStart;
	}
	public void setLecStart(Date lecStart) {
		this.lecStart = lecStart;
	}
	
	public Date getLecEnd() {
		return lecEnd;
	}
	
	public void setLecEnd(Date lecEnd) {
		this.lecEnd = lecEnd;
	}
	
	public String getReDate() {
		reDate = lecStart+"~"+lecEnd;
		return reDate;
	}

	public int getMaxnum() {
		return maxnum;
	}
	public void setMaxnum(int maxnum) {
		this.maxnum = maxnum;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	
}
