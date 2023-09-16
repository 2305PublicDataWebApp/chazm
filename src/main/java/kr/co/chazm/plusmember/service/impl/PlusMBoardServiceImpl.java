package kr.co.chazm.plusmember.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMBoard;
import kr.co.chazm.plusmember.domain.PlusMLike;
import kr.co.chazm.plusmember.service.PlusMBoardService;
import kr.co.chazm.plusmember.store.PlusMBoardStore;

@Service
public class PlusMBoardServiceImpl implements PlusMBoardService {

	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private PlusMBoardStore plusMBoardStore;

	@Override
	public int insertPlusMBoard(PlusMBoard plusMBoard) {
		int result = plusMBoardStore.insertPlusMBoard(sqlSession, plusMBoard);
		return result;
	}

	@Override
	public int insertPlusMLike(PlusMLike plusMLike) {
		int result = plusMBoardStore.insertPlusMLike(sqlSession, plusMLike);
		return result;
	}

	@Override
	public int updatePlusMBoard(PlusMBoard plusMBoard) {
		int result = plusMBoardStore.updatePlusMBoard(sqlSession, plusMBoard);
		return result;
	}

	@Override
	public int deletePlusMBoard(int plusMNo) {
		int result = plusMBoardStore.deletePlusMBoard(sqlSession, plusMNo);
		return result;
	}

	@Override
	public int deletePlusMLike(PlusMLike plusMLike) {
		int result = plusMBoardStore.deletePlusMLike(sqlSession, plusMLike);
		return result;
	}

	@Override
	public int getListCount() {
		int result = plusMBoardStore.getListCount(sqlSession);
		return result;
	}

	@Override
	public List<PlusMBoard> selectPlusMBoardList(PageInfo pInfo) {
		List<PlusMBoard> pMList = plusMBoardStore.selectPlusMBoardList(sqlSession, pInfo);
		return pMList;
	}

	@Override
	public PlusMBoard selectOneByNo(int plusMNo) {
		PlusMBoard plusMBoard = plusMBoardStore.selectOneByNo(sqlSession, plusMNo);
		return plusMBoard;
	}

	@Override
	public int selectLikeYn(PlusMLike plusMLike) {
		int result = plusMBoardStore.selectLikeYn(sqlSession, plusMLike);
		return result;
	}

}
