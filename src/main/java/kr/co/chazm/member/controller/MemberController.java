package kr.co.chazm.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
				mv.addObject("url", "/member/login.do");
				mv.setViewName("common/message");
			}	
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "/member/login.do");
			mv.setViewName("common/message");
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
				mv.addObject("url", "/index.jsp");
				mv.setViewName("common/message");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "/index.jsp");
			mv.setViewName("common/message");
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
				mv.addObject("msg", "회원정보 조회에 실패하였습ㅂ니다.");
				mv.addObject("url", "/index.jsp");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "/index.jsp");
			mv.setViewName("common/message");
		}
		return mv;
	}

	//회원정보 수정
	@RequestMapping(value="/member/update.do", method=RequestMethod.POST)
	public ModelAndView updateMember(ModelAndView mv
			, HttpSession session
			, @ModelAttribute Member member) {
		
		try {
			int result = mService.updateMember(member);
			if(result>0){
				mv.addObject("msg", "회원정보 수정이 완료되었습니다.");
				mv.addObject("url", "/member/myPage.do");
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "회원정보 수정이 완료되지 않았습니다.");
				mv.addObject("url", "/member/myPage.do");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "/member/myPage.do");
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	//회원 탈퇴
	@RequestMapping(value="/member/delete.do", method=RequestMethod.GET)
	public ModelAndView deleteMember(ModelAndView mv
			, HttpSession session
			, @ModelAttribute Member member) {
		try {
			int result = mService.deleteMember(member);
			if(result>0) {
				mv.setViewName( "redirect:/member/logout.do");
			} else {
				mv.addObject("msg", "회원탈퇴를 완료하지 못했습니다.");
				mv.addObject("url", "/member/myPage.do");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "/member/myPage.do");
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	//아이디 찾기 페이지 진입
	@RequestMapping(value="/member/findId.do", method=RequestMethod.GET)
	public ModelAndView findMemberId(ModelAndView mv) {
		mv.setViewName("member/findId");
		return mv;
	}
	
	//아이디 찾기 기능(이메일)
	@RequestMapping(value="/member/findIdByEmail.do", method=RequestMethod.POST)
	public ModelAndView findMemberIdByEmail(ModelAndView mv
			, @ModelAttribute Member member) {
	    try {
	        Member mOne = mService.selectOneByEmail(member);
	        
	        if(mOne != null) {
	            // 아이디를 찾은 경우
	            mv.addObject("member", mOne); // 모델에 아이디를 추가합니다.
	            // 모달 창을 열도록 JavaScript 함수를 호출하는 스크립트 추가
	            mv.addObject("msg", "회원님의 아이디는 " + mOne.getMemberId() + "입니다.");
				mv.addObject("url", "/member/findId.do");
				mv.setViewName("common/message");
	        } else {
	            mv.addObject("msg", "입력하신 메일로 아이디를 찾지 못했습니다.");
				mv.addObject("url", "/member/findId.do");
				mv.setViewName("common/message");
	        }
	    } catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "/index.jsp");
			mv.setViewName("common/message");
	    }
	    
	    return mv;
	}
	
	//아이디 찾기 기능(핸드폰)
	@RequestMapping(value="/member/findIdByPhone.do", method=RequestMethod.POST)
	public ModelAndView findMemberIdByPhone(ModelAndView mv
			, @ModelAttribute Member member) {
	    try {
	        Member mOne = mService.selectOneByPhone(member);
	        
	        if(mOne != null) {
	            // 아이디를 찾은 경우
	            mv.addObject("member", mOne); // 모델에 아이디를 추가합니다.
	            // 모달 창을 열도록 JavaScript 함수를 호출하는 스크립트 추가
	            mv.addObject("msg", "회원님의 아이디는 " + mOne.getMemberId() + "입니다.");
				mv.addObject("url", "/member/findId.do");
				mv.setViewName("common/message");
	        } else {
	            mv.addObject("msg", "입력하신 핸드폰으로 등록된 아이디를 찾지 못했습니다.");
				mv.addObject("url", "/member/findId.do");
				mv.setViewName("common/message");
	        }
	    } catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "/index.jsp");
			mv.setViewName("common/message");
	    }
	    
	    return mv;
	}	
	
	//비밀번호 찾기 페이지 진입
	@RequestMapping(value="/member/findPw.do", method=RequestMethod.GET)
	public ModelAndView findMemberPw(ModelAndView mv) {
		mv.setViewName("member/findPw");
		return mv;
	}
	
	//비밀번호 변경 기능
	@RequestMapping(value="/member/updatePw.do", method=RequestMethod.POST)
	public ModelAndView updateMemberPw(ModelAndView mv
			, HttpSession session
			, @ModelAttribute Member member) {
		
		try {
			int result = mService.updateMemberPw(member);
			if(result>0){
				mv.addObject("msg", "비밀번호 변경이 완료되었습니다.");
				mv.addObject("url", "/member/login.do");
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "비밀번호 변경이 완료되지 않았습니다.");
				mv.addObject("url", "/member/login.do");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "/member/myPage.do");
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	//아이디 중복체크(개인회원)
	@RequestMapping(value="/member/checkIDN.do", method=RequestMethod.GET)
	public ModelAndView checkIDNMemberId(ModelAndView mv
			, @RequestParam("memberId") String memberId
			) {
		//SELECT COUNT(*) FROM MEMBER_TBL WHERE MEMBER_ID =?
		
		try {        
			int result = mService.selectCheckById(memberId);
			if(result>0) {
                mv.addObject("idCheckResult", result);
                mv.setViewName("member/signIDNMember");
			} else {
                mv.addObject("idCheckResult", result);
                mv.addObject("inputId", memberId);
                mv.setViewName("member/signIDNMember");
			}			
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "/index.jsp");
			mv.setViewName("common/message");
		}
		return mv;
		
	}
	
	//아이디 중복체크(기업회원)
	@RequestMapping(value="/member/checkCOR.do", method=RequestMethod.GET)
	public ModelAndView checkCORMemberId(ModelAndView mv
			, @RequestParam("memberId") String memberId
			) {
		//SELECT COUNT(*) FROM MEMBER_TBL WHERE MEMBER_ID =?
		
		try {        
			int result = mService.selectCheckById(memberId);
			if(result>0) {
                mv.addObject("idCheckResult", result);
                mv.setViewName("member/signCORMember");
			} else {
                mv.addObject("idCheckResult", result);
                mv.addObject("inputId", memberId);
                mv.setViewName("member/signCORMember");
			}			
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "/index.jsp");
			mv.setViewName("common/message");
		}
		return mv;
		
	}
	

}
