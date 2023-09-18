package kr.co.chazm.find.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.find.domain.FindReply;
import kr.co.chazm.find.domain.PageInfo;

public interface FindReplyStore {

	/** 
	 * 습득물 게시판 댓글 등록 Store
	 * @param sqlSession
	 * @param findReply
	 * @return int 
	 */
	int insertFindReply(SqlSession sqlSession, FindReply findReply);
	
	/**
	 * 습득물 게시판 댓글 수정 Store
	 * @param sqlSession
	 * @param findReply
	 * @return int
	 */
	int updateFindReply(SqlSession sqlSession, FindReply findReply);

	/**
	 * 습득물 게시판 댓글 삭제 Store
	 * @param sqlSession
	 * @param findRNo
	 * @return int
	 */
	int deleteFindReply(SqlSession sqlSession, int findRNo);
	
	/**
	 * 습득물 게시판 댓글 전체 갯수 조회 Store
	 * @param sqlSession
	 * @param findNo
	 * @return int
	 */
	int getListCount(SqlSession sqlSession, int findNo);

	/**
	 * 습득물 게시판 댓글 리스트 조회 Store
	 * @param sqlSession
	 * @param pInfo
	 * @param findNo
	 * @return List
	 */
	List<FindReply> selectFindReplyList(SqlSession sqlSession, PageInfo pInfo, int findNo);

	/**
	 * 습득물 게시판 대댓글 리스트 조회 Store
	 * @param sqlSession
	 * @param pInfo
	 * @param findNo
	 * @return List
	 */
	List<FindReply> selectFindReReplyList(SqlSession sqlSession, PageInfo pInfo, int findNo);

}
