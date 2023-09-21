package kr.co.chazm.member.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.member.domain.Member;
import kr.co.chazm.member.domain.Point;

public interface MemberStore {

	/**
	 * 회원가입(개인회원) Store
	 * @param sqlSession
	 * @param member
	 * @return int;
	 */
	int insertIDNMember(SqlSession sqlSession, Member member);

	/**
	 * 회원가입(기업회원) Store
	 * @param sqlSession
	 * @param member
	 * @return int;
	 */
	int insertCORMember(SqlSession sqlSession, Member member);

	/**
	 * 회원정보 수정 Store
	 * @param sqlSession
	 * @param member
	 * @return
	 */
	int updateMember(SqlSession sqlSession, Member member);

	/**
	 * 비밀번호 변경 Store
	 * @param sqlSession
	 * @param member
	 * @return int
	 */
	int updateMemberPw(SqlSession sqlSession, Member member);

	/**
	 * 회원 탈퇴 Store
	 * @param sqlSession
	 * @param member
	 * @return
	 */
	int deleteMember(SqlSession sqlSession, Member member);

	/**
	 * 로그인 Store
	 * @param sqlSession
	 * @param member
	 * @return member
	 */
	Member selectCheckLogin(SqlSession sqlSession, Member member);

	/**
	 * 회원 조회 Store
	 * @param sqlSession
	 * @param memberId
	 * @return member
	 */
	Member selectOneById(SqlSession sqlSession, String memberId);

	/**
	 * 이메일로 아이디찾기 Store
	 * @param sqlSession
	 * @param member
	 * @return
	 */
	Member selectOneByEmail(SqlSession sqlSession, Member member);

	/**
	 * 번호로 아이디찾기 Store
	 * @param sqlSession
	 * @param member
	 * @return member
	 */
	Member selectOneByPhone(SqlSession sqlSession, Member member);

	/**
	 * 아이디 중복체크 Store
	 * @param sqlSession
	 * @param memberId
	 * @return int
	 */
	int selectCheckById(SqlSession sqlSession, String memberId);

	/**
	 * 회원가입 포인트 지급 Store
	 * @param sqlSession
	 * @param memberId
	 * @return
	 */
	int updateMemberPoint(SqlSession sqlSession, String memberId);

	/**
	 * 누적 포인트 조회 Store
	 * @param sqlSession
	 * @param memberId
	 * @return
	 */
	int totalPointsById(SqlSession sqlSession, String memberId);

	/**
	 * 아이디로 포인트 내역 조회 Store
	 * @param sqlSession
	 * @param memberId
	 * @return
	 */
	List<Point> showPointById(SqlSession sqlSession, String memberId);

	/**
	 * 포인트 사용 내역 아이디로 조회 Store
	 * @param sqlSession
	 * @param memberId
	 * @return int
	 */
	int totalUsePointById(SqlSession sqlSession, String memberId);

	/**
	 * 이메일 인증 후 비밀번호 변경 Stroe 
	 * @param sqlSession
	 * @param member
	 * @return int
	 */
	int updatePwByIdAndEmail(SqlSession sqlSession, Member member);

	/**
	 * 핸드폰 인증 후 비밀번호 변경 Stroe 
	 * @param sqlSession
	 * @param member
	 * @return int
	 */
	int updatePwByIdAndPhone(SqlSession sqlSession, Member member);

}
