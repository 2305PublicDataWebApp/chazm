package kr.co.chazm.member.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.member.domain.Member;
import kr.co.chazm.member.service.MemberService;
import kr.co.chazm.member.store.MemberStore;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberStore mStore;
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertIDNMember(Member member) {
		int result = mStore.insertIDNMember(sqlSession, member);
		return result;
	}

	@Override
	public int insertCORMember(Member member) {
		int result = mStore.insertCORMember(sqlSession, member);
		return result;
	}

	@Override
	public int updateMember(Member member) {
		int result = mStore.updateMember(sqlSession, member);
		return result;
	}

	@Override
	public int updateMemberPw(Member member) {
		int result = mStore.updateMemberPw(sqlSession, member);
		return result;
	}

	@Override
	public int deleteMember(Member member) {
		int result = mStore.deleteMember(sqlSession, member);
		return result;
	}

	@Override
	public Member selectCheckLogin(Member member) {
		Member mOne = mStore.selectCheckLogin(sqlSession, member);
		return mOne;
	}

	@Override
	public Member selectOneById(String memberId) {
		Member mOne = mStore.selectOneById(sqlSession, memberId);
		return mOne;
	}

	@Override
	public Member selectOneByEmail(Member member) {
		Member mOne = mStore.selectOneByEmail(sqlSession, member);
		return mOne;
	}

	@Override
	public Member selectOneByPhone(Member member) {
		Member mOne = mStore.selectOneByPhone(sqlSession, member);
		return mOne;
	}

	@Override
	public int selectCheckById(String memberId) {
		int result = mStore.selectCheckById(sqlSession, memberId);
		return result;
	}

}
