package kr.co.chazm.lost.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.lost.domain.LostBoard;
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


}
