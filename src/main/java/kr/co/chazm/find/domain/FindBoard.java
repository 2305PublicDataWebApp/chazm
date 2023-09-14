package kr.co.chazm.find.domain;

import java.sql.Date;

public class FindBoard {
	private int findNo;
	private String findTitle;
	private String findContent;
	private String findWriter;
	private String memberName;
	private String findFilename;
	private String findFilerename;
	private String findFilepath;
	private String findCategory;
	private String findLocation;
	private String findPlace;
	private Date findDate;
	private String findColor;
	private String findBrand;
	private String getPlace;
	private Date getDate;
	private Date fCreateDate;
	private Date fUpdateDate;
	private char fStateYn;
	
	public int getFindNo() {
		return findNo;
	}
	public void setFindNo(int findNo) {
		this.findNo = findNo;
	}
	public String getFindTitle() {
		return findTitle;
	}
	public void setFindTitle(String findTitle) {
		this.findTitle = findTitle;
	}
	public String getFindContent() {
		return findContent;
	}
	public void setFindContent(String findContent) {
		this.findContent = findContent;
	}
	public String getFindWriter() {
		return findWriter;
	}
	public void setFindWriter(String findWriter) {
		this.findWriter = findWriter;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getFindFilename() {
		return findFilename;
	}
	public void setFindFilename(String findFilename) {
		this.findFilename = findFilename;
	}
	public String getFindFilerename() {
		return findFilerename;
	}
	public void setFindFilerename(String findFilerename) {
		this.findFilerename = findFilerename;
	}
	public String getFindFilepath() {
		return findFilepath;
	}
	public void setFindFilepath(String findFilepath) {
		this.findFilepath = findFilepath;
	}
	public String getFindCategory() {
		return findCategory;
	}
	public void setFindCategory(String findCategory) {
		this.findCategory = findCategory;
	}
	public String getFindLocation() {
		return findLocation;
	}
	public void setFindLocation(String findLocation) {
		this.findLocation = findLocation;
	}
	public String getFindPlace() {
		return findPlace;
	}
	public void setFindPlace(String findPlace) {
		this.findPlace = findPlace;
	}
	public Date getFindDate() {
		return findDate;
	}
	public void setFindDate(Date findDate) {
		this.findDate = findDate;
	}
	public String getFindColor() {
		return findColor;
	}
	public void setFindColor(String findColor) {
		this.findColor = findColor;
	}
	public String getFindBrand() {
		return findBrand;
	}
	public void setFindBrand(String findBrand) {
		this.findBrand = findBrand;
	}
	public String getGetPlace() {
		return getPlace;
	}
	public void setGetPlace(String getPlace) {
		this.getPlace = getPlace;
	}
	public Date getGetDate() {
		return getDate;
	}
	public void setGetDate(Date getDate) {
		this.getDate = getDate;
	}
	public Date getfCreateDate() {
		return fCreateDate;
	}
	public void setfCreateDate(Date fCreateDate) {
		this.fCreateDate = fCreateDate;
	}
	public Date getfUpdateDate() {
		return fUpdateDate;
	}
	public void setfUpdateDate(Date fUpdateDate) {
		this.fUpdateDate = fUpdateDate;
	}
	public char getfStateYn() {
		return fStateYn;
	}
	public void setfStateYn(char fStateYn) {
		this.fStateYn = fStateYn;
	}
	@Override
	public String toString() {
		return "습득물 게시판 [글번호=" + findNo + ", 제목=" + findTitle + ", 내용=" + findContent
				+ ", 작성자=" + findWriter + ", 기업명=" + memberName + ", 파일이름=" + findFilename
				+ ", 파일리네임=" + findFilerename + ", 파일경로=" + findFilepath + ", 종류="
				+ findCategory + ", 습득지역=" + findLocation + ", 습득장소=" + findPlace + ", 습득일자="
				+ findDate + ", 색상=" + findColor + ", 브랜드=" + findBrand + ", 보관장소=" + getPlace
				+ ", 인계일자=" + getDate + ", 작성일자=" + fCreateDate + ", 수정일자=" + fUpdateDate
				+ ", 공개여부=" + fStateYn + "]";
	}	
	
	
}
