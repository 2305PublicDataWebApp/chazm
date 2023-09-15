package kr.co.chazm.find.domain;

public class FindLike {
	private int likeNo;
	private int refFindNo;
	private String memberId;
	
	public int getLikeNo() {
		return likeNo;
	}
	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
	}
	public int getRefFindNo() {
		return refFindNo;
	}
	public void setRefFindNo(int refFindNo) {
		this.refFindNo = refFindNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	@Override
	public String toString() {
		return "좋아요 [좋아요번호=" + likeNo + ", 글번호=" + refFindNo + ", 아이디=" + memberId + "]";
	}
	
	
}
