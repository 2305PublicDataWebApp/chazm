package kr.co.chazm.member.store;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.member.domain.Member;

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

}
