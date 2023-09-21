package kr.co.chazm.member.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.member.domain.Member;
import kr.co.chazm.member.domain.Point;
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

	@Override
	public int updateMemberPoint(String memberId) {
		int result = mStore.updateMemberPoint(sqlSession, memberId);
		return result;
	}

	@Override
	public int totalPointsById(String memberId) {
		int result = mStore.totalPointsById(sqlSession, memberId);
		return result;
	}

	@Override
	public List<Point> showPointById(String memberId) {
		List<Point> gePointList = mStore.showPointById(sqlSession, memberId);
		return gePointList;
	}

	@Override
	public int totalUsePointById(String memberId) {
		int result = mStore.totalUsePointById(sqlSession, memberId);
		return result;
	}

	@Override
	public int updatePwByIdAndEmail(Member member) {
		int result = mStore.updatePwByIdAndEmail(sqlSession, member);
		return result;
	}

	@Override
	public int updatePwByIdAndPhone(Member member) {
		int result = mStore.updatePwByIdAndPhone(sqlSession, member);
		return result;
	}
	

}
