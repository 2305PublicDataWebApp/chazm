package kr.co.chazm.member.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.member.domain.Member;
import kr.co.chazm.member.domain.Point;
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
	public int updateMember(SqlSession sqlSession, Member member) {
		int result = sqlSession.update("MemberMapper.updateMember", member);
		return result;
	}

	@Override
	public int updateMemberPw(SqlSession sqlSession, Member member) {
		int result = sqlSession.update("MemberMapper.updateMemberPw", member);
		return result;
	}

	@Override
	public int deleteMember(SqlSession sqlSession, Member member) {
		int result = sqlSession.update("MemberMapper.deleteMember", member);
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

	@Override
	public Member selectOneByEmail(SqlSession sqlSession, Member member) {
		Member mOne = sqlSession.selectOne("MemberMapper.selectOneByEmail", member);
		return mOne;
	}

	@Override
	public Member selectOneByPhone(SqlSession sqlSession, Member member) {
		Member mOne = sqlSession.selectOne("MemberMapper.selectOneByPhone", member);
		return mOne;
	}

	@Override
	public int selectCheckById(SqlSession sqlSession, String memberId) {
		int result = sqlSession.selectOne("MemberMapper.selectCheckById", memberId);
		return result;
	}

	@Override
	public int updateMemberPoint(SqlSession sqlSession, String memberId) {
		int result = sqlSession.update("MemberMapper.updateMemberPoint", memberId);
		return result;
	}

	@Override
	public int totalPointsById(SqlSession sqlSession, String memberId) {
		int result = sqlSession.selectOne("MemberMapper.totalPointsById", memberId);
		return result;
	}

	@Override
	public List<Point> showPointById(SqlSession sqlSession, String memberId) {
		List<Point> getPointList = sqlSession.selectList("MemberMapper.showPointById", memberId);
		return getPointList;
	}

	@Override
	public int totalUsePointById(SqlSession sqlSession, String memberId) {
		int result = sqlSession.selectOne("MemberMapper.totalUsePointById", memberId);
		return result;
	}

	@Override
	public int updatePwByIdAndEmail(SqlSession sqlSession, Member member) {
		int result = sqlSession.update("MemberMapper.updatePwByIdAndEmail", member);
		return result;
	}

	@Override
	public int updatePwByIdAndPhone(SqlSession sqlSession, Member member) {
		int result = sqlSession.update("MemberMapper.updatePwByIdAndPhone", member);
		return result;
	}
	

}
