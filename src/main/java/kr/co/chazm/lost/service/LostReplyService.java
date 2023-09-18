package kr.co.chazm.lost.service;

import java.util.List;

import kr.co.chazm.lost.domain.LostReply;

public interface LostReplyService {

//	public Integer getReplyListCount();

	public List<LostReply> selectReplyList(Integer refLostNo);

	public Integer insertLostReply(LostReply lostReply);

	public Integer deleteLostReply(LostReply lostReply);

	public Integer updateLostReply(LostReply lostReply);

	

	

	

}
