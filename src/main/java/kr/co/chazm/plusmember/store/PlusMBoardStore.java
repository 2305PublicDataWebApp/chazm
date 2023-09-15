package kr.co.chazm.plusmember.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMBoard;

public interface PlusMBoardStore {
	
	/**
	 * 포인트로 기부해요 게시글 등록 Store
	 * @param sqlSession
	 * @param plusMBoard
	 * @return int
	 */
	int insertPlusMBoard(SqlSession sqlSession, PlusMBoard plusMBoard);

	/**
	 * 포인트로 기부해요 게시글 전체 갯수 조회 Store
	 * @param sqlSession
	 * @return
	 */
	int getListCount(SqlSession sqlSession);

	/**
	 * 포인트로 기부해요 게시글 전체 조회 Store
	 * @param sqlSession
	 * @param pInfo
	 * @return List<PlusMBoard>
	 */
	List<PlusMBoard> selectPlusMBoardList(SqlSession sqlSession, PageInfo pInfo);

}
