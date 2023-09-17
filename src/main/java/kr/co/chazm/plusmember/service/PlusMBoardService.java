package kr.co.chazm.plusmember.service;

import java.util.List;

import kr.co.chazm.plusmember.domain.Donation;
import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMBoard;
import kr.co.chazm.plusmember.domain.PlusMLike;

public interface PlusMBoardService {

	/**
	 * 포인트로 기부해요 게시글 등록 Service
	 * 
	 * @param plusMBoard
	 * @return int
	 */
	int insertPlusMBoard(PlusMBoard plusMBoard);

	/**
	 * 포인트로 기부해요 좋아요 등록 Service
	 * 
	 * @param plusMLike
	 * @return int
	 */
	int insertPlusMLike(PlusMLike plusMLike);

	/**
	 * 포인트로 기부해요 기부 등록 Service
	 * 
	 * @param donation
	 * @return int
	 */
	int insertDonation(Donation donation);

	/**
	 * 포인트로 기부해요 게시글 수정 Service
	 * 
	 * @param plusMBoard
	 * @return int
	 */
	int updatePlusMBoard(PlusMBoard plusMBoard);

	/**
	 * 포인트로 기부해요 기부 금액 업데이트 Service
	 * 
	 * @param plusAmount
	 * @param plusMNo
	 * @return
	 */
	int updatePlusMCurVal(Donation donation);

	/**
	 * 포인트로 기부해요 기부 후 멤버 포인트 업데이트 Service
	 * 
	 * @param donation
	 * @return int
	 */
	int updateMemberPoint(Donation donation);

	/**
	 * 포인트로 기부해요 게시글 삭제 Service
	 * 
	 * @param plusMNo
	 * @return int
	 */
	int deletePlusMBoard(int plusMNo);

	/**
	 * 포인트로 기부해요 좋아요 삭제 Service
	 * 
	 * @param plusMLike
	 * @return int
	 */
	int deletePlusMLike(PlusMLike plusMLike);

	/**
	 * 포인트로 기부해요 게시글 전체 갯수 조회 Service
	 * 
	 * @return Integer
	 */
	int getListCount();

	/**
	 * 포인트로 기부해요 게시글 전체 조회 Service
	 * 
	 * @param pInfo
	 * @return List<PlusMBoard>
	 */
	List<PlusMBoard> selectPlusMBoardList(PageInfo pInfo);

	/**
	 * 포인트로 기부해요 게시글 상세 조회 Service
	 * 
	 * @param plusMNo
	 * @return PlusMBoard
	 */
	PlusMBoard selectOneByNo(int plusMNo);

	/**
	 * 아이디별 게시글 좋아요 여부 조회 Service
	 * 
	 * @param plusMLike
	 * @return int
	 */
	int selectLikeYn(PlusMLike plusMLike);

	/**
	 * 총 기부 참여 명수 조회 Service
	 * 
	 * @return int
	 */
	int selectDntListCount();

	/**
	 * 총 기부 참여 금액 조회 Service
	 * 
	 * @return int
	 */
	int selectAllDntAmount();

	/**
	 * 게시글별 기부 여부 조회 Service
	 * 
	 * @param donation
	 * @return int
	 */
	int selectDntYn(Donation donation);

	/**
	 * 멤버 포인트 조회 Service
	 * 
	 * @param memberId
	 * @return int
	 */
	int selectMemberPoint(String memberId);

}
