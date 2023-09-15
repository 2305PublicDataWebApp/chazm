package kr.co.chazm.plusadmin.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.plusadmin.domain.PageInfo;
import kr.co.chazm.plusadmin.domain.PlusABoard;

public interface PlusAStore {

	/**
	 * 찾음이 기부해요 게시글 등록 Store
	 * @param sqlSession
	 * @param plusABoard
	 * @return int
	 */
	int insertPlusABoard(SqlSession sqlSession, PlusABoard plusABoard);
	
	/**
	 * 찾음이 기부해요 게시글 수정 Store
	 * @param sqlSession
	 * @param plusABoard
	 * @return int
	 */
	int updatePlusABoard(SqlSession sqlSession, PlusABoard plusABoard);

	/**
	 * 찾음이 기부해요 게시글 삭제 Store
	 * @param sqlSession
	 * @param plusANo
	 * @return int
	 */
	int deletePlusABoard(SqlSession sqlSession, int plusANo);

	/**
	 * 찾음이 기부해요 게시글 전체 갯수 조회 Store
	 * @param sqlSession
	 * @return int
	 */
	int getListCount(SqlSession sqlSession);
	
	/**
	 * 찾음이 기부해요 게시글 전체 리스트 조회 Store
	 * @param sqlSession
	 * @param pInfo
	 * @return List<PlusABoard>
	 */
	List<PlusABoard> selectPlusABoardList(SqlSession sqlSession, PageInfo pInfo);

	/**
	 * 찾음이 기부해요 번호로 조회 Store
	 * @param sqlSession
	 * @param plusANo
	 * @return PlusABoard
	 */
	PlusABoard selectOneByNo(SqlSession sqlSession, int plusANo);


}
