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
	private Date lostStartDate;
	private Date lostEndDate;
	private String lostColor;
	private String lostBrand;
	private Date lCreateDate;
	private Date lUpdateDate;
	private String lStateYN;
	private String lostMaybe;
	

	public LostBoard() {}
	
	public LostBoard(String lostTitle, String lostContent, String lostFilename,
			String lostFilerename, String lostFilepath, String lostCategory, String lostLocation, String lostPlace,
			Date lostStartDate, Date lostEndDate, String lostColor, String lostBrand) {
		super();
		this.lostTitle = lostTitle;
		this.lostContent = lostContent;
		this.lostFilename = lostFilename;
		this.lostFilerename = lostFilerename;
		this.lostFilepath = lostFilepath;
		this.lostCategory = lostCategory;
		this.lostLocation = lostLocation;
		this.lostPlace = lostPlace;
		this.lostStartDate = lostStartDate;
		this.lostEndDate = lostEndDate;
		this.lostColor = lostColor;
		this.lostBrand = lostBrand;
	}
	
	
	public String getLostMaybe() {
		return lostMaybe;
	}

	public void setLostMaybe(String lostMaybe) {
		this.lostMaybe = lostMaybe;
	}



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

	public Date getLostStartDate() {
		return lostStartDate;
	}

	public void setLostStartDate(Date lostStartDate) {
		this.lostStartDate = lostStartDate;
	}

	public Date getLostEndDate() {
		return lostEndDate;
	}

	public void setLostEndDate(Date lostEndDate) {
		this.lostEndDate = lostEndDate;
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

	@Override
	public String toString() {
		return "분실물게시판 [글번호=" + lostNo + ", 메목=" + lostTitle + ", 내용=" + lostContent
				+ ", 작성자=" + lostWriter + ", 파일이름=" + lostFilename + ", 파일리네임=" + lostFilerename
				+ ", 파일경로=" + lostFilepath + ", 종류=" + lostCategory + ", 분실지역=" + lostLocation
				+ ", 분실장소=" + lostPlace + ", 분실일자시작=" + lostStartDate +  ", 분실일자끝=" + lostEndDate 
				+ ", 색상=" + lostColor + ", 브랜드=" + lostBrand + ", 작성일자=" + lCreateDate + ", 수정일자=" + lUpdateDate + ", 공개여부=" + lStateYN
				+ "]";
	}
	
	
	
	
	
	
	
}
