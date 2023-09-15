package kr.co.chazm.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.chazm.member.domain.Member;
import kr.co.chazm.member.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;

	// 회원분류 페이지 진입
	@RequestMapping(value = "/member/insertMain.do", method = RequestMethod.GET)
	public ModelAndView showInsertMainForm(ModelAndView mv) {
		mv.setViewName("member/signMain");
		return mv;
	}

	// 개인회원가입 페이지 진입
	@RequestMapping(value = "/member/insertIDN.do", method = RequestMethod.GET)
	public ModelAndView showInsertINDMemberForm(ModelAndView mv) {
		mv.setViewName("member/signIDNMember");
		return mv;
	}

	// 개인회원가입 폼
	@RequestMapping(value = "/member/insertIDN.do", method = RequestMethod.POST)
	public ModelAndView insertIDNMember(ModelAndView mv
			, @ModelAttribute Member member) {

		try {
			int result = mService.insertIDNMember(member);
			if (result > 0) {
				mv.setViewName("redirect:/member/login.do");				
			} else {
				mv.addObject("msg", "회원가입에 실패했습니다.");
				mv.setViewName("member/signIDNMember");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.setViewName("member/signIDNMember");
		}
		return mv;
	}

	// 기업회원가입 폼
	@RequestMapping(value = "/member/insertCOR.do", method = RequestMethod.GET)
	public ModelAndView showInsertCORMemberForm(ModelAndView mv) {
		mv.setViewName("member/signCORMember");
		return mv;
	}
	
	// 기업회원가입 폼
	@RequestMapping(value = "/member/insertCOR.do", method = RequestMethod.POST)
	public ModelAndView insertCORMember(ModelAndView mv
			, @ModelAttribute Member member) {

		try {
			int result = mService.insertCORMember(member);
			if (result > 0) {
				mv.setViewName("redirect:/member/login.do");				
			} else {
				mv.addObject("msg", "회원가입에 실패했습니다.");
				mv.setViewName("member/signCORMember");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.setViewName("member/signCORMember");
		}
		return mv;
	}
	
	//로그인 폼
	@RequestMapping(value="/member/login.do", method=RequestMethod.GET)
	public ModelAndView showLoginForm(ModelAndView mv) {
		mv.setViewName("member/login");
		return mv;
	}
	
	// 로그인 기능
	@RequestMapping(value= "/member/login.do", method=RequestMethod.POST)
	public ModelAndView memberLogin(ModelAndView mv
			, HttpSession session
			, HttpServletRequest request
			, @ModelAttribute Member member) {
		
		try {
			Member mOne = mService.selectCheckLogin(member);
			if(mOne!=null) {
				session = request.getSession();
				session.setAttribute("memberId", mOne.getMemberId());
				session.setAttribute("memberGrade", mOne.getMemberGrade());
				session.setAttribute("memberName", mOne.getMemberName());
				session.setAttribute("memberPoint", mOne.getMemberPoint());
				mv.setViewName("redirect:/index.jsp");
			} else {
				mv.addObject("msg", "로그인에 실패했습니다.");
				mv.setViewName("member/login");
			}	
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.setViewName("member/login");
		}
		return mv;
	}
	
	//로그아웃 기능
	@RequestMapping(value="/member/logout.do", method=RequestMethod.GET)
	public ModelAndView memberLogout(ModelAndView mv
			, HttpSession session
			, @ModelAttribute Member member) {
		
		try {
			if(session != null) {
				session.invalidate();
				mv.setViewName("redirect:/index.jsp");
			} else {
				mv.addObject("msg", "로그아웃 실패");
				mv.setViewName("/index.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.setViewName("member/index");
		}
		return mv;
	}
	
	//마이페이지 조회
	@RequestMapping(value="/member/myPage.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberInfo(ModelAndView mv
			,HttpSession session
			,@ModelAttribute Member member) {
		try {
			String memberId = (String)session.getAttribute("memberId");
			Member mOne = null;
			if(memberId != "" & memberId !=null) {
				mOne = mService.selectOneById(memberId);				
			}
			if(mOne!=null) {
				mv.addObject("member", mOne);
				mv.setViewName("member/myPage");
			} else {
				mv.setViewName("member/index");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mv.setViewName("member/index");
		}
		return mv;
	}
}
