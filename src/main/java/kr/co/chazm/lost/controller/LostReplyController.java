package kr.co.chazm.lost.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.chazm.lost.domain.LostReply;
import kr.co.chazm.lost.service.LostReplyService;

@Controller
public class LostReplyController {
	@Autowired
	private LostReplyService lostReplyService;
	
	/**
	 * 댓글등록
	 * @param mv
	 * @param lostReply
	 * @param session/lostReply/update.do
	 * @return
	 */
	@RequestMapping(value="/lostReply/insert.do", method=RequestMethod.POST)
	public ModelAndView insertLostReply(ModelAndView mv
									  , @ModelAttribute LostReply lostReply
									  , HttpSession session) {
		String url = "/lostBoard/detail.do?lostNo="+lostReply.getRefLostNo();
		try {
			String lostRWriter = (String)session.getAttribute("memberId");
			if(lostRWriter != null && !lostRWriter.equals("")) {  //로그인해야 댓작성가능
				lostReply.setLostRWriter(lostRWriter);
				Integer result = lostReplyService.insertLostReply(lostReply);
				if(result>0) {
					mv.setViewName("redirect:"+url);
//					mv.addObject("msg", "댓글을 등록했습니다.");
//					mv.addObject("url", url);
//					mv.setViewName("common/message");
				}else {
					mv.addObject("msg", "댓글등록에 실패했습니다.");
					mv.addObject("url", url);
					mv.setViewName("common/message");
				}
			}else {
				mv.addObject("msg", "로그인되지 않았습니다.");
				mv.addObject("url", url);
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의해주세요.");
			mv.addObject("url", url);
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	
	/**
	 * 댓글 삭제 
	 * @param mv
	 * @param lostReply
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/lostReply/delete.do", method=RequestMethod.GET)
	public ModelAndView deleteLostReply (ModelAndView mv
										, @ModelAttribute LostReply lostReply
										, HttpSession session) {
		//UPDATE REPLY_TBL SET R_STATUS = 'N' WHERE REPLY_NO = ? 
		String url = "/lostBoard/detail.do?lostNo="+lostReply.getRefLostNo();
		
		try {
			String memberId = (String)session.getAttribute("memberId");
			String lostRWriter = lostReply.getLostRWriter();
			if(lostRWriter != null && lostRWriter.equals(memberId)) { //댓쓴사람=로그인한사함 일때만 수정 가능 
				Integer result = lostReplyService.deleteLostReply(lostReply);
				if(result>0) {
//					mv.setViewName("redirect:"+url);
					mv.addObject("msg", "댓글을 삭제했습니다.");
					mv.addObject("url", url);
					mv.setViewName("common/message");
				}else {
					mv.addObject("msg", "댓글 삭제가 완료되지 않았습니다");
					mv.addObject("url", url);
					mv.setViewName("common/message");
				}
			}else {
				mv.addObject("msg", "자신이 작성한 댓글만 삭제할 수 있습니다");
				mv.addObject("url", url);
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의해주세요");
			mv.addObject("url", url);
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	/**
	 * 댓글 수정
	 * @param mv
	 * @param lostReply
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/lostReply/update.do", method=RequestMethod.POST)
	public ModelAndView updateLostReply(ModelAndView mv
								 , @ModelAttribute LostReply lostReply
								 , HttpSession session) {
		String url = "/lostBoard/detail.do?lostNo="+lostReply.getRefLostNo();
		try {
			String memberId = (String)session.getAttribute("memberId");
			String lostRWriter = lostReply.getLostRWriter();
			System.out.println(lostRWriter);
			if(lostRWriter != null && lostRWriter.equals(memberId)) { //댓쓴사람=로그인한사함 일때만 수정 가능 
				Integer result = lostReplyService.updateLostReply(lostReply);
				if(result>0) {
//					mv.setViewName("redirect:"+url);
					mv.addObject("msg", "댓글을 수정했습니다.");
					mv.addObject("url", url);
					mv.setViewName("common/message");
				}else {
					mv.addObject("msg", "댓글 수정에 실패했습니다.");
					mv.addObject("url", url);
					mv.setViewName("common/message");
				}
				
			}else {
				mv.addObject("msg", "자신이 작성한 댓글만 수정할 수 있습니다");
				mv.addObject("url", url);
				mv.setViewName("common/message");
			}
			
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의해주세요");
			mv.addObject("url", url);
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	
	
}
