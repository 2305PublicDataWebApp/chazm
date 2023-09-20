package kr.co.chazm.plusmember.service;

import java.util.List;

import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMLike;
import kr.co.chazm.plusmember.domain.PlusMReply;

public interface PlusMReplyService {

	/**
	 * 포인트로 기부해요 댓글 등록 Service
	 * 
	 * @param plusMReply
	 * @return int
	 */
	int insertPlusMReply(PlusMReply plusMReply);

	/**
	 * 포인트로 기부해요 댓글 수정 Service
	 * 
	 * @param plusMReply
	 * @return int
	 */
	int updatePlusMReply(PlusMReply plusMReply);

	/**
	 * 포인트로 기부해요 댓글 삭제 Service
	 * 
	 * @param plusMRNo
	 * @return int
	 */
	int deletePlusMReply(int plusMRNo);

	/**
	 * 포인트로 기부해요 게시글 삭제시 댓글 함께 삭제 Service
	 * 
	 * @param plusMNo
	 * @return
	 */
	int deleteRefPlusMReply(int plusMNo);

	/**
	 * 포인트로 기부해요 게시글별 댓글 조회 Service
	 * @param pInfo 
	 * 
	 * @param plusMNo
	 * @return List<PlusMReply>
	 */
	List<PlusMReply> selectPlusMReplyList(PageInfo pInfo, int plusMNo);

	/**
	 * 포인트로 기부해요 게시글별 댓글 갯수 조회 Service
	 * 
	 * @param plusMNo
	 * @return int
	 */
	int getListCount(int plusMNo);

	/**
	 * 포인트로 기부해요 게시글별 좋아요 ID 조회 Service
	 * 
	 * @param plusMNo
	 * @return List<PlusMLike>
	 */
	List<PlusMLike> selectPlusMLikeList(int plusMNo);

}
