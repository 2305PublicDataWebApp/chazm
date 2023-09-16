package kr.co.chazm.plusmember.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMBoard;
import kr.co.chazm.plusmember.domain.PlusMLike;
import kr.co.chazm.plusmember.store.PlusMBoardStore;

@Repository
public class PlusMBoardStoreLogic implements PlusMBoardStore {

	@Override
	public int insertPlusMBoard(SqlSession sqlSession, PlusMBoard plusMBoard) {
		int result = sqlSession.insert("PlusMBoardMapper.insertPlusMBoard", plusMBoard);
		return result;
	}

	@Override
	public int insertPlusMLike(SqlSession sqlSession, PlusMLike plusMLike) {
		int result = sqlSession.insert("PlusMLikeMapper.insertPlusMLike", plusMLike);
		return result;
	}

	@Override
	public int updatePlusMBoard(SqlSession sqlSession, PlusMBoard plusMBoard) {
		int result = sqlSession.update("PlusMBoardMapper.updatePlusMBoard", plusMBoard);
		return result;
	}

	@Override
	public int deletePlusMBoard(SqlSession sqlSession, int plusMNo) {
		int result = sqlSession.update("PlusMBoardMapper.deletePlusMBoard", plusMNo);
		return result;
	}

	@Override
	public int deletePlusMLike(SqlSession sqlSession, PlusMLike plusMLike) {
		int result = sqlSession.delete("PlusMLikeMapper.deletePlusMLike", plusMLike);
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

	@Override
	public PlusMBoard selectOneByNo(SqlSession sqlSession, int plusMNo) {
		PlusMBoard plusMBoard = sqlSession.selectOne("PlusMBoardMapper.selectOneByNo", plusMNo);
		return plusMBoard;
	}

	@Override
	public int selectLikeYn(SqlSession sqlSession, PlusMLike plusMLike) {
		int result = sqlSession.selectOne("PlusMLikeMapper.selectLikeYn", plusMLike);
		return result;
	}

}
