package kr.co.chazm.find.store;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.find.domain.FindBoard;

public interface FindBoardStore {

	/**
	 * 습득물 게시판 게시글 등록 Store
	 * @param session
	 * @param findBoard
	 * @return int
	 */
	int insertFindBoard(SqlSession session, FindBoard findBoard);

	/**
	 * 습득물 게시판 게시글 수정 Store
	 * @param session
	 * @param findBoard
	 * @return int
	 */
	int updateFindBoard(SqlSession session, FindBoard findBoard);

	/**
	 * 습득물 게시판 게시글 삭제 Store
	 * @param session
	 * @param finddNo
	 * @return int
	 */
	int deleteFindBoard(SqlSession session, int findNo);

	/**
	 * 습득물 게시판 게시글 상세 조회 Store
	 * @param session
	 * @param findNo
	 * @return FindBoard
	 */
	FindBoard selectFindBoardByNo(SqlSession session, int findNo);

}