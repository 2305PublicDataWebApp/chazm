package kr.co.chazm.member.store.logic;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.member.domain.Member;
import kr.co.chazm.member.store.MemberStore;

@Repository
public class MemberStoreLogic implements MemberStore {

	@Override
	public int insertIDNMember(SqlSession sqlSession, Member member) {
		int result = sqlSession.insert("MemberMapper.insertIDNMember", member);
		return result;
	}

	@Override
	public int insertCORMember(SqlSession sqlSession, Member member) {
		int result = sqlSession.insert("MemberMapper.insertCORMember", member);
		return result;
	}

	@Override
	public Member selectCheckLogin(SqlSession sqlSession, Member member) {
		Member mOne = sqlSession.selectOne("MemberMapper.selectCheckLogin", member);
		return mOne;
	}

	@Override
	public Member selectOneById(SqlSession sqlSession, String memberId) {
		Member mOne = sqlSession.selectOne("MemberMapper.selectOneById", memberId);
		return mOne;
	}

}
