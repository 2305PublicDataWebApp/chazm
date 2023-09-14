package kr.co.chazm.plusadmin.service;

import java.util.List;

import kr.co.chazm.plusadmin.domain.PageInfo;
import kr.co.chazm.plusadmin.domain.PlusABoard;

public interface PlusAService {

	/**
	 * 찾음이 기부해요 게시글 등록
	 * @param plusABoard
	 * @return int
	 */
	int insertPlusABoard(PlusABoard plusABoard);

	/**
	 * 찾음이 기부해요 게시글 전체 갯수 조회
	 * @return int
	 */
	int getListCount();
	
	/**
	 * 찾음이 기부해요 게시글 리스트 조회
	 * @param pInfo
	 * @return List<PlusABoard>
	 */
	List<PlusABoard> selectPlusABoardList(PageInfo pInfo);
	
	/**
	 * 찾음이 기부해요 번호로 조회
	 * @param plusANo
	 * @return PlusABoard
	 */
	PlusABoard selectOneByNo(int plusANo);


}
