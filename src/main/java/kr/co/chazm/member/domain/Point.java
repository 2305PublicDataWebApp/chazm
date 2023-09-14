package kr.co.chazm.member.domain;

import java.sql.Date;

public class Point {
	private int pointNo;
	private String memberId;
	private String pointAmount;
	private String pointDetails;
	private Date pUpdateDate;
	
	public int getPointNo() {
		return pointNo;
	}
	public void setPointNo(int pointNo) {
		this.pointNo = pointNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPointAmount() {
		return pointAmount;
	}
	public void setPointAmount(String pointAmount) {
		this.pointAmount = pointAmount;
	}
	public String getPointDetails() {
		return pointDetails;
	}
	public void setPointDetails(String pointDetails) {
		this.pointDetails = pointDetails;
	}
	public Date getpUpdateDate() {
		return pUpdateDate;
	}
	public void setpUpdateDate(Date pUpdateDate) {
		this.pUpdateDate = pUpdateDate;
	}
	@Override
	public String toString() {
		return "포인트 [포인트번호=" + pointNo + ", 아이디=" + memberId + ", 포인트=" + pointAmount
				+ ", 포인트사용내역=" + pointDetails + ", 포인트업데이트내역=" + pUpdateDate + "]";
	}
	
	
}
