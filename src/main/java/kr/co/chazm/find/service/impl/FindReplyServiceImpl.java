package kr.co.chazm.find.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.find.domain.FindReply;
import kr.co.chazm.find.domain.PageInfo;
import kr.co.chazm.find.service.FindReplyService;
import kr.co.chazm.find.store.FindReplyStore;

@Service
public class FindReplyServiceImpl implements FindReplyService{

	@Autowired
	private FindReplyStore findReplyStore;
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertFindReply(FindReply findReply) {
		int result = findReplyStore.insertFindReply(sqlSession, findReply);
		return result;
	}

	@Override
	public int updateFindReply(FindReply findReply) {
		int result = findReplyStore.updateFindReply(sqlSession, findReply);
		return result;
	}

	@Override
	public int deleteFindReply(int findRNo) {
		int result = findReplyStore.deleteFindReply(sqlSession, findRNo);
		return result;
	}

	@Override
	public int deleteFindBoardReply(int findNo) {
		int result = findReplyStore.deleteFindBoardReply(sqlSession, findNo);
		return result;
	}

	@Override
	public int getReplyCount(int findNo) {
		int result = findReplyStore.getReplyCount(sqlSession, findNo);
		return result;
	}

	@Override
	public List<FindReply> selectFindReplyList(int findNo) {
		List<FindReply> fRList = findReplyStore.selectFindReplyList(sqlSession, findNo);
		return fRList;
	}

	@Override
	public List<FindReply> selectFindReReplyList(int findNo) {
		List<FindReply> fRList = findReplyStore.selectFindReReplyList(sqlSession, findNo);
		return fRList;
	}
	
}