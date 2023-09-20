package kr.co.chazm.lost.domain;

public class LostLike {
	private int lostLikeNo;
	private int refLostNo;
	private String memberId;
	
	public LostLike() {}
	
	
	public LostLike(int refLostNo, String memberId) {
		super();
		this.refLostNo = refLostNo;
		this.memberId = memberId;
	}

	

	public int getLostLikeNo() {
		return lostLikeNo;
	}
	public void setLostLikeNo(int lostLikeNo) {
		this.lostLikeNo = lostLikeNo;
	}
	public int getRefLostNo() {
		return refLostNo;
	}
	public void setRefLostNo(int refLostNo) {
		this.refLostNo = refLostNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	@Override
	public String toString() {
		return "분실물좋아요 [좋아요번호=" + lostLikeNo + ", 게시판번호=" + refLostNo + ", 회원아이디=" + memberId + "]";
	}
	
	

}
