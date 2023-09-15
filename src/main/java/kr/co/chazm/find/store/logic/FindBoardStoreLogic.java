package kr.co.chazm.find.store.logic;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.find.domain.FindBoard;
import kr.co.chazm.find.store.FindBoardStore;

@Repository
public class FindBoardStoreLogic implements FindBoardStore{

	@Override
	public int insertFindBoard(SqlSession session, FindBoard findBoard) {
		int result = session.insert("FindBoardMapper.insertFindBoard", findBoard);
		return result;
	}

	@Override
	public int updateFindBoard(SqlSession session, FindBoard findBoard) {
		int result = session.update("FindBoardMapper.updateFindBoard", findBoard);
		return result;
	}

	@Override
	public int deleteFindBoard(SqlSession session, int findNo) {
		int result = session.insert("FindBoardMapper.deleteFindBoard", findNo);
		return result;
	}

	@Override
	public FindBoard selectFindBoardByNo(SqlSession session, int findNo) {
		FindBoard findBoard = session.selectOne("FindBoardMapper.selectFindBoardByNo", findNo);
		return findBoard;
	}
	
	
}
