package kr.co.chazm.lost.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.lost.domain.LostBoard;
import kr.co.chazm.lost.domain.LostLike;
import kr.co.chazm.lost.domain.PageInfo;
import kr.co.chazm.lost.service.LostBoardService;
import kr.co.chazm.lost.store.LostBoardStore;

@Service
public class LostBoardServiceImpl implements LostBoardService{
	@Autowired
	private SqlSession session;
	@Autowired
	private LostBoardStore lostBoardStore;
	
	@Override
	public Integer getListCount() {
		Integer result = lostBoardStore.getListCount(session);
		return result;
	}

	@Override
	public List<LostBoard> selectLostBoardList(PageInfo pInfo) {
		List<LostBoard>lList = lostBoardStore.selectLostBoardList(session, pInfo);
		return lList;
	}

	@Override
	public Integer insertLostBoard(LostBoard lostBoard) {
		Integer result = lostBoardStore.insertLostBoard(session, lostBoard);
		return result;
	}

	@Override
	public LostBoard selectOneByNo(Integer lostNo) {
		LostBoard lostBoard = lostBoardStore.selectOneByNo(session, lostNo);
		return lostBoard;
	}

	@Override
	public Integer updateLostBoard(LostBoard lostBoard) {
		Integer result = lostBoardStore.updateLostBoard(session, lostBoard);
		return result;
	}

	@Override
	public Integer deleteLostBoard(LostBoard lostBoard) {
		Integer result = lostBoardStore.deleteLostBoard(session, lostBoard);
		return result;
	}

	@Override
	public Integer searchGetListCount(Map<String, Object> searchMap) {
		Integer result = lostBoardStore.searchGetListCount(session, searchMap);
		return result;
	}

	@Override
	public List<LostBoard> searchLostByKeyword(PageInfo pInfo, Map<String, Object> searchMap) {
		List<LostBoard>searchLostList = lostBoardStore.searchLostByKeyword(session, pInfo, searchMap);
		return searchLostList;
	}
	
//좋아요////////////////////////////////////////////////////////////
	@Override
	public Integer pushLostLike(LostLike lostLike) {
		Integer result = lostBoardStore.pushLostLike(session, lostLike);
		return result;
	}

	@Override
	public Integer deleteLostLike(LostLike lostLike) {
		Integer result = lostBoardStore.deleteLostLike(session, lostLike);
		return result;
	}

	
	
	
	
	

}
