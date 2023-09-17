package kr.co.chazm.plusmember.domain;

public class PlusMLike {

	private int likeNo;
	private int refPlusMNo;
	private String memberId;

	public PlusMLike() {
		super();
	}

	public PlusMLike(int refPlusMNo, String memberId) {
		super();
		this.refPlusMNo = refPlusMNo;
		this.memberId = memberId;
	}

	public int getLikeNo() {
		return likeNo;
	}

	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
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

	@Override
	public String toString() {
		return "기부좋아요 [좋아요번호=" + likeNo + ", 글번호=" + refPlusMNo + ", 아이디=" + memberId + "]";
	}

}
