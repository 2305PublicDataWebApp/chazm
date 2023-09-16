package kr.co.chazm.plusmember.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.chazm.plusmember.domain.PlusMReply;
import kr.co.chazm.plusmember.service.PlusMReplyService;

@Controller
public class PlusMReplyController {

	@Autowired
	private PlusMReplyService plusMReplyService;

	// 댓글 등록
	@RequestMapping(value = "/plusMReply/insert.do", method = RequestMethod.POST)
	public ModelAndView insertPlusMReply(ModelAndView mv, @ModelAttribute PlusMReply plusMReply, HttpSession session) {
		String url = "/plusMBoard/detail.do?plusMNo=" + plusMReply.getRefPlusMNo();
		try {
			String plusMRWriter = (String) session.getAttribute("memberId");
			plusMReply.setPlusMRWriter(plusMRWriter);
			int result = plusMReplyService.insertPlusMReply(plusMReply);
			if (result > 0) {
				mv.addObject("msg", "댓글이 등록되었습니다.");
				mv.addObject("url", url);
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "댓글이 등록을 실패하였습니다.");
				mv.addObject("url", url);
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "댓글 등록 도중 오류가 발생하였습니다.");
			mv.addObject("url", url);
			mv.setViewName("common/message");
		}
		return mv;
	}

	// 댓글 수정
	@RequestMapping(value = "/plusMReply/update.do", method = RequestMethod.POST)
	public ModelAndView updatePlusMReply(ModelAndView mv, @ModelAttribute PlusMReply plusMReply) {
		String url = "/plusMBoard/detail.do?plusMNo=" + plusMReply.getRefPlusMNo();
		try {
			int result = plusMReplyService.updatePlusMReply(plusMReply);
			if (result > 0) {
				mv.addObject("msg", "댓글이 수정되었습니다.");
				mv.addObject("url", url);
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "댓글이 수정을 실패하였습니다.");
				mv.addObject("url", url);
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "댓글 수정 도중 오류가 발생하였습니다.");
			mv.addObject("url", url);
			mv.setViewName("common/message");
		}
		return mv;
	}

	// 댓글 삭제
	@RequestMapping(value = "/plusMReply/delete.do", method = RequestMethod.GET)
	public ModelAndView deletePlusMReply(ModelAndView mv, @RequestParam("plusMRNo") int plusMRNo,
			@RequestParam("refPlusMNo") int refPlusMNo) {
		String url = "/plusMBoard/detail.do?plusMNo=" + refPlusMNo;
		try {
			int result = plusMReplyService.deletePlusMReply(plusMRNo);
			if(result > 0) {
				mv.addObject("msg", "댓글이 삭제되었습니다.");
				mv.addObject("url", url);
				mv.setViewName("common/message");
			}else {
				mv.addObject("msg", "댓글 삭제를 실패하였습니다.");
				mv.addObject("url", url);
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "댓글 삭제 도중 오류가 발생하였습니다.");
			mv.addObject("url", url);
			mv.setViewName("common/message");
		}
		return mv;
	}
}
