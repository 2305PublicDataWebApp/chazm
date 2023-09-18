package kr.co.chazm.lost.store.logic;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.lost.domain.LostBoard;
import kr.co.chazm.lost.domain.LostLike;
import kr.co.chazm.lost.domain.PageInfo;
import kr.co.chazm.lost.store.LostBoardStore;

@Repository
public class LostBoardStoreLogic implements LostBoardStore {

	@Override
	public Integer getListCount(SqlSession session) {
		Integer result = session.selectOne("lostBoardMapper.getListCount");
		return result;
	}

	@Override
	public List<LostBoard> selectLostBoardList(SqlSession session, PageInfo pInfo) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage()-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<LostBoard>lList = session.selectList("lostBoardMapper.selectLostBoardList", null, rowBounds);		
		return lList;
	}

	@Override
	public Integer insertLostBoard(SqlSession session, LostBoard lostBoard) {
		Integer result = session.insert("lostBoardMapper.insertLostBoard", lostBoard);
		return result;
	}

	@Override
	public LostBoard selectOneByNo(SqlSession session, Integer lostNo) {
		LostBoard lostBoard = session.selectOne("lostBoardMapper.selectOneByNo", lostNo);
		return lostBoard;
	}

	@Override
	public Integer updateLostBoard(SqlSession session, LostBoard lostBoard) {
		Integer result = session.update("lostBoardMapper.updateLostBoard", lostBoard);
		return result;
	}

	@Override
	public Integer deleteLostBoard(SqlSession session, LostBoard lostBoard) {
		Integer result = session.update("lostBoardMapper.deleteLostBoard", lostBoard);
		return result;
	}

	@Override
	public Integer searchGetListCount(SqlSession session, Map<String, Object> searchMap) {
		Integer result = session.selectOne("lostBoardMapper.searchGetListCount",searchMap);
		return result;
	}

	@Override
	public List<LostBoard> searchLostByKeyword(SqlSession session, PageInfo pInfo, Map<String, Object> searchMap) {
		int limit = pInfo.getRecordCountPerPage();
		int offset = (pInfo.getCurrentPage()-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<LostBoard>searchLostList = session.selectList("lostBoardMapper.searchLostByKeyword", searchMap, rowBounds);		
		return searchLostList;
	}

	@Override
	public Integer pushLostLike(SqlSession session, LostLike lostLike) {
		Integer result = session.insert("LostLikeMapper.pushLostLike", lostLike);
		return result;
	}

	@Override
	public Integer deleteLostLike(SqlSession session, LostLike lostLike) {
		Integer result = session.delete("LostLikeMapper.deleteLostLike", lostLike);
		return result;
	}


}
