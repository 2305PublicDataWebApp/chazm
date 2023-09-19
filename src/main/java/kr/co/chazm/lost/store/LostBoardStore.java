package kr.co.chazm.lost.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.chazm.find.domain.FindBoard;
import kr.co.chazm.lost.domain.LostBoard;
import kr.co.chazm.lost.domain.LostLike;
import kr.co.chazm.lost.domain.PageInfo;

public interface LostBoardStore {

	public Integer getListCount(SqlSession session);

	public List<LostBoard> selectLostBoardList(SqlSession session, PageInfo pInfo);

	public Integer insertLostBoard(SqlSession session, LostBoard lostBoard);

	public LostBoard selectOneByNo(SqlSession session, Integer lostNo);

	public Integer updateLostBoard(SqlSession session, LostBoard lostBoard);

	public Integer deleteLostBoard(SqlSession session, LostBoard lostBoard);

	public Integer searchGetListCount(SqlSession session, Map<String, Object> searchMap);

	public List<LostBoard> searchLostByKeyword(SqlSession session, PageInfo pInfo, Map<String, Object> searchMap);

	
//좋아요//////////////////////////////////////////////////////////////////
	public Integer checkLikeYn(SqlSession session, LostLike lostLike);

	public Integer insertLostLike(SqlSession session, LostLike lostLike);

	public Integer deleteLostLike(SqlSession session, LostLike lostLike);
	
//통합검색//////////////////////////////////////////////////////////////////
	public Integer totalSearchFindCount(SqlSession session, String totalSearchKeyword);

	public List<FindBoard> totalSearchFindByKeyword(SqlSession session, PageInfo fPInfo, String totalSearchKeyword);
	
	public Integer totalSearchLostCount(SqlSession session, String totalSearchKeyword);

	public List<LostBoard> totalSearchLostByKeyword(SqlSession session, PageInfo lPInfo, String totalSearchKeyword);
	








	

	
	
	
	
	

}
