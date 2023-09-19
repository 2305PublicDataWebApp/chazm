package kr.co.chazm.plusmember.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMReply;
import kr.co.chazm.plusmember.service.PlusMReplyService;
import kr.co.chazm.plusmember.store.PlusMReplyStore;

@Service
public class PlusMReplyServiceImpl implements PlusMReplyService {

	@Autowired
	private PlusMReplyStore plusMReplyStore;
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertPlusMReply(PlusMReply plusMReply) {
		int result = plusMReplyStore.insertPlusMReply(sqlSession, plusMReply);
		return result;
	}

	@Override
	public int updatePlusMReply(PlusMReply plusMReply) {
		int result = plusMReplyStore.updatePlusMReply(sqlSession, plusMReply);
		return result;
	}

	@Override
	public int deletePlusMReply(int plusMRNo) {
		int result = plusMReplyStore.deletePlusMReply(sqlSession, plusMRNo);
		return result;
	}

	@Override
	public int deleteRefPlusMReply(int plusMNo) {
		int result = plusMReplyStore.deleteRefPlusMReply(sqlSession, plusMNo);
		return result;
	}

	@Override
	public List<PlusMReply> selectPlusMReplyList(PageInfo pInfo, int plusMNo) {
		List<PlusMReply> pMRList = plusMReplyStore.selectPlusMReplyList(sqlSession, pInfo, plusMNo);
		return pMRList;
	}

	@Override
	public int getListCount(int plusMNo) {
		int result = plusMReplyStore.getListCount(sqlSession, plusMNo);
		return result;
	}

}
