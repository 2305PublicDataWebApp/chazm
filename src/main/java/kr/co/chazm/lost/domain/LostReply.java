package kr.co.chazm.lost.domain;

import java.sql.Timestamp;

public class LostReply {
	private int replyNo;
	private int refLostNo;
	private String lostRWriter;
	private String lostRContent;
	private Timestamp lostRCreateDate;
	private Timestamp lostRUpdateDate;
	private String lostRStateYn;
	private int lostRParentNo;
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public int getRefLostNo() {
		return refLostNo;
	}
	public void setRefLostNo(int refLostNo) {
		this.refLostNo = refLostNo;
	}
	public String getLostRWriter() {
		return lostRWriter;
	}
	public void setLostRWriter(String lostRWriter) {
		this.lostRWriter = lostRWriter;
	}
	public String getLostRContent() {
		return lostRContent;
	}
	public void setLostRContent(String lostRContent) {
		this.lostRContent = lostRContent;
	}
	public Timestamp getLostRCreateDate() {
		return lostRCreateDate;
	}
	public void setLostRCreateDate(Timestamp lostRCreateDate) {
		this.lostRCreateDate = lostRCreateDate;
	}
	public Timestamp getLostRUpdateDate() {
		return lostRUpdateDate;
	}
	public void setLostRUpdateDate(Timestamp lostRUpdateDate) {
		this.lostRUpdateDate = lostRUpdateDate;
	}
	public String getLostRStateYn() {
		return lostRStateYn;
	}
	public void setLostRStateYn(String lostRStateYn) {
		this.lostRStateYn = lostRStateYn;
	}
	public int getLostRParentNo() {
		return lostRParentNo;
	}
	public void setLostRParentNo(int lostRParentNo) {
		this.lostRParentNo = lostRParentNo;
	}
	
	@Override
	public String toString() {
		return "분실물게시판댓글 [댓글번호=" + replyNo + ", 글번호=" + refLostNo + ", 작성자=" + lostRWriter
				+ ", 내용=" + lostRContent + ", 작성일자=" + lostRCreateDate + ", 수정일자="
				+ lostRUpdateDate + ", 사용여부=" + lostRStateYn + ", 부모댓글번호=" + lostRParentNo + "]";
	}
	

}
