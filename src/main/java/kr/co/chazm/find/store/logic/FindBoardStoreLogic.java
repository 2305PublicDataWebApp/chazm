package kr.co.chazm.find.store.logic;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.find.domain.FindBoard;
import kr.co.chazm.find.domain.FindLike;
import kr.co.chazm.find.domain.PageInfo;
import kr.co.chazm.find.store.FindBoardStore;

@Repository
public class FindBoardStoreLogic implements FindBoardStore{

	@Override
	public int insertFindBoard(SqlSession sqlSession, FindBoard findBoard) {
		int result = sqlSession.insert("FindBoardMapper.insertFindBoard", findBoard);
		return result;
	}

	@Override
	public int updateFindBoard(SqlSession sqlSession, FindBoard findBoard) {
		int result = sqlSession.update("FindBoardMapper.updateFindBoard", findBoard);
		return result;
	}

	@Override
	public int deleteFindBoard(SqlSession sqlSession, int findNo) {
		int result = sqlSession.insert("FindBoardMapper.deleteFindBoard", findNo);
		return result;
	}

	@Override
	public FindBoard selectFindBoardByNo(SqlSession sqlSession, int findNo) {
		FindBoard findBoard = sqlSession.selectOne("FindBoardMapper.selectFindBoardByNo", findNo);
		return findBoard;
	}

	@Override
	public int getListCount(SqlSession sqlSession) {
		int result = sqlSession.selectOne("FindBoardMapper.getTotalCount");
		return result;
	}

	@Override
	public List<FindBoard> selectFindBoardList(SqlSession sqlSession, PageInfo pInfo) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage()-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<FindBoard> fBList = sqlSession.selectList("FindBoardMapper.selectFindBoardList", null, rowBounds);
		return fBList;
	}

	@Override
	public int getListCount(SqlSession sqlSession, Map<String, String> paramMap) {
		int result = sqlSession.selectOne("FindBoardMapper.searchFindByKeywordCount", paramMap);
		return result;
	}

	@Override
	public List<FindBoard> searchFindByKeyword(SqlSession sqlSession, PageInfo pInfo, Map<String, String> paramMap) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage()-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<FindBoard> sFList = sqlSession.selectList("FindBoardMapper.searchFindByKeyword", paramMap, rowBounds);
		return sFList;
	}

	@Override
	public int insertFindLike(SqlSession sqlSession, FindLike findLike) {
		int result = sqlSession.insert("FindLikeMapper.insertFindLike", findLike);
		return result;
	}

	@Override
	public int deleteFindLike(SqlSession sqlSession, FindLike findLike) {
		int result = sqlSession.delete("FindLikeMapper.deleteFindLike", findLike);
		return result;	
	}

	@Override
	public int deleteFindBoardLike(SqlSession sqlSession, int findNo) {
		int result = sqlSession.insert("FindLikeMapper.deleteFindBoardLike", findNo);
		return result;
	}

	@Override
	public int selectLikeYn(SqlSession sqlSession, FindLike findLike) {
		int result = sqlSession.selectOne("FindLikeMapper.selectLikeYn", findLike);
		return result;
	}

	@Override
	public int findComplete(SqlSession sqlSession, int findNo) {
		int result = sqlSession.update("FindBoardMapper.findComplete", findNo);
		return result;
	}

	@Override
	public int getLikeCont(SqlSession sqlSession, int findNo) {
		int result = sqlSession.selectOne("FindLikeMapper.getLikeCont", findNo);
		return result;
	}

	@Override
	public int insertPoint(SqlSession sqlSession, Map<String, Object> pMap) {
		int result = sqlSession.insert("FindBoardMapper.insertPoint", pMap);
		return result;
	}

	@Override
	public int updateMemberPoint(SqlSession sqlSession, Map<String, Object> pMap) {
		int result = sqlSession.update("FindBoardMapper.updateMemberPoint", pMap);
		return result;
	}
	
	@Override
	public List<FindBoard> showFindBoardById(SqlSession sqlSession, String memberId) {
		List<FindBoard> getPosts = sqlSession.selectList("FindBoardMapper.showFindBoardById", memberId);
		return getPosts;
	}

	@Override
	public int countFindBoardById(SqlSession sqlSession, String memberId) {
		int result = sqlSession.selectOne("FindBoardMapper.countFindBoardById", memberId);
		return result;
	}
	
}