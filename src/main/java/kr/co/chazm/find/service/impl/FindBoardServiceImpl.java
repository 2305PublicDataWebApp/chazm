package kr.co.chazm.find.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.find.domain.FindBoard;
import kr.co.chazm.find.domain.FindLike;
import kr.co.chazm.find.domain.PageInfo;
import kr.co.chazm.find.service.FindBoardService;
import kr.co.chazm.find.store.FindBoardStore;

@Service
public class FindBoardServiceImpl implements FindBoardService{
	
	@Autowired
	private FindBoardStore findBoardStore;
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertFindBoard(FindBoard findBoard) {
		int result = findBoardStore.insertFindBoard(sqlSession, findBoard);
		return result;
	}

	@Override
	public int updateFindBoard(FindBoard findBoard) {
		int result = findBoardStore.updateFindBoard(sqlSession, findBoard);
		return result;
	}

	@Override
	public int deleteFindBoard(int findNo) {
		int result = findBoardStore.deleteFindBoard(sqlSession, findNo);
		return result;
	}

	@Override
	public FindBoard selectFindBoardByNo(int findNo) {
		FindBoard findBoard = findBoardStore.selectFindBoardByNo(sqlSession, findNo);
		return findBoard;
	}

	@Override
	public int getListCount() {
		int result = findBoardStore.getListCount(sqlSession);
		return result;
	}

	@Override
	public List<FindBoard> selectFindBoardList(PageInfo pInfo) {
		List<FindBoard> fBList = findBoardStore.selectFindBoardList(sqlSession, pInfo);
		return fBList;
	}

	@Override
	public int getListCount(Map<String, String> paramMap) {
		int result = findBoardStore.getListCount(sqlSession, paramMap);
		return result;
	}

	@Override
	public List<FindBoard> searchFindByKeyword(PageInfo pInfo, Map<String, String> paramMap) {
		List<FindBoard> sFList = findBoardStore.searchFindByKeyword(sqlSession, pInfo, paramMap);
		return sFList;
	}

	@Override
	public int insertFineLike(FindLike findLike) {
		int result = findBoardStore.insertFindLike(sqlSession, findLike);
		return result;
	}

	@Override
	public int deleteFindLike(FindLike findLike) {
		int result = findBoardStore.deleteFindLike(sqlSession, findLike);
		return result;
	}

	@Override
	public int selectLikeYn(FindLike findLike) {
		int result = findBoardStore.selectLikeYn(sqlSession, findLike);
		return result;
	}

	@Override
	public int findComplete(int findNo) {
		int result = findBoardStore.findComplete(sqlSession, findNo);
		return result;
	}
}