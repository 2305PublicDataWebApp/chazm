package kr.co.chazm.find.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.chazm.find.domain.FindReply;
import kr.co.chazm.find.service.FindReplyService;

@Controller
public class FindReplyController {
	
	@Autowired
	private FindReplyService findReplyService;
	
	// 댓글 등록
	@RequestMapping(value = "/findReply/insert.do", method = RequestMethod.POST)
	public ModelAndView insertFindReply(
			ModelAndView mv
			, @ModelAttribute FindReply findReply 
			, HttpSession session) {
		String url = "/findBoard/detail.do?findNo=" + findReply.getRefFindNo();
		try {
			String findRWriter = (String)session.getAttribute("memberId");
			if(findRWriter != null && !findRWriter.equals("")) {
				findReply.setFindRWriter(findRWriter);
				int result = findReplyService.insertFindReply(findReply);
				if (result > 0) {
					mv.addObject("msg", "댓글이 등록되었습니다.");
					mv.addObject("url", url);
					mv.setViewName("common/message");
				} else {
					mv.addObject("msg", "댓글 등록 실패");
					mv.addObject("url", "/findBoard/detail.do?findNo="+findReply.getRefFindNo());
					mv.setViewName("common/message");
				}
			} else {
				mv.addObject("msg", "댓글 등록은 회원만 가능합니다.");
				mv.addObject("url", "/findBoard/detail.do?findNo="+findReply.getRefFindNo());
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("url", url);
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	// 댓글 수정 
	@RequestMapping(value = "/findReply/update.do", method = RequestMethod.POST)
	public ModelAndView updatetFindReply(
			ModelAndView mv
			, @ModelAttribute FindReply findReply 
			, HttpSession session) {
		String url = "/findBoard/detail.do?findNo=" + findReply.getRefFindNo();
		try {
			String findRWriter = (String)session.getAttribute("memberId");
			findReply.setFindRWriter(findRWriter);
			int result = findReplyService.updateFindReply(findReply);
			if (result > 0) {
				mv.addObject("msg", "댓글이 수정되었습니다.");
				mv.addObject("url", url);
				mv.setViewName("common/message");
//				mv.setViewName("redirect:/findBoard/detail.do?findNo="+findReply.getRefFindNo());
			} else {
				mv.addObject("msg", "댓글 수정 실패");
				mv.addObject("url", "/findBoard/list.do");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("url", "/findBoard/list.do");
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	
	// 댓글 삭제 
		@RequestMapping(value = "/findReply/delete.do", method = RequestMethod.GET)
		public ModelAndView deleteFindReply(
				ModelAndView mv
				, @RequestParam("findRNo") int findRNo
				, @RequestParam("refFindNo") int refFindNo
				, HttpSession session) {
			String url = "/findBoard/detail.do?findNo=" + refFindNo;
			try {
				int result = findReplyService.deleteFindReply(findRNo);
				if (result > 0) {
					mv.addObject("msg", "댓글이 삭제되었습니다.");
					mv.addObject("url", url);
					mv.setViewName("common/message");
//					mv.setViewName("redirect:/findBoard/detail.do?findNo="+refFindNo);
				} else {
					mv.addObject("msg", "댓글 삭제 실패");
					mv.addObject("url", "/findBoard/list.do");
					mv.setViewName("common/message");
				}
			} catch (Exception e) {
				mv.addObject("msg", "관리자에게 문의하세요.");
				mv.addObject("url", url);
				mv.setViewName("common/message");
			}
			return mv;
		}
	
	
}
