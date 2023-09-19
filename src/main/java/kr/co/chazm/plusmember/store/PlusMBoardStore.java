package kr.co.chazm.plusmember.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.plusmember.domain.Donation;
import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMBoard;
import kr.co.chazm.plusmember.domain.PlusMLike;

public interface PlusMBoardStore {

	/**
	 * 포인트로 기부해요 게시글 등록 Store
	 * 
	 * @param sqlSession
	 * @param plusMBoard
	 * @return int
	 */
	int insertPlusMBoard(SqlSession sqlSession, PlusMBoard plusMBoard);

	/**
	 * 포인트로 기부해요 좋아요 등록 Store
	 * 
	 * @param sqlSession
	 * @param plusMLike
	 * @return int
	 */
	int insertPlusMLike(SqlSession sqlSession, PlusMLike plusMLike);

	/**
	 * 포인트로 기부해요 기부 등록 Store
	 * 
	 * @param sqlSession
	 * @param donation
	 * @return int
	 */
	int insertDonation(SqlSession sqlSession, Donation donation);

	/**
	 * 포인트로 기부해요 기부시 포인트 내역 추가 Store
	 * 
	 * @param sqlSession
	 * @param dntMap
	 * @return int
	 */
	int insertPoint(SqlSession sqlSession, Map<String, Object> dntMap);

	/**
	 * 포인트로 기부해요 게시글 수정 Store
	 * 
	 * @param sqlSession
	 * @param plusMBoard
	 * @return int
	 */
	int updatePlusMBoard(SqlSession sqlSession, PlusMBoard plusMBoard);

	/**
	 * 포인트로 기부해요 기부 금액 업데이트 Store
	 * 
	 * @param sqlSession
	 * @param plusAmount
	 * @param plusMNo
	 * @return
	 */
	int updatePlusMCurVal(SqlSession sqlSession, Donation donation);

	/**
	 * 포인트로 기부해요 기부 후 멤버 포인트 업데이트 Store
	 * 
	 * @param sqlSession
	 * @param donation
	 * @return int
	 */
	int updateMemberPoint(SqlSession sqlSession, Donation donation);

	/**
	 * 포인트로 기부해요 게시글 삭제 Store
	 * 
	 * @param sqlSession
	 * @param plusMNo
	 * @return int
	 */
	int deletePlusMBoard(SqlSession sqlSession, int plusMNo);

	/**
	 * 포인트로 기부해요 댓글 삭제 Store
	 * 
	 * @param sqlSession
	 * @param plusMLike
	 * @return int
	 */
	int deletePlusMLike(SqlSession sqlSession, PlusMLike plusMLike);

	/**
	 * 포인트로 기부해요 게시글 삭제 후 포함된 좋아요 삭제 Store
	 * 
	 * @param plusMNo
	 * @return
	 */
	int deletePlusMLikeByNo(SqlSession sqlSession, int plusMNo);

	/**
	 * 포인트로 기부해요 게시글 전체 갯수 조회 Store
	 * 
	 * @param sqlSession
	 * @return
	 */
	int getListCount(SqlSession sqlSession);

	/**
	 * 포인트로 기부해요 게시글 전체 조회 Store
	 * 
	 * @param sqlSession
	 * @param pInfo
	 * @param orderBy
	 * @return List<PlusMBoard>
	 */
	List<PlusMBoard> selectPlusMBoardList(SqlSession sqlSession, PageInfo pInfo, String orderBy);

	/**
	 * 포인트로 기부해요 게시글 상세 조회 Store
	 * 
	 * @param sqlSession
	 * @param plusMNo
	 * @return PlusMBoard
	 */
	PlusMBoard selectOneByNo(SqlSession sqlSession, int plusMNo);

	/**
	 * 포인트로 기부해요 아이디별 좋아요 여부 조회 Store
	 * 
	 * @param sqlSession
	 * @param plusMLike
	 * @return int
	 */
	int selectLikeYn(SqlSession sqlSession, PlusMLike plusMLike);

	/**
	 * 총 기부 참여 명수 조회 Store
	 * 
	 * @param sqlSession
	 * @return int
	 */
	int selectDntListCount(SqlSession sqlSession);

	/**
	 * 총 기부 참여 금액 조회 Store
	 * 
	 * @param sqlSession
	 * @return int
	 */
	int selectAllDntAmount(SqlSession sqlSession);

	/**
	 * 게시글 별 기부 여부 조회 Store
	 * 
	 * @param sqlSession
	 * @param donation
	 * @return int
	 */
	int selectDntYn(SqlSession sqlSession, Donation donation);

	/**
	 * 멤버 포인트 조회 Store
	 * 
	 * @param sqlSession
	 * @param memberId
	 * @return int
	 */
	int selectMemberPoint(SqlSession sqlSession, String memberId);

	/**
	 * 게시글 별 좋아요 갯수 카운트 Store
	 * 
	 * @param sqlSession
	 * @param plusMNo
	 * @return
	 */
	int selectLikeCount(SqlSession sqlSession, int plusMNo);

}
