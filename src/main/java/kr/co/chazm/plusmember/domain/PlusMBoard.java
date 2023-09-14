package kr.co.chazm.plusmember.domain;

import java.sql.Date;

public class PlusMBoard {

	private int plusMNo;
	private String plusMTitle;
	private String plusMContent;
	private String plusMWriter;
	private String plusMDntPlace;
	private int plusMGoalAmount;
	private int plusMCurAmount;
	private String plusMFilename;
	private String plusMFilerename;
	private String plusMFilepath;
	private Date plusMStartDate;
	private Date plusMEndDate;
	private Date plusMCreateDate;
	private String plusMEndYn;

	public int getPlusMNo() {
		return plusMNo;
	}

	public void setPlusMNo(int plusMNo) {
		this.plusMNo = plusMNo;
	}

	public String getPlusMTitle() {
		return plusMTitle;
	}

	public void setPlusMTitle(String plusMTitle) {
		this.plusMTitle = plusMTitle;
	}

	public String getPlusMContent() {
		return plusMContent;
	}

	public void setPlusMContent(String plusMContent) {
		this.plusMContent = plusMContent;
	}

	public String getPlusMWriter() {
		return plusMWriter;
	}

	public void setPlusMWriter(String plusMWriter) {
		this.plusMWriter = plusMWriter;
	}

	public String getPlusMDntPlace() {
		return plusMDntPlace;
	}

	public void setPlusMDntPlace(String plusMDntPlace) {
		this.plusMDntPlace = plusMDntPlace;
	}

	public int getPlusMGoalAmount() {
		return plusMGoalAmount;
	}

	public void setPlusMGoalAmount(int plusMGoalAmount) {
		this.plusMGoalAmount = plusMGoalAmount;
	}

	public int getPlusMCurAmount() {
		return plusMCurAmount;
	}

	public void setPlusMCurAmount(int plusMCurAmount) {
		this.plusMCurAmount = plusMCurAmount;
	}

	public String getPlusMFilename() {
		return plusMFilename;
	}

	public void setPlusMFilename(String plusMFilename) {
		this.plusMFilename = plusMFilename;
	}

	public String getPlusMFilerename() {
		return plusMFilerename;
	}

	public void setPlusMFilerename(String plusMFilerename) {
		this.plusMFilerename = plusMFilerename;
	}

	public String getPlusMFilepath() {
		return plusMFilepath;
	}

	public void setPlusMFilepath(String plusMFilepath) {
		this.plusMFilepath = plusMFilepath;
	}

	public Date getPlusMStartDate() {
		return plusMStartDate;
	}

	public void setPlusMStartDate(Date plusMStartDate) {
		this.plusMStartDate = plusMStartDate;
	}

	public Date getPlusMEndDate() {
		return plusMEndDate;
	}

	public void setPlusMEndDate(Date plusMEndDate) {
		this.plusMEndDate = plusMEndDate;
	}

	public Date getPlusMCreateDate() {
		return plusMCreateDate;
	}

	public void setPlusMCreateDate(Date plusMCreateDate) {
		this.plusMCreateDate = plusMCreateDate;
	}

	public String getPlusMEndYn() {
		return plusMEndYn;
	}

	public void setPlusMEndYn(String plusMEndYn) {
		this.plusMEndYn = plusMEndYn;
	}

	@Override
	public String toString() {
		return "포인트로 기부해요 [글번호=" + plusMNo + ", 제목=" + plusMTitle + ", 내용=" + plusMContent + ", 작성자=" + plusMWriter
				+ ", 기부처=" + plusMDntPlace + ", 목표금액=" + plusMGoalAmount + ", 누적금액=" + plusMCurAmount + ", 파일이름="
				+ plusMFilename + ", 파일리네임=" + plusMFilerename + ", 파일경로=" + plusMFilepath + ", 시작일=" + plusMStartDate
				+ ", 종료일=" + plusMEndDate + ", 작성일=" + plusMCreateDate + ", 종료여부=" + plusMEndYn + "]";
	}

}
