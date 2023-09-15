package kr.co.chazm.lost.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.lost.domain.LostBoard;
import kr.co.chazm.lost.domain.PageInfo;
import kr.co.chazm.lost.service.LostBoardService;
import kr.co.chazm.lost.store.LostBoardStore;

@Service
public class LostBoardServiceImpl implements LostBoardService{
	@Autowired
	private SqlSession session;
	@Autowired
	private LostBoardStore lStore;
	
	@Override
	public Integer getListCount() {
		Integer result = lStore.getListCount(session);
		return result;
	}

	@Override
	public List<LostBoard> selectLostBoardList(PageInfo pInfo) {
		List<LostBoard>lList = lStore.selectLostBoardList(session, pInfo);
		return lList;
	}

	@Override
	public Integer insertLostBoard(LostBoard lostBoard) {
		Integer result = lStore.insertLostBoard(session, lostBoard);
		return result;
	}

	@Override
	public LostBoard selectOneByNo(Integer lostNo) {
		LostBoard lostBoard = lStore.selectOneByNo(session, lostNo);
		return lostBoard;
	}
	
	
	
	

}
