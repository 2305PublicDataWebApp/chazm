package kr.co.chazm.plusadmin.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.plusadmin.domain.PageInfo;
import kr.co.chazm.plusadmin.domain.PlusABoard;
import kr.co.chazm.plusadmin.store.PlusAStore;

@Repository
public class PlusAStoreLogic implements PlusAStore {

	@Override
	public int insertPlusABoard(SqlSession sqlSession, PlusABoard plusABoard) {
		int result = sqlSession.insert("PlusABoardMapper.insertPlusABoard", plusABoard);
		return result;
	}

	@Override
	public int updatePlusABoard(SqlSession sqlSession, PlusABoard plusABoard) {
		int result = sqlSession.update("PlusABoardMapper.updatePlusABoard", plusABoard);
		return result;
	}

	@Override
	public int deletePlusABoard(SqlSession sqlSession, int plusANo) {
		int result = sqlSession.update("PlusABoardMapper.deletePlusABoard", plusANo);
		return result;
	}

	@Override
	public int getListCount(SqlSession sqlSession) {
		int result = sqlSession.selectOne("PlusABoardMapper.getListCount");
		return result;
	}

	@Override
	public List<PlusABoard> selectPlusABoardList(SqlSession sqlSession, PageInfo pInfo) {
		int limit = pInfo.getRecordCountPerPage();
		int currentPage = pInfo.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<PlusABoard> pAList = sqlSession.selectList("PlusABoardMapper.selectPlusABoardList", null, rowBounds);
		return pAList;
	}

	@Override
	public PlusABoard selectOneByNo(SqlSession sqlSession, int plusANo) {
		PlusABoard plusABoard = sqlSession.selectOne("PlusABoardMapper.selectOneByNo", plusANo);
		return plusABoard;
	}

}
