package kr.co.chazm.member.service;

import java.util.List;

import kr.co.chazm.member.domain.Member;
import kr.co.chazm.member.domain.Point;

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

	/**
	 * 회원가입 포인트 추가 Service
	 * @param memberId
	 * @return
	 */
	int updateMemberPoint(String memberId);

	/**
	 * 회원 누적 포인트 조회 Service
	 * @param memberId
	 * @return
	 */
	int totalPointsById(String memberId);

	/**
	 * 아이디로 포인트 내역 조회 Service
	 * @param memberId
	 * @return
	 */
	List<Point> showPointById(String memberId);

	/**
	 * 총 사용한 포인트 아이디로 조회 Service
	 * @param memberId
	 * @return int
	 */
	int totalUsePointById(String memberId);

	/**
	 * 이메일 인증 후 비밀번호 변경 기능 Service
	 * @param member
	 * @return int
	 */
	int updatePwByIdAndEmail(Member member);

	/**
	 * 핸드폰 인증 후 비밀번호 변경 기능 Service
	 * @param member
	 * @return int
	 */
	int updatePwByIdAndPhone(Member member);

}
