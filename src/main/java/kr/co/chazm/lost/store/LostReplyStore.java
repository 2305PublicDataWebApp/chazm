package kr.co.chazm.lost.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.lost.domain.LostReply;

public interface LostReplyStore {
	
//	public Integer getReplyListCount(SqlSession session);

	public List<LostReply> selectReplyList(SqlSession session, Integer refLostNo);

	public Integer insertLostReply(SqlSession session, LostReply lostReply);

	public Integer deleteLostReply(SqlSession session, LostReply lostReply);

	public Integer updateLostReply(SqlSession session, LostReply lostReply);

	

	

}
