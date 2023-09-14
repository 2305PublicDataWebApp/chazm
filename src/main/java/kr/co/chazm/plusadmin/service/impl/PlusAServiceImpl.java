package kr.co.chazm.plusadmin.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.plusadmin.domain.PageInfo;
import kr.co.chazm.plusadmin.domain.PlusABoard;
import kr.co.chazm.plusadmin.service.PlusAService;
import kr.co.chazm.plusadmin.store.PlusAStore;

@Service
public class PlusAServiceImpl implements PlusAService{
	
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private PlusAStore plusAStore;
	
	@Override
	public int insertPlusABoard(PlusABoard plusABoard) {
		int result = plusAStore.insertPlusABoard(sqlSession, plusABoard);
		return result;
	}

	@Override
	public int getListCount() {
		int result = plusAStore.getListCount(sqlSession);
		return result;
	}

	@Override
	public List<PlusABoard> selectPlusABoardList(PageInfo pInfo) {
		List<PlusABoard> pAList = plusAStore.selectPlusABoardList(sqlSession, pInfo);
		return pAList;
	}

	@Override
	public PlusABoard selectOneByNo(int plusANo) {
		PlusABoard plusABoard = plusAStore.selectOneByNo(sqlSession, plusANo);
		return plusABoard;
	}

}
