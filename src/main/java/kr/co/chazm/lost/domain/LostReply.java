package kr.co.chazm.lost.domain;

import java.sql.Timestamp;

public class LostReply {
	private int lostRNo;
	private int refLostNo;
	private String lostRContent;
	private String lostRWriter;
	private Timestamp lostRCreateDate;
	private Timestamp lostRUpdateDate;
	private String lostRStateYn;
	private int lostRParentNo;
	private int level;
	
	public LostReply() { }
	
	public LostReply(int lostRNo, int refLostNo, int lostRParentNo) {
		super();
		this.lostRNo = lostRNo;
		this.refLostNo = refLostNo;
		this.lostRParentNo = lostRParentNo;
	}
	
	public int getLostRNo() {
		return lostRNo;
	}
	public void setLostRNo(int lostRNo) {
		this.lostRNo = lostRNo;
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
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}

	@Override
	public String toString() {
		return "분실물게시판댓글 [댓글번호=" + lostRNo + ", 글번호=" + refLostNo + ", 작성자=" + lostRWriter
				+ ", 내용=" + lostRContent + ", 작성일자=" + lostRCreateDate + ", 수정일자="
				+ lostRUpdateDate + ", 사용여부=" + lostRStateYn + ", 부모댓글번호=" + lostRParentNo + "]";
	}
	

}
