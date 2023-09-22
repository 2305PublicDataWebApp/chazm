package kr.co.chazm.lost.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.find.domain.FindBoard;
import kr.co.chazm.lost.domain.LostBoard;
import kr.co.chazm.lost.domain.LostLike;
import kr.co.chazm.lost.domain.PageInfo;

public interface LostBoardStore {
	/**
	 * 분실물 리스트 페이지네이션
	 * @param session
	 * @return
	 */
	public Integer getListCount(SqlSession session);

	/**
	 * 분실물게시판 글 목록조회
	 * @param session
	 * @param pInfo
	 * @return
	 */
	public List<LostBoard> selectLostBoardList(SqlSession session, PageInfo pInfo);

	/**
	 * 분실물 등록하기
	 * @param session
	 * @param lostBoard
	 * @return
	 */
	public Integer insertLostBoard(SqlSession session, LostBoard lostBoard);

	/**
	 * 분실물게시판 글수정페이지 이동
	 * @param session
	 * @param lostNo
	 * @return
	 */
	public LostBoard selectOneByNo(SqlSession session, Integer lostNo);

	/**
	 * 분실물게시판 글수정
	 * @param session
	 * @param lostBoard
	 * @return
	 */
	public Integer updateLostBoard(SqlSession session, LostBoard lostBoard);

	/**
	 * 분실물게시판 글 삭제
	 * @param session
	 * @param lostBoard
	 * @return
	 */
	public Integer deleteLostBoard(SqlSession session, LostBoard lostBoard);

	/**
	 * 분실물게시판 검색 총게시물수
	 * @param session
	 * @param searchMap
	 * @return
	 */
	public Integer searchGetListCount(SqlSession session, Map<String, String> searchMap);

	/**
	 * 분실물게시판 검색 
	 * @param session
	 * @param pInfo
	 * @param searchMap
	 * @return
	 */
	public List<LostBoard> searchLostByKeyword(SqlSession session, PageInfo pInfo, Map<String, String> searchMap);

	
//좋아요//////////////////////////////////////////////////////////////////
	/**
	 * 좋아요 여부
	 * @param session
	 * @param lostLike
	 * @return
	 */
	public Integer checkLikeYn(SqlSession session, LostLike lostLike);
	
	/**
	 * 좋아요 등록 
	 * @param session
	 * @param lostLike
	 * @return
	 */
	public Integer insertLostLike(SqlSession session, LostLike lostLike);

	/**
	 * 좋아요 취소
	 * @param session
	 * @param lostLike
	 * @return
	 */
	public Integer deleteLostLike(SqlSession session, LostLike lostLike);
	
//통합검색//////////////////////////////////////////////////////////////////
	/**
	 * 통합검색 습득물 총게시물수 
	 * @param session
	 * @param totalSearchKeyword
	 * @return
	 */
	public Integer totalSearchFindCount(SqlSession session, String totalSearchKeyword);

	/**
	 * 통합검색 습득물
	 * @param session
	 * @param fPInfo
	 * @param totalSearchKeyword
	 * @return
	 */
	public List<FindBoard> totalSearchFindByKeyword(SqlSession session, PageInfo fPInfo, String totalSearchKeyword);
	
	/**
	 * 통합검색 분실물 총게시물수
	 * @param session
	 * @param totalSearchKeyword
	 * @return
	 */
	public Integer totalSearchLostCount(SqlSession session, String totalSearchKeyword);

	/**
	 * 통합검색 분실물
	 * @param session
	 * @param lPInfo
	 * @param totalSearchKeyword
	 * @return
	 */
	public List<LostBoard> totalSearchLostByKeyword(SqlSession session, PageInfo lPInfo, String totalSearchKeyword);
	
	
//////////////////////////////////////////////////////////////////
	/**
	 * 마이페이지 작성 게시글(분실물 게시판) 조회 Store
	 * @param session
	 * @param memberId
	 * @return
	 */
	public List<LostBoard> showLostBoardById(SqlSession session, String memberId);

	/**
	 * 마이페이지 작성 게시글(분실물 게시판) 갯수 Store
	 * @param session
	 * @param memberId
	 * @return
	 */
	public int countLostBoardById(SqlSession session, String memberId);

	/**
	 * 게시글 등록시 회원 포인트 지급 Store
	 * @param session
	 * @param memberId
	 * @return int
	 */
	public int updateMemberPoint(SqlSession session, String memberId);

	/**
	 * 게시글 등록시 포인트 테이블 insert Store
	 * @param session
	 * @param memberId
	 * @return int
	 */
	public int insertPoint(SqlSession session, String memberId);







	

	
	
	
	
	

}
