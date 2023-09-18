package kr.co.chazm.member.service;

import kr.co.chazm.member.domain.Member;

public interface MemberService {

	/**
	 * 회원가입(개인 회원) Service 
	 * @param member
	 * @return int;
	 */
	int insertIDNMember(Member member);

	/**
	 * 회원가입(기업회원) Service
	 * @param member
	 * @return int
	 */
	int insertCORMember(Member member);

	/**
	 * 회원정보 수정 Service
	 * @param member
	 * @return int
	 */
	int updateMember(Member member);

	/**
	 * 비밀번호 변경 Service
	 * @param member
	 * @return
	 */
	int updateMemberPw(Member member);

	/**
	 * 회원정보 탈퇴
	 * @param member
	 * @return
	 */
	int deleteMember(Member member);

	/**
	 * 로그인 Service
	 * @param member 
	 * @return member
	 */
	Member selectCheckLogin(Member member);

	/**
	 * 회원 조회 Service
	 * @param memberId
	 * @return member
	 */
	Member selectOneById(String memberId);

	/**
	 * 이메일로 아이디 찾기 Service
	 * @param member
	 * @return member
	 */
	Member selectOneByEmail(Member member);

	/**
	 * 번호로 아이디 찾기 Service
	 * @param member
	 * @return member
	 */
	Member selectOneByPhone(Member member);

	/**
	 * 아이디 중복 체크 Service
	 * @param memberId
	 * @return int
	 */
	int selectCheckById(String memberId);

}
