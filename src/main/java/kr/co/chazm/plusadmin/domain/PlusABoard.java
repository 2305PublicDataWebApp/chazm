package kr.co.chazm.plusadmin.domain;

public class PlusABoard {

	private int plusANo;
	private String plusATitle;
	private String plusAContent;
	private String plusAWriter;
	private String plusADntPlace;
	private String plusACreateDate;
	private String plusAUpdateDate;
	private String plusAStateYn;

	public int getPlusANo() {
		return plusANo;
	}

	public void setPlusANo(int plusANo) {
		this.plusANo = plusANo;
	}

	public String getPlusATitle() {
		return plusATitle;
	}

	public void setPlusATitle(String plusATitle) {
		this.plusATitle = plusATitle;
	}

	public String getPlusAContent() {
		return plusAContent;
	}

	public void setPlusAContent(String plusAContent) {
		this.plusAContent = plusAContent;
	}

	public String getPlusAWriter() {
		return plusAWriter;
	}

	public void setPlusAWriter(String plusAWriter) {
		this.plusAWriter = plusAWriter;
	}

	public String getPlusADntPlace() {
		return plusADntPlace;
	}

	public void setPlusADntPlace(String plusADntPlace) {
		this.plusADntPlace = plusADntPlace;
	}

	public String getPlusACreateDate() {
		return plusACreateDate;
	}

	public void setPlusACreateDate(String plusACreateDate) {
		this.plusACreateDate = plusACreateDate;
	}

	public String getPlusAUpdateDate() {
		return plusAUpdateDate;
	}

	public void setPlusAUpdateDate(String plusAUpdateDate) {
		this.plusAUpdateDate = plusAUpdateDate;
	}

	public String getPlusAStateYn() {
		return plusAStateYn;
	}

	public void setPlusAStateYn(String plusAStateYn) {
		this.plusAStateYn = plusAStateYn;
	}

	@Override
	public String toString() {
		return "찾음이기부해요 [글번호=" + plusANo + ", 제목=" + plusATitle + ", 내용=" + plusAContent + ", 작성자=" + plusAWriter
				+ ", 기부처=" + plusADntPlace + ", 등록일=" + plusACreateDate + ", 수정일=" + plusAUpdateDate + ", 사용여부="
				+ plusAStateYn + "]";
	}

}
