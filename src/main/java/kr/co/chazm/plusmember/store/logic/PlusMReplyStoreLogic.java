package kr.co.chazm.plusmember.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMReply;
import kr.co.chazm.plusmember.store.PlusMReplyStore;

@Repository
public class PlusMReplyStoreLogic implements PlusMReplyStore {

	@Override
	public int insertPlusMReply(SqlSession sqlSession, PlusMReply plusMReply) {
		int result = sqlSession.insert("PlusMReplyMapper.insertPlusMReply", plusMReply);
		return result;
	}

	@Override
	public int updatePlusMReply(SqlSession sqlSession, PlusMReply plusMReply) {
		int result = sqlSession.update("PlusMReplyMapper.updatePlusMReply", plusMReply);
		return result;
	}

	@Override
	public int deletePlusMReply(SqlSession sqlSession, int plusMRNo) {
		int result = sqlSession.update("PlusMReplyMapper.deletePlusMReply", plusMRNo);
		return result;
	}

	@Override
	public List<PlusMReply> selectPlusMReplyList(SqlSession sqlSession, PageInfo pInfo, int plusMNo) {
		int limit = pInfo.getRecordCountPerPage();
		int currentPage = pInfo.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<PlusMReply> pMRList = sqlSession.selectList("PlusMReplyMapper.selectPlusMReplyList", plusMNo, rowBounds);
		return pMRList;
	}

	@Override
	public int getListCount(SqlSession sqlSession, int plusMNo) {
		int result = sqlSession.selectOne("PlusMReplyMapper.getListCount", plusMNo);
		return result;
	}

}
