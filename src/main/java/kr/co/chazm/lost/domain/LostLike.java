package kr.co.chazm.lost.domain;

public class LostLike {
	private int likeNo;
	private int refLostNo;
	private String memberId;
	
	
	
	
	public int getLikeNo() {
		return likeNo;
	}
	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
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
		return "LostLike [likeNo=" + likeNo + ", refLostNo=" + refLostNo + ", memberId=" + memberId + "]";
	}
	
	

}
