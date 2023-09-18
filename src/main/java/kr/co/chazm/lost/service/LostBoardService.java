package kr.co.chazm.lost.service;

import java.util.List;
import java.util.Map;

import kr.co.chazm.lost.domain.LostBoard;
import kr.co.chazm.lost.domain.LostLike;
import kr.co.chazm.lost.domain.PageInfo;

public interface LostBoardService {

	/**
	 * 분실물 리스트 페이지네이션
	 * @return
	 */
	public Integer getListCount();
	
	/**
	 * 분실물게시판 글 목록조회
	 * @param pInfo
	 * @return
	 */
	public List<LostBoard> selectLostBoardList(PageInfo pInfo);

	/**
	 * 분실물 등록하기
	 * @param lostBoard
	 * @return
	 */
	public Integer insertLostBoard(LostBoard lostBoard);

	public LostBoard selectOneByNo(Integer lostNo);

	public Integer updateLostBoard(LostBoard lostBoard);

	public Integer deleteLostBoard(LostBoard lostBoard);

	public Integer searchGetListCount(Map<String, Object> searchMap);

	public List<LostBoard> searchLostByKeyword(PageInfo pInfo, Map<String, Object> searchMap);

	
	//좋아요//////////////////////////////////////////////////////////////////////////
	

	public Integer pushLostLike(LostLike lostLike);

	public Integer deleteLostLike(LostLike lostLike);

	

}
