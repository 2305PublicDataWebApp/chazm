package kr.co.chazm.lost.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.lost.domain.LostBoard;
import kr.co.chazm.lost.domain.PageInfo;

public interface LostBoardStore {

	public Integer getListCount(SqlSession session);

	public List<LostBoard> selectLostBoardList(SqlSession session, PageInfo pInfo);

	public Integer insertLostBoard(SqlSession session, LostBoard lostBoard);

	public LostBoard selectOneByNo(SqlSession session, Integer lostNo);
	

}
