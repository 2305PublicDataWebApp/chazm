package kr.co.chazm.lost.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.find.domain.FindBoard;
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
	public Integer searchGetListCount(Map<String, String> searchMap) {
		Integer result = lostBoardStore.searchGetListCount(session, searchMap);
		return result;
	}

	@Override
	public List<LostBoard> searchLostByKeyword(PageInfo pInfo, Map<String, String> searchMap) {
		List<LostBoard>searchLostList = lostBoardStore.searchLostByKeyword(session, pInfo, searchMap);
		return searchLostList;
	}
	
//좋아요////////////////////////////////////////////////////////////
	@Override
	public Integer checkLikeYn(LostLike lostLike) {
		Integer result = lostBoardStore.checkLikeYn(session, lostLike);
		return result;
	}
	
	@Override
	public Integer insertLostLike(LostLike lostLike) {
		Integer result = lostBoardStore.insertLostLike(session, lostLike);
		return result;
	}

	@Override
	public int deleteLostLike(LostLike lostLike) {
		Integer result = lostBoardStore.deleteLostLike(session, lostLike);
		return result;
	}
	
//통합검색////////////////////////////////////////////////////////////	
	@Override
	public Integer totalSearchFindCount(String totalSearchKeyword) {
		Integer result = lostBoardStore.totalSearchFindCount(session, totalSearchKeyword);
		return result;
	}
	
	@Override
	public List<FindBoard> totalSearchFindByKeyword(PageInfo fPInfo, String totalSearchKeyword) {
		List<FindBoard>searchFindList = lostBoardStore.totalSearchFindByKeyword(session, fPInfo, totalSearchKeyword);
		return searchFindList;
	}
	
	@Override
	public Integer totalSearchLostCount(String totalSearchKeyword) {
		Integer result = lostBoardStore.totalSearchLostCount(session, totalSearchKeyword);
		return result;
	}

	@Override
	public List<LostBoard> totalSearchLostByKeyword(PageInfo lPInfo, String totalSearchKeyword) {
		List<LostBoard>searchLostList = lostBoardStore.totalSearchLostByKeyword(session, lPInfo, totalSearchKeyword);
		return searchLostList;
	}

	@Override
	public List<LostBoard> showLostBoardById(String memberId) {
		List<LostBoard> getPosts = lostBoardStore.showLostBoardById(session ,memberId);
		return getPosts;
	}

	@Override
	public int countLostBoardById(String memberId) {
		int result = lostBoardStore.countLostBoardById(session, memberId);
		return result;
	}

	@Override
	public int updateMemberPoint(String memberId) {
		int result = lostBoardStore.updateMemberPoint(session, memberId);
		return result;
	}

	@Override
	public int insertPoint(String memberId) {
		int result = lostBoardStore.insertPoint(session, memberId);
		return result;
	}







	

	

	
	
	
	
	

}
