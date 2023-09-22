package kr.co.chazm.lost.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.lost.domain.LostReply;

public interface LostReplyStore {
	
	/**
	 * 댓글목록
	 * @param session
	 * @param refLostNo
	 * @return
	 */
	public List<LostReply> selectReplyList(SqlSession session, Integer refLostNo);
	
	/**
	 * 대댓글목록
	 * @param session
	 * @param lostRParentNo
	 * @return
	 */
	public List<LostReply> selectRReplyList(SqlSession session, Integer lostRParentNo);

	/**
	 * 댓글등록
	 * @param session
	 * @param lostReply
	 * @return
	 */
	public Integer insertLostReply(SqlSession session, LostReply lostReply);

	/**
	 * 댓글 삭제
	 * @param session
	 * @param lostReply
	 * @return
	 */
	public Integer deleteLostReply(SqlSession session, LostReply lostReply);

	/**
	 * 댓글 수정
	 * @param session
	 * @param lostReply
	 * @return
	 */
	public Integer updateLostReply(SqlSession session, LostReply lostReply);

	/**
	 * 댓글 총갯수
	 * @param session
	 * @param refLostNo
	 * @return
	 */
	public Integer getReplyListCount(SqlSession session, Integer refLostNo);




	

	

}
