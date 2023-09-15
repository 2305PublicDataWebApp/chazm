package kr.co.chazm.find.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.find.domain.FindBoard;
import kr.co.chazm.find.service.FindBoardService;
import kr.co.chazm.find.store.FindBoardStore;

@Service
public class FindBoardServiceImpl implements FindBoardService{
	
	@Autowired
	private FindBoardStore fBStore;
	
	@Autowired
	private SqlSession session;

	@Override
	public int insertFindBoard(FindBoard findBoard) {
		int result = fBStore.insertFindBoard(session, findBoard);
		return result;
	}

	@Override
	public int updateFindBoard(FindBoard findBoard) {
		int result = fBStore.updateFindBoard(session, findBoard);
		return result;
	}

	@Override
	public int deleteFindBoard(int findNo) {
		int result = fBStore.deleteFindBoard(session, findNo);
		return result;
	}

	@Override
	public FindBoard selectFindBoardByNo(int findNo) {
		FindBoard findBoard = fBStore.selectFindBoardByNo(session, findNo);
		return findBoard;
	}
}
