package kr.co.chazm.plusmember.domain;

import java.sql.Timestamp;

public class PlusMReply {

	private int plusMRNo;
	private int refPlusMNo;
	private String plusMRContent;
	private String plusMRWriter;
	private Timestamp plusMRCreateDate;
	private Timestamp plusMRUpdateDate;
	private String plusMRStateYn;

	public int getPlusMRNo() {
		return plusMRNo;
	}

	public void setPlusMRNo(int plusMRNo) {
		this.plusMRNo = plusMRNo;
	}

	public int getRefPlusMNo() {
		return refPlusMNo;
	}

	public void setRefPlusMNo(int refPlusMNo) {
		this.refPlusMNo = refPlusMNo;
	}

	public String getPlusMRContent() {
		return plusMRContent;
	}

	public void setPlusMRContent(String plusMRContent) {
		this.plusMRContent = plusMRContent;
	}

	public String getPlusMRWriter() {
		return plusMRWriter;
	}

	public void setPlusMRWriter(String plusMRWriter) {
		this.plusMRWriter = plusMRWriter;
	}

	public Timestamp getPlusMRCreateDate() {
		return plusMRCreateDate;
	}

	public void setPlusMRCreateDate(Timestamp plusMRCreateDate) {
		this.plusMRCreateDate = plusMRCreateDate;
	}

	public Timestamp getPlusMRUpdateDate() {
		return plusMRUpdateDate;
	}

	public void setPlusMRUpdateDate(Timestamp plusMRUpdateDate) {
		this.plusMRUpdateDate = plusMRUpdateDate;
	}

	public String getPlusMRStateYn() {
		return plusMRStateYn;
	}

	public void setPlusMRStateYn(String plusMRStateYn) {
		this.plusMRStateYn = plusMRStateYn;
	}

	@Override
	public String toString() {
		return "plusM댓글 [댓글번호=" + plusMRNo + ", 글번호=" + refPlusMNo + ", 내용=" + plusMRContent + ", 작성자=" + plusMRWriter
				+ ", 작성일=" + plusMRCreateDate + ", 수정일=" + plusMRUpdateDate + ", 사용여부=" + plusMRStateYn + "]";
	}

}
