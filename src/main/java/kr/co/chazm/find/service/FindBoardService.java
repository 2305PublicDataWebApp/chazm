package kr.co.chazm.find.service;

import kr.co.chazm.find.domain.FindBoard;

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
	
}