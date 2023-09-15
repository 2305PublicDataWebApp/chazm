package kr.co.chazm.plusmember.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMBoard;
import kr.co.chazm.plusmember.store.PlusMBoardStore;

@Repository
public class PlusMBoardStoreLogic implements PlusMBoardStore {

	@Override
	public int insertPlusMBoard(SqlSession sqlSession, PlusMBoard plusMBoard) {
		int result = sqlSession.insert("PlusMBoardMapper.insertPlusMBoard", plusMBoard);
		return result;
	}

	@Override
	public int getListCount(SqlSession sqlSession) {
		int result = sqlSession.selectOne("PlusMBoardMapper.getListCount");
		return result;
	}

	@Override
	public List<PlusMBoard> selectPlusMBoardList(SqlSession sqlSession, PageInfo pInfo) {
		int limit = pInfo.getRecordCountPerPage();
		int currentPage = pInfo.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<PlusMBoard> pMList = sqlSession.selectList("PlusMBoardMapper.selectPlusMBoardList", null, rowBounds);
		return pMList;
	}

}
