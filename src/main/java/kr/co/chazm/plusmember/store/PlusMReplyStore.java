package kr.co.chazm.plusmember.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMReply;

public interface PlusMReplyStore {

	/**
	 * 포인트로 기부해요 댓글 등록 Store
	 * 
	 * @param sqlSession
	 * @param plusMReply
	 * @return int
	 */
	int insertPlusMReply(SqlSession sqlSession, PlusMReply plusMReply);

	/**
	 * 포인트로 기부해요 댓글 수정 Store
	 * 
	 * @param sqlSession
	 * @param plusMReply
	 * @return int
	 */
	int updatePlusMReply(SqlSession sqlSession, PlusMReply plusMReply);

	/**
	 * 포인트로 기부해요 댓글 삭제 Store
	 * 
	 * @param sqlSession
	 * @param plusMRNo
	 * @return int
	 */
	int deletePlusMReply(SqlSession sqlSession, int plusMRNo);

	/**
	 * 포인트로 기부해요 게시글 삭제시 댓글 함께 삭제 Store
	 * 
	 * @param plusMNo
	 * @return int
	 */
	int deleteRefPlusMReply(SqlSession sqlSession, int plusMNo);

	/**
	 * 포인트로 기부해요 게시글별 댓글 조회 Store
	 * 
	 * @param sqlSession
	 * @param pInfo 
	 * @param plusMNo
	 * @return List<PlusMReply>
	 */
	List<PlusMReply> selectPlusMReplyList(SqlSession sqlSession, PageInfo pInfo, int plusMNo);

	/**
	 * 포인트로 기부해요 게시글별 댓글 갯수 조회 Store
	 * 
	 * @param sqlSession
	 * @param plusMNo
	 * @return
	 */
	int getListCount(SqlSession sqlSession, int plusMNo);

}
