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

}
