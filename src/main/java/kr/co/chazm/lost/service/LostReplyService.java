package kr.co.chazm.lost.service;

import java.util.List;
import java.util.Map;

import kr.co.chazm.lost.domain.LostReply;

public interface LostReplyService {


	public List<LostReply> selectReplyList(Integer refLostNo);
	
	public List<LostReply> selectRReplyList(Integer lostRParentNo);

	public Integer insertLostReply(LostReply lostReply);

	public Integer deleteLostReply(LostReply lostReply);

	public Integer updateLostReply(LostReply lostReply);

	public Integer getReplyListCount(Integer refLostNo);

	




	

	

	

}
