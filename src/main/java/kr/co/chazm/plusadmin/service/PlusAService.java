package kr.co.chazm.plusadmin.service;

import java.util.List;

import kr.co.chazm.plusadmin.domain.PageInfo;
import kr.co.chazm.plusadmin.domain.PlusABoard;

public interface PlusAService {

	/**
	 * 찾음이 기부해요 게시글 등록 Service
	 * @param plusABoard
	 * @return int
	 */
	int insertPlusABoard(PlusABoard plusABoard);

	/**
	 * 찾음이 기부해요 게시글 수정 Service
	 * @param plusABoard
	 * @return int
	 */
	int updatePlusABoard(PlusABoard plusABoard);
	
	/**
	 * 찾음이 기부해요 게시글 삭제 Service
	 * @param plusANo
	 * @return
	 */
	int deletePlusABoard(int plusANo);

	/**
	 * 찾음이 기부해요 게시글 전체 갯수 조회 Service
	 * @return int
	 */
	int getListCount();
	
	/**
	 * 찾음이 기부해요 게시글 리스트 조회 Service
	 * @param pInfo
	 * @return List<PlusABoard>
	 */
	List<PlusABoard> selectPlusABoardList(PageInfo pInfo);
	
	/**
	 * 찾음이 기부해요 번호로 조회 Service
	 * @param plusANo
	 * @return PlusABoard
	 */
	PlusABoard selectOneByNo(int plusANo);
	
	/**
	 * 전체 가입자 수 조회 Service
	 * 
	 * @return int
	 */
	int selectTotalMember();

	/**
	 * 전체 게시글 수 조회 Service
	 * 
	 * @return
	 */
	int selectTotalBoard();

	/**
	 * 인계완료 게시글 수 조회 Service
	 * 
	 * @return int
	 */
	int selectTotalGetY();

}
