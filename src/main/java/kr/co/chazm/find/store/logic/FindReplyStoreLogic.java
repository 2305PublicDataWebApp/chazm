package kr.co.chazm.find.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.find.domain.FindReply;
import kr.co.chazm.find.domain.PageInfo;
import kr.co.chazm.find.store.FindReplyStore;

@Repository
public class FindReplyStoreLogic implements FindReplyStore{

	@Override
	public int insertFindReply(SqlSession sqlSession, FindReply findReply) {
		int result = sqlSession.insert("FindReplyMapper.insertFindReply", findReply);
		return result;
	}

	@Override
	public int updateFindReply(SqlSession sqlSession, FindReply findReply) {
		int result = sqlSession.update("FindReplyMapper.updateFindReply", findReply);
		return result;
	}

	@Override
	public int deleteFindReply(SqlSession sqlSession, int findRNo) {
		int result = sqlSession.update("FindReplyMapper.deleteFindReply", findRNo);
		return result;
	}
	
	
	@Override
	public int deleteFindBoardReply(SqlSession sqlSession, int findNo) {
		int result = sqlSession.update("FindReplyMapper.deleteFindBoardReply", findNo);
		return result;
	}

	@Override
	public int getReplyCount(SqlSession sqlSession, int findNo) {
		int result = sqlSession.selectOne("FindReplyMapper.getReplyCount", findNo);
		return result;
	}

	@Override
	public List<FindReply> selectFindReplyList(SqlSession sqlSession, int findNo) {
		List<FindReply> fRList = sqlSession.selectList("FindReplyMapper.selectFindReplyList", findNo);
		return fRList;
	}
	
	
	@Override
	public List<FindReply> selectFindReReplyList(SqlSession sqlSession, int findNo) {
		List<FindReply> fRList = sqlSession.selectList("FindReplyMapper.selectFindReReplyList", findNo);
		return fRList;
	}

}