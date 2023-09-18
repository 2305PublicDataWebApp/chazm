package kr.co.chazm.find.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.find.domain.FindBoard;
import kr.co.chazm.find.domain.FindLike;
import kr.co.chazm.find.domain.PageInfo;

public interface FindBoardStore {

	/**
	 * 습득물 게시판 게시글 등록 Store
	 * @param session
	 * @param findBoard
	 * @return int
	 */
	int insertFindBoard(SqlSession sqlSession, FindBoard findBoard);

	/**
	 * 습득물 게시판 게시글 수정 Store
	 * @param session
	 * @param findBoard
	 * @return int
	 */
	int updateFindBoard(SqlSession sqlSession, FindBoard findBoard);

	/**
	 * 습득물 게시판 게시글 삭제 Store
	 * @param session
	 * @param finddNo
	 * @return int
	 */
	int deleteFindBoard(SqlSession sqlSession, int findNo);

	/**
	 * 습득물 게시판 게시글 상세 조회 Store
	 * @param session
	 * @param findNo
	 * @return FindBoard
	 */
	FindBoard selectFindBoardByNo(SqlSession sqlSession, int findNo);

	/**
	 * 습득물 게시판 게시글 전체 갯수 조회 Store
	 * @param session
	 * @return int
	 */
	int getListCount(SqlSession sqlSession);

	/**
	 * 습득물 게시판 게시글 전체 조회 Store
	 * @param session
	 * @param pInfo
	 * @return List
	 */
	List<FindBoard> selectFindBoardList(SqlSession sqlSession, PageInfo pInfo);

	/**
	 * 습득물 게시판 게시글 검색 갯수 조회 Store
	 * @param session
	 * @param paramMap
	 * @return int
	 */
	int getListCount(SqlSession sqlSession, Map<String, String> paramMap);

	/**
	 * 습득물 게시판 게시글 키워드로 검색 Store
	 * @param session
	 * @param pInfo
	 * @param paramMap
	 * @return List
	 */
	List<FindBoard> searchFindByKeyword(SqlSession sqlSession, PageInfo pInfo, Map<String, String> paramMap);

	/**
	 * 습득물 게시판 게시글 좋아요 등록 Store
	 * @param sqlSession
	 * @param findLike
	 * @return int
	 */
	int insertFindLike(SqlSession sqlSession, FindLike findLike);

	/**
	 * 습득물 게시판 게시글 좋아요 삭제 Store
	 * @param sqlSession
	 * @param findLike
	 * @return
	 */
	int deleteFindLike(SqlSession sqlSession, FindLike findLike);

	/**
	 * 습득물 게시판 게시글 좋아요 조회 Store
	 * @param sqlSession
	 * @param findLike
	 * @return int
	 */
	int selectLikeYn(SqlSession sqlSession, FindLike findLike);

	/**
	 * 습득물 게시판 게시글 인계완료 처리 Store
	 * @param sqlSession
	 * @param findNo
	 * @return
	 */
	int findComplete(SqlSession sqlSession, int findNo);

}