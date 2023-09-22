package kr.co.chazm.lost.service;

import java.util.List;
import java.util.Map;

import kr.co.chazm.find.domain.FindBoard;
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

	/**
	 * 분실물게시판 글수정페이지 이동
	 * @param lostNo
	 * @return
	 */
	public LostBoard selectOneByNo(Integer lostNo);

	/**
	 * 분실물게시판 글수정
	 * @param lostBoard
	 * @return
	 */
	public Integer updateLostBoard(LostBoard lostBoard);

	/**
	 * 분실물게시판 글 삭제 
	 * @param lostBoard
	 * @return
	 */
	public Integer deleteLostBoard(LostBoard lostBoard);

	/**
	 * 분실물게시판 검색 총게시물수 
	 * @param searchMap
	 * @return
	 */
	public Integer searchGetListCount(Map<String, String> searchMap);

	/**
	 * 분실물게시판 검색 
	 * @param pInfo
	 * @param searchMap
	 * @return
	 */
	public List<LostBoard> searchLostByKeyword(PageInfo pInfo, Map<String, String> searchMap);

	
	//좋아요//////////////////////////////////////////////////////////////////////////
	
	/**
	 * 좋아요 여부
	 * @param lostLike
	 * @return
	 */
	public Integer checkLikeYn(LostLike lostLike);
	
	/**
	 * 좋아요 등록 
	 * @param lostLike
	 * @return
	 */
	public Integer insertLostLike(LostLike lostLike);

	/**
	 * 좋아요 취소
	 * @param lostLike
	 * @return
	 */
	public int deleteLostLike(LostLike lostLike);

	//통합검색//////////////////////////////////////////////////////////////////////////
	/**
	 * 통합검색 습득물 총게시물수 
	 * @param totalSearchKeyword
	 * @return
	 */
	public Integer totalSearchFindCount(String totalSearchKeyword);

	/**
	 *  통합검색 습득물 
	 * @param fPInfo
	 * @param totalSearchKeyword
	 * @return
	 */
	public List<FindBoard> totalSearchFindByKeyword(PageInfo fPInfo, String totalSearchKeyword);
	
	/**
	 * 통합검색 분실물 총게시물수
	 * @param totalSearchKeyword
	 * @return
	 */
	public Integer totalSearchLostCount(String totalSearchKeyword);
	
	/**
	 * 통합검색 분실물
	 * @param lPInfo
	 * @param totalSearchKeyword
	 * @return
	 */
	public List<LostBoard> totalSearchLostByKeyword(PageInfo lPInfo, String totalSearchKeyword);

//////////////////////////////////////////////////////////////////////////
	/**
	 * 마이페이지 작성 게시글 조회 Service
	 * @param memberId
	 * @return List<LostBoard>
	 */
	public List<LostBoard> showLostBoardById(String memberId);

	/**
	 * 마이페이지 작성 게시글 갯수 조회 Service
	 * @param memberId
	 * @return int
	 */
	public int countLostBoardById(String memberId);

	/**
	 * 게시글 등록시 회원 포인트 지급 Service
	 * @param memberId
	 * @return int
	 */
	public int updateMemberPoint(String memberId);

	/**
	 * 게시글 등록시 포인트 테이블 insert Service
	 * @param memberId
	 * @return int
	 */
	public int insertPoint(String memberId);




	
	






	


	

}
