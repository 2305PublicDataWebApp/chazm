package kr.co.chazm.lost.store.logic;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.lost.domain.LostReply;
import kr.co.chazm.lost.store.LostReplyStore;

@Repository
public class LostReplyStoreLogic implements LostReplyStore{
	

	@Override
	public List<LostReply> selectReplyList(SqlSession session, Integer refLostNo) {
		List<LostReply>lRList = session.selectList("LostReplyMapper.selectReplyList", refLostNo);
		return lRList;
	}
	
	@Override
	public List<LostReply> selectRReplyList(SqlSession session, Integer lostRParentNo) {
		List<LostReply>lRRList = session.selectList("LostReplyMapper.selectRReplyList", lostRParentNo);
		return lRRList;
	}


	@Override
	public Integer insertLostReply(SqlSession session, LostReply lostReply) {
		Integer result = session.insert("LostReplyMapper.insertLostReply",lostReply);
		return result;
	}

	@Override
	public Integer deleteLostReply(SqlSession session, LostReply lostReply) {
		Integer result = session.update("LostReplyMapper.deleteLostReply",lostReply);
		return result;
	}

	@Override
	public Integer updateLostReply(SqlSession session, LostReply lostReply) {
		Integer result = session.update("LostReplyMapper.updateLostReply",lostReply);
		return result;
	}

	@Override
	public Integer getReplyListCount(SqlSession session, Integer refLostNo) {
		Integer result = session.selectOne("LostReplyMapper.getReplyListCount", refLostNo);
		return result;
	}

	
	

	

	

}
