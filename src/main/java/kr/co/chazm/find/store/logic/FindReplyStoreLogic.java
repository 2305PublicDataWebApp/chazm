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
	public int getListCount(SqlSession sqlSession, int findNo) {
		int result = sqlSession.selectOne("FindReplyMapper.getListCount", findNo);
		return result;
	}

	@Override
	public List<FindReply> selectFindReplyList(SqlSession sqlSession, PageInfo pInfo, int findNo) {
		int limit = pInfo.getRecordCountPerPage();
		int currentPage = pInfo.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<FindReply> fRList = sqlSession.selectList("FindReplyMapper.selectFindReplyList", findNo, rowBounds);
		return fRList;
	}
	
	
	@Override
	public List<FindReply> selectFindReReplyList(SqlSession sqlSession, PageInfo pInfo, int findNo) {
		int limit = pInfo.getRecordCountPerPage();
		int currentPage = pInfo.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<FindReply> fRList = sqlSession.selectList("FindReplyMapper.selectFindReReplyList", findNo, rowBounds);
		return fRList;
	}

}