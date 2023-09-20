package kr.co.chazm.lost.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.lost.domain.LostReply;
import kr.co.chazm.lost.service.LostReplyService;
import kr.co.chazm.lost.store.LostReplyStore;

@Service
public class LostReplyServiceImpl implements LostReplyService {
	@Autowired
	private SqlSession session;
	@Autowired
	private LostReplyStore lostReplyStore;
	
//	@Override
//	public Integer getReplyListCount() {
//		Integer result = lostReplyStore.getReplyListCount(session);
//		return result;
//	}
	
	@Override
	public List<LostReply> selectReplyList(Integer refLostNo) {
		List<LostReply>lRList = lostReplyStore.selectReplyList(session, refLostNo);
		return lRList;
	}
	
	@Override
	public List<LostReply> selectRReplyList(Integer lostRParentNo) {
		List<LostReply>lRRList = lostReplyStore.selectRReplyList(session, lostRParentNo);
		return lRRList;
	}

	@Override
	public Integer insertLostReply(LostReply lostReply) {
		Integer result = lostReplyStore.insertLostReply(session, lostReply);
		return result;
	}

	@Override
	public Integer deleteLostReply(LostReply lostReply) {
		Integer result = lostReplyStore.deleteLostReply(session, lostReply);
		return result;
	}

	@Override
	public Integer updateLostReply(LostReply lostReply) {
		Integer result = lostReplyStore.updateLostReply(session, lostReply);
		return result;
	}

//	@Override
//	public Integer getReplyListCount(Integer refLostNo) {
//		Integer result = lostReplyStore.getReplyListCount(session, refLostNo);
//		return result;
//	}
	@Override
	public Integer getReplyListCount(Map<String, Integer> rCountMap) {
		Integer result = lostReplyStore.getReplyListCount(session, rCountMap);
		return result;
	}

	

	

	

}
