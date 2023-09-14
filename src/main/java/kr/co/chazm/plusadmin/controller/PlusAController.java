package kr.co.chazm.plusadmin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.chazm.plusadmin.domain.PageInfo;
import kr.co.chazm.plusadmin.domain.PlusABoard;
import kr.co.chazm.plusadmin.service.PlusAService;

@Controller
public class PlusAController {
	
	@Autowired
	private PlusAService plusAService;
	
	@RequestMapping(value="/plusA/insert.do", method=RequestMethod.GET)
	public ModelAndView showInsertPlusAForm(ModelAndView mv) {
		mv.setViewName("plusA/plusAinsert");
		return mv;
	}
	
	@RequestMapping(value="/plusA/insert.do",  produces="text/html;charset=UTF-8;", method=RequestMethod.POST)
	public @ResponseBody String insertPlusABoard(
			Model model
			, @ModelAttribute PlusABoard plusABoard
			) {
		try {
			int result = plusAService.insertPlusABoard(plusABoard);
			if(result > 0) {
				return "<script>alert('게시글이 등록되었습니다.'); location.href='/plusA/list.do';</script>";
			}else {
				return "<script>alert('게시글 등록 중 오류가 발생하였습니다.'); history.back();</script>";
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "<script>alert('게시글 등록 중 오류가 발생하였습니다.'); history.back();</script>";
			
		}
	}
	
	@RequestMapping(value="/plusA/update.do", method=RequestMethod.GET)
	public ModelAndView showUpdatePlusAForm(
			ModelAndView mv
			, @RequestParam("plusANo") int plusANo
			) {
		PlusABoard plusABoard = plusAService.selectOneByNo(plusANo);
		mv.addObject("plusABoard", plusABoard);
		mv.setViewName("plusA/plusAupdate");
		return mv;
	}
	
	@RequestMapping(value="/plusA/list.do", method=RequestMethod.GET)
	public ModelAndView showPlusABoardList(
			ModelAndView mv
			, @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage
			) {
		Integer totalCount = plusAService.getListCount();
		PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
		List<PlusABoard> pAList = plusAService.selectPlusABoardList(pInfo);
		mv.addObject("pInfo", pInfo);
		mv.addObject("pAList", pAList);
		mv.setViewName("plusA/plusA");
		return mv;
	}

	private PageInfo getPageInfo(Integer currentPage, Integer totalCount) {
		PageInfo pInfo = null;
		int recordCountPerPage = 5;
		int naviCountPerPage = 5;
		int naviTotalCount;
		naviTotalCount = (int)Math.ceil((double)totalCount/recordCountPerPage);
		int startNavi = ((int)((double)currentPage/naviCountPerPage+0.9)-1) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		pInfo = new PageInfo(currentPage, totalCount, naviTotalCount, recordCountPerPage, naviCountPerPage, startNavi, endNavi);
		return pInfo;
	}
}
