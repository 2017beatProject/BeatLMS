package com.beat.Management.model;

import java.sql.Date;

public class OneMemManagementDto {
//�ϴ� �� �ѱ�

			String mAddress;
			int mNum;
			String sNum; //1 ���� 2 �Ϲ� ȸ��
			String mId;
			String mName;
			Date mBirth;
			String mZen; //���� ���ڰ����� �Ѱ��� //�Ʒ� �����Ҷ� ó���ؼ� �� �� ���� �� ���� 1 �� 2��
			int mPhone;
			String mMail;
			int mAddnum;//�����ȥ
			Date joinDate;
			int rightCode;

			
			
			public String getsNum() {
				return sNum;
			}
			
			public void setsNum(int sNum) {
				
				if(sNum==1){
					this.sNum = "����";
				}else if(sNum==2){
					this.sNum = "�Ϲ�ȸ��";
				}else{
					this.sNum = "��Ÿ";
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
					this.mZen = "��";
				}else if(mZen==2){
					this.mZen = "��";
				}else{
					this.mZen = "��Ÿ";
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
			public int getRightCode() {
				return rightCode;
			}
			public void setRightCode(int rightCode) {
				this.rightCode = rightCode;
			
			}
			
		
	
}
