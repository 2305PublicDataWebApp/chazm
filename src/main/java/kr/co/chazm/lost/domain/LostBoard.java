package kr.co.chazm.lost.domain;

import java.sql.Date;

public class LostBoard {
	private int lostNo;
	private String lostTitle;
	private String lostContent;
	private String lostWriter;
	private String lostFilename;
	private String lostFilerename;
	private String lostFilepath;
	private String lostCategory;
	private String lostLocation;
	private String lostPlace;
	private Date lostDate;
	private String lostColor;
	private String lostBrand;
	private Date lCreateDate;
	private Date lUpdateDate;
	private String lStateYN;
	private String lostMaybe;
	private int totalReplyCount;
	

	
	public LostBoard() {}
	

	public int getLostNo() {
		return lostNo;
	}


	public void setLostNo(int lostNo) {
		this.lostNo = lostNo;
	}


	public String getLostTitle() {
		return lostTitle;
	}




	public void setLostTitle(String lostTitle) {
		this.lostTitle = lostTitle;
	}




	public String getLostContent() {
		return lostContent;
	}




	public void setLostContent(String lostContent) {
		this.lostContent = lostContent;
	}




	public String getLostWriter() {
		return lostWriter;
	}




	public void setLostWriter(String lostWriter) {
		this.lostWriter = lostWriter;
	}




	public String getLostFilename() {
		return lostFilename;
	}




	public void setLostFilename(String lostFilename) {
		this.lostFilename = lostFilename;
	}




	public String getLostFilerename() {
		return lostFilerename;
	}




	public void setLostFilerename(String lostFilerename) {
		this.lostFilerename = lostFilerename;
	}




	public String getLostFilepath() {
		return lostFilepath;
	}




	public void setLostFilepath(String lostFilepath) {
		this.lostFilepath = lostFilepath;
	}




	public String getLostCategory() {
		return lostCategory;
	}




	public void setLostCategory(String lostCategory) {
		this.lostCategory = lostCategory;
	}




	public String getLostLocation() {
		return lostLocation;
	}




	public void setLostLocation(String lostLocation) {
		this.lostLocation = lostLocation;
	}




	public String getLostPlace() {
		return lostPlace;
	}




	public void setLostPlace(String lostPlace) {
		this.lostPlace = lostPlace;
	}




	public Date getLostDate() {
		return lostDate;
	}




	public void setLostDate(Date lostDate) {
		this.lostDate = lostDate;
	}




	public String getLostColor() {
		return lostColor;
	}




	public void setLostColor(String lostColor) {
		this.lostColor = lostColor;
	}




	public String getLostBrand() {
		return lostBrand;
	}




	public void setLostBrand(String lostBrand) {
		this.lostBrand = lostBrand;
	}




	public Date getlCreateDate() {
		return lCreateDate;
	}




	public void setlCreateDate(Date lCreateDate) {
		this.lCreateDate = lCreateDate;
	}




	public Date getlUpdateDate() {
		return lUpdateDate;
	}




	public void setlUpdateDate(Date lUpdateDate) {
		this.lUpdateDate = lUpdateDate;
	}




	public String getlStateYN() {
		return lStateYN;
	}




	public void setlStateYN(String lStateYN) {
		this.lStateYN = lStateYN;
	}




	public String getLostMaybe() {
		return lostMaybe;
	}




	public void setLostMaybe(String lostMaybe) {
		this.lostMaybe = lostMaybe;
	}




	public int getTotalReplyCount() {
		return totalReplyCount;
	}




	public void setTotalReplyCount(int totalReplyCount) {
		this.totalReplyCount = totalReplyCount;
	}




	@Override
	public String toString() {
		return "분실물게시판 [글번호=" + lostNo + ", 메목=" + lostTitle + ", 내용=" + lostContent
				+ ", 작성자=" + lostWriter + ", 파일이름=" + lostFilename + ", 파일리네임=" + lostFilerename
				+ ", 파일경로=" + lostFilepath + ", 종류=" + lostCategory + ", 분실지역=" + lostLocation
				+ ", 분실장소=" + lostPlace + ", 분실일자=" + lostDate +  ", 색상=" + lostColor + ", 브랜드=" + lostBrand + ", 작성일자=" + lCreateDate + ", 수정일자=" + lUpdateDate + ", 공개여부=" + lStateYN
				+ "]";
	}
	
	
	
	
	
	
	
}
