package kr.co.chazm.find.service;

import java.util.List;

import kr.co.chazm.find.domain.FindReply;
import kr.co.chazm.find.domain.PageInfo;

public interface FindReplyService {

	/**
	 * 습득물 게시판 댓글 등록 Service
	 * @param findReply
	 * @return int
	 */
	int insertFindReply(FindReply findReply);

	/** 
	 * 습득물 게시판 댓글 수정 Service
	 * @param findReply
	 * @return int
	 */
	int updateFindReply(FindReply findReply);

	/**
	 * 습득물 게시판 댓글 삭제 Service
	 * @param findRNo
	 * @return int
	 */
	int deleteFindReply(int findRNo);

	/**
	 * 습득물 게시판 게시글 삭제로 인한 댓글 삭제 Service
	 * @param findNo
	 * @return int
	 */
	int deleteFindBoardReply(int findNo);

	/** 
	 * 습득물 게시판 댓글 전체 갯수 조회 Service
	 * @param findNo
	 * @return int
	 */
	int getReplyCount(int findNo);

	/**
	 * 습득물 게시판 댓글 전체 조회 Service
	 * @param findNo
	 * @return List
	 */
	List<FindReply> selectFindReplyList(int findNo);

	/**
	 * 습득물 게시판 대댓글 조회 Service
	 * @param findNo
	 * @return List
	 */
	List<FindReply> selectFindReReplyList(int findNo);

}
