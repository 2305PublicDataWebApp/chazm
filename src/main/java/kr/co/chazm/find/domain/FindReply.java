package kr.co.chazm.find.domain;

import java.sql.Timestamp;

public class FindReply {
	private int findRNo;
	private int refFindNo;
	private String findRWriter;
	private String findRContent;
	private Timestamp findRCreateDate;
	private Timestamp findRUpdateDate;
	private char findRStateYn;
	private int findRParentNo;
	
	public int getFindRNo() {
		return findRNo;
	}
	public void setFindRNo(int findRNo) {
		this.findRNo = findRNo;
	}
	public int getRefFindNo() {
		return refFindNo;
	}
	public void setRefFindNo(int refFindNo) {
		this.refFindNo = refFindNo;
	}
	public String getFindRWriter() {
		return findRWriter;
	}
	public void setFindRWriter(String findRWriter) {
		this.findRWriter = findRWriter;
	}
	public String getFindRContent() {
		return findRContent;
	}
	public void setFindRContent(String findRContent) {
		this.findRContent = findRContent;
	}
	public Timestamp getFindRCreateDate() {
		return findRCreateDate;
	}
	public void setFindRCreateDate(Timestamp findRCreateDate) {
		this.findRCreateDate = findRCreateDate;
	}
	public Timestamp getFindRUpdateDate() {
		return findRUpdateDate;
	}
	public void setFindRUpdateDate(Timestamp findRUpdateDate) {
		this.findRUpdateDate = findRUpdateDate;
	}
	public char getFindRStateYn() {
		return findRStateYn;
	}
	public void setFindRStateYn(char findRStateYn) {
		this.findRStateYn = findRStateYn;
	}
	public int getFindRParentNo() {
		return findRParentNo;
	}
	public void setFindRParentNo(int findRParentNo) {
		this.findRParentNo = findRParentNo;
	}
	@Override
	public String toString() {
		return "댓글 [댓글번호=" + findRNo + ", 글번호=" + refFindNo + ", 작성자=" + findRWriter
				+ ", 내용=" + findRContent + ", 작성일자=" + findRCreateDate + ", 수정일자="
				+ findRUpdateDate + ", 사용여부=" + findRStateYn + ", 부모댓글번호=" + findRParentNo + "]";
	}
	
	
}
