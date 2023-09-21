package kr.co.chazm.plusmember.domain;

import java.sql.Timestamp;

public class Donation {

	private int donationNo;
	private int refPlusMNo;
	private String memberId;
	private int dntPoint;
	private Timestamp dntDate;
	private PlusMBoard plusMBoard;
	
	public Donation() {}
	
	public Donation(int refPlusMNo, String memberId) {
		super();
		this.refPlusMNo = refPlusMNo;
		this.memberId = memberId;
	}

	public int getDonationNo() {
		return donationNo;
	}

	public void setDonationNo(int donationNo) {
		this.donationNo = donationNo;
	}

	public int getRefPlusMNo() {
		return refPlusMNo;
	}

	public void setRefPlusMNo(int refPlusMNo) {
		this.refPlusMNo = refPlusMNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getDntPoint() {
		return dntPoint;
	}

	public void setDntPoint(int dntPoint) {
		this.dntPoint = dntPoint;
	}

	public Timestamp getDntDate() {
		return dntDate;
	}

	public void setDntDate(Timestamp dntDate) {
		this.dntDate = dntDate;
	}
	public PlusMBoard getPlusMBoard() {
		return plusMBoard;
	}

	public void setPlusMBoard(PlusMBoard plusMBoard) {
		this.plusMBoard = plusMBoard;
	}

	@Override
	public String toString() {
		return "기부 [기부번호=" + donationNo + ", 글번호=" + refPlusMNo + ", 아이디=" + memberId + ", 기부포인트=" + dntPoint
				+ ", 기부일자=" + dntDate + "]";
	}

}
