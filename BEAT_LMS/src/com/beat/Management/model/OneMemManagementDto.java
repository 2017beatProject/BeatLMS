package com.beat.Management.model;

import java.sql.Date;

public class OneMemManagementDto {
//일단 다 넘김

			String mAddress;
			int mNum;
			String sNum; //1 직원 2 일반 회원
			String mId;
			String mName;
			Date mBirth;
			String mZen; //성별 숫자값으로 넘겼음 //아래 리턴할때 처리해서 줄 수 있을 것 같음 1 남 2여
			int mPhone;
			String mMail;
			int mAddnum;//우편번혼
			Date joinDate;
			String team;

			
			
			public String getsNum() {
				return sNum;
			}
			
			public void setsNum(int sNum) {
				
				if(sNum==1){
					this.sNum = "직원";
				}else if(sNum==2){
					this.sNum = "일반회원";
				}else{
					this.sNum = "기타";
				}
		
			}
			
			public Date getmBirth() {
				return mBirth;
			}
			
			public void setmBirth(Date mBirth) {
				this.mBirth = mBirth;
			}
			public String getmZen() {
				return mZen;
			}
			public void setmZen(int mZen) {
				
				if(mZen==1){
					this.mZen = "남성";
				}else if(mZen==2){
					this.mZen = "여성";
				}else{
					this.mZen = "남성";
				}
				
			}
			
			public int getmPhone(){
				return mPhone;
			}
			
			public void setmPhone(int mPhone) {
				this.mPhone = mPhone;
			}
			
			public String getmMail() {
				return mMail;
			}
			public void setmMail(String mMail) {
				this.mMail = mMail;
			}
			public int getmAddnum() {
				return mAddnum;
			}
			public void setmAddnum(int mAddnum) {
				this.mAddnum = mAddnum;
			}
			public Date getJoinDate() {
				return joinDate;
			}
			public void setJoinDate(Date joinDate) {
				this.joinDate = joinDate;
			}

			public String getMAddress() {
				return mAddress;
			}
			public void setMAddress(String mAddress) {
				this.mAddress = mAddress;
			}
			public int getmNum() {
				return mNum;
			}
			public void setmNum(int mNum) {
				this.mNum = mNum;
			}
			public String getmId() {
				return mId;
			}
			public void setmId(String mId) {
				this.mId = mId;
			}
			public String getmName() {
				return mName;
			}
			public void setmName(String mName) {
				this.mName = mName;
			}
			public String getTeam() {
				return team;
			}
			public void setTeam(String team) {
				this.team = team;
			
			}
			
		
	
}
