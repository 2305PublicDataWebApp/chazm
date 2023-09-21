package kr.co.chazm.plusmember.store.logic;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chazm.plusmember.domain.Donation;
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
	public int insertDonation(SqlSession sqlSession, Donation donation) {
		int result = sqlSession.insert("PlusMBoardMapper.insertDonation", donation);
		return result;
	}

	@Override
	public int insertPoint(SqlSession sqlSession, Map<String, Object> dntMap) {
		int result = sqlSession.insert("PlusMBoardMapper.insertPoint", dntMap);
		return result;
	}

	@Override
	public int updatePlusMBoard(SqlSession sqlSession, PlusMBoard plusMBoard) {
		int result = sqlSession.update("PlusMBoardMapper.updatePlusMBoard", plusMBoard);
		return result;
	}

	@Override
	public int updatePlusMCurVal(SqlSession sqlSession, Donation donation) {
		int result = sqlSession.update("PlusMBoardMapper.updatePlusMCurVal", donation);
		return result;
	}

	@Override
	public int updateMemberPoint(SqlSession sqlSession, Donation donation) {
		int result = sqlSession.update("PlusMBoardMapper.updateMemberPoint", donation);
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
	public int deletePlusMLikeByNo(SqlSession sqlSession, int plusMNo) {
		int result = sqlSession.delete("PlusMLikeMapper.deletePlusMLikeByNo", plusMNo);
		return result;
	}

	@Override
	public int getListCount(SqlSession sqlSession) {
		int result = sqlSession.selectOne("PlusMBoardMapper.getListCount");
		return result;
	}

	@Override
	public List<PlusMBoard> selectPlusMBoardList(SqlSession sqlSession, PageInfo pInfo, String orderBy) {
		int limit = pInfo.getRecordCountPerPage();
		int currentPage = pInfo.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<PlusMBoard> pMList = sqlSession.selectList("PlusMBoardMapper.selectPlusMBoardList", orderBy, rowBounds);
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

	@Override
	public int selectDntListCount(SqlSession sqlSession) {
		int result = sqlSession.selectOne("PlusMBoardMapper.selectDntListCount");
		return result;
	}

	@Override
	public int selectAllDntAmount(SqlSession sqlSession) {
		int result = sqlSession.selectOne("PlusMBoardMapper.selectAllDntAmount");
		return result;
	}

	@Override
	public int selectDntYn(SqlSession sqlSession, Donation donation) {
		int result = sqlSession.selectOne("PlusMBoardMapper.selectDntYn", donation);
		return result;
	}

	@Override
	public int selectMemberPoint(SqlSession sqlSession, String memberId) {
		int result = sqlSession.selectOne("PlusMBoardMapper.selectMemberPoint", memberId);
		return result;
	}

	@Override
	public int selectLikeCount(SqlSession sqlSession, int plusMNo) {
		int result = sqlSession.selectOne("PlusMLikeMapper.selectLikeCount", plusMNo);
		return result;
	}

	@Override
	public List<Donation> showDonationById(SqlSession sqlSession, String memberId) {
		List<Donation> lDonation = sqlSession.selectList("PlusMBoardMapper.showDonationById", memberId);
		return lDonation;
	}

	@Override
	public List<Donation> showDonationTitle(SqlSession sqlSession, Map<String, Object> donationInfoMap) {
		List<Donation> dOne = sqlSession.selectList("PlusMBoardMapper.showDonationTitle", donationInfoMap);
		return dOne;
	}

	@Override
	public int countDoationById(SqlSession sqlSession, String memberId) {
		int result = sqlSession.selectOne("PlusMBoardMapper.countDoationById", memberId);
		return result;
	}

	@Override
	public int totalDonationById(SqlSession sqlSession, String memberId) {
		int result = sqlSession.selectOne("PlusMBoardMapper.totalDonationById", memberId);
		return result;
	}

	@Override
	public int showRecentDonationByID(SqlSession sqlSession, String memberId) {
		int result = sqlSession.selectOne("PlusMBoardMapper.showRecentDonationByID", memberId);
		return result;
	}
}
