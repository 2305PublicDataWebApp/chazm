package kr.co.chazm.lost.service;

import java.util.List;
import java.util.Map;

import kr.co.chazm.lost.domain.LostReply;

public interface LostReplyService {


	/**
	 * 댓글목록
	 * @param refLostNo
	 * @return
	 */
	public List<LostReply> selectReplyList(Integer refLostNo);
	
	/**
	 * 대댓글목록
	 * @param lostRParentNo
	 * @return
	 */
	public List<LostReply> selectRReplyList(Integer lostRParentNo);

	/**
	 * 댓글등록
	 * @param lostReply
	 * @return
	 */
	public Integer insertLostReply(LostReply lostReply);

	/**
	 * 댓글 삭제
	 * @param lostReply
	 * @return
	 */
	public Integer deleteLostReply(LostReply lostReply);

	/**
	 * 댓글 수정
	 * @param lostReply
	 * @return
	 */
	public Integer updateLostReply(LostReply lostReply);

	/**
	 * 댓글 총갯수
	 * @param refLostNo
	 * @return
	 */
	public Integer getReplyListCount(Integer refLostNo);

	




	

	

	

}
