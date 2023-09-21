package kr.co.chazm.plusmember.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.plusmember.domain.Donation;
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
	public int insertDonation(Donation donation) {
		int result = plusMBoardStore.insertDonation(sqlSession, donation);
		return result;
	}

	@Override
	public int insertPoint(Map<String, Object> dntMap) {
		int result = plusMBoardStore.insertPoint(sqlSession, dntMap);
		return result;
	}

	@Override
	public int updatePlusMBoard(PlusMBoard plusMBoard) {
		int result = plusMBoardStore.updatePlusMBoard(sqlSession, plusMBoard);
		return result;
	}

	@Override
	public int updatePlusMCurVal(Donation donation) {
		int result = plusMBoardStore.updatePlusMCurVal(sqlSession, donation);
		return result;
	}

	@Override
	public int updateMemberPoint(Donation donation) {
		int result = plusMBoardStore.updateMemberPoint(sqlSession, donation);
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
	public int deletePlusMLikeByNo(int plusMNo) {
		int result = plusMBoardStore.deletePlusMLikeByNo(sqlSession, plusMNo);
		return result;
	}

	@Override
	public int getListCount() {
		int result = plusMBoardStore.getListCount(sqlSession);
		return result;
	}

	@Override
	public List<PlusMBoard> selectPlusMBoardList(PageInfo pInfo, String orderBy) {
		List<PlusMBoard> pMList = plusMBoardStore.selectPlusMBoardList(sqlSession, pInfo, orderBy);
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

	@Override
	public int selectDntListCount() {
		int result = plusMBoardStore.selectDntListCount(sqlSession);
		return result;
	}

	@Override
	public int selectAllDntAmount() {
		int result = plusMBoardStore.selectAllDntAmount(sqlSession);
		return result;
	}

	@Override
	public int selectDntYn(Donation donation) {
		int result = plusMBoardStore.selectDntYn(sqlSession, donation);
		return result;
	}

	@Override
	public int selectMemberPoint(String memberId) {
		int result = plusMBoardStore.selectMemberPoint(sqlSession, memberId);
		return result;
	}

	@Override
	public int selectLikeCount(int plusMNo) {
		int result = plusMBoardStore.selectLikeCount(sqlSession, plusMNo);
		return result;
	}

	@Override
	public List<Donation> showDonationById(String memberId) {
		List<Donation> lDonation = plusMBoardStore.showDonationById(sqlSession, memberId);
		return lDonation;
	}

	@Override
	public List<Donation> showDonationTitle(Map<String, Object> donationInfoMap) {
		List<Donation> dOne = plusMBoardStore.showDonationTitle(sqlSession, donationInfoMap);
		return dOne;
	}

	@Override
	public int countDoationById(String memberId) {
		int result =  plusMBoardStore.countDoationById(sqlSession, memberId);
		return result;
	}

	@Override
	public int totalDonationById(String memberId) {
		int result =  plusMBoardStore.totalDonationById(sqlSession, memberId);
		return result;
	}

	@Override
	public int showRecentDonationByID(String memberId) {
		int result = plusMBoardStore.showRecentDonationByID(sqlSession, memberId);
		return result;
	}	
}
