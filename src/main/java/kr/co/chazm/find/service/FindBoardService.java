package kr.co.chazm.find.service;

import java.util.List;
import java.util.Map;

import kr.co.chazm.find.domain.FindBoard;
import kr.co.chazm.find.domain.FindLike;
import kr.co.chazm.find.domain.PageInfo;

public interface FindBoardService {
	
	/**
	 * 습득물 게시판 게시글 등록 Service
	 * @param findBoard
	 * @return int 
	 */
	int insertFindBoard(FindBoard findBoard);
	
	/**
	 * 습득물 게시판 게시글 수정 Service
	 * @param findBoard
	 * @return int
	 */
	int updateFindBoard(FindBoard findBoard);
	
	/**
	 * 습득물 게시판 게시글 삭제 Service
	 * @param finddNo
	 * @return int 
	 */
	int deleteFindBoard(int findNo);

	/**
	 * 습득물 게시판 게시글 상세 조회 Service
	 * @param findNo
	 * @return FindBoard
	 */
	FindBoard selectFindBoardByNo(int findNo);

	/**
	 * 습득물 게시판 게시글 전체 갯수 조회 Service
	 * @return int
	 */
	int getListCount();

	/**
	 * 습득물 게시판 게시글 전체 조회 Service
	 * @param pInfo
	 * @return List
	 */
	List<FindBoard> selectFindBoardList(PageInfo pInfo);

	/**
	 * 습득물 게시판 게시글 검색 갯수 조회 Service
	 * @param paramMap
	 * @return int
	 */
	int getListCount(Map<String, String> paramMap);

	/**
	 * 습득물 게시판 게시글 키워드로 검색 Service
	 * @param pInfo
	 * @param paramMap
	 * @return List
	 */
	List<FindBoard> searchFindByKeyword(PageInfo pInfo, Map<String, String> paramMap);

	/**
	 * 습득물 게시판 게시글 좋아요 등록 Service
	 * @param findLike
	 * @return int
	 */
	int insertFineLike(FindLike findLike);

	/**
	 * 습득물 게시판 게시글 좋아요 삭제 Service
	 * @param findLike
	 * @return int
	 */
	int deleteFindLike(FindLike findLike);

	/**
	 * 습득물 게시판 게시글 좋아요 조회 Service
	 * @param findLike
	 * @return int
	 */
	int selectLikeYn(FindLike findLike);

	/**
	 * 습득물 게시판 게시글 인계완료 처리 Service
	 * @param findNo
	 * @return int
	 */
	int findComplete(int findNo);

	/**
	 * 습득물 게시판 게시글 삭제로 인한 좋아요 삭제 Service
	 * @param findNo
	 * @return int 
	 */
	int deleteFindBoardLike(int findNo);

	/**
	 * 습득물 게시판 게시글 좋아요 갯수 조회 Service
	 * @param findNo
	 * @return int
	 */
	int getLikeCont(int findNo);

	/**
	 * 습득물 게시판 게시글 작성 포인트 지급(포인트) Service
	 * @param memberId
	 * @return int
	 */
	int insertPoint(Map<String, Object> pMap);

	/**
	 * 습득물 게시판 게시글 작성 포인트 지급(멤버) Service
	 * @param memberId
	 * @return int
	 */
	int updateMemberPoint(Map<String, Object> pMap);
	
	
}