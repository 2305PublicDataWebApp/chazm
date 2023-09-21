package kr.co.chazm.lost.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.lost.domain.LostReply;

public interface LostReplyStore {
	

	public List<LostReply> selectReplyList(SqlSession session, Integer refLostNo);
	
	public List<LostReply> selectRReplyList(SqlSession session, Integer lostRParentNo);

	public Integer insertLostReply(SqlSession session, LostReply lostReply);

	public Integer deleteLostReply(SqlSession session, LostReply lostReply);

	public Integer updateLostReply(SqlSession session, LostReply lostReply);

	public Integer getReplyListCount(SqlSession session, Integer refLostNo);




	

	

}
