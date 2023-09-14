package kr.co.chazm.member.domain;

public class Member {
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberPhone;
	private String memberEmail;
	private String memberPostCode;
	private String memberAddress;
	private String memberDetailAddress;
	private int memberPoint;
	private String mStatusYn;
	private String businessNo;
	private int memberGrade;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPostCode() {
		return memberPostCode;
	}
	public void setMemberPostCode(String memberPostCode) {
		this.memberPostCode = memberPostCode;
	}
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	public String getMemberDetailAddress() {
		return memberDetailAddress;
	}
	public void setMemberDetailAddress(String memberDetailAddress) {
		this.memberDetailAddress = memberDetailAddress;
	}
	public int getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}
	public String getmStatusYn() {
		return mStatusYn;
	}
	public void setmStatusYn(String mStatusYn) {
		this.mStatusYn = mStatusYn;
	}
	public String getBusinessNo() {
		return businessNo;
	}
	public void setBusinessNo(String businessNo) {
		this.businessNo = businessNo;
	}
	public int getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(int memberGrade) {
		this.memberGrade = memberGrade;
	}
	
	@Override
	public String toString() {
		return "회원 [아이디=" + memberId + ", 비밀번호=" + memberPw + ", 이름=" + memberName
				+ ", 핸드폰번호=" + memberPhone + ", 이메일=" + memberEmail + ", 우편번호=" + memberPostCode
				+ ", 주소=" + memberAddress + ", 상세주소=" + memberDetailAddress + ", 포인트="
				+ memberPoint + ", 회원여부=" + mStatusYn + ", 사업자등록번호=" + businessNo + ", 회원등급="
				+ memberGrade + "]";
	}
	
	
}	
