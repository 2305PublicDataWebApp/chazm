package kr.co.chazm.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.chazm.find.domain.FindBoard;
import kr.co.chazm.find.service.FindBoardService;
import kr.co.chazm.lost.domain.LostBoard;
import kr.co.chazm.lost.service.LostBoardService;
import kr.co.chazm.member.domain.Member;
import kr.co.chazm.member.domain.Point;
import kr.co.chazm.member.service.MemberService;
import kr.co.chazm.member.service.impl.MailServiceImpl;
import kr.co.chazm.plusmember.domain.Donation;
import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.service.PlusMBoardService;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;

    @Autowired
    private MailServiceImpl registerMail;
     
	@Autowired
	private LostBoardService lostBoardService;
	
	@Autowired
	private PlusMBoardService plusMBoardService;

	@Autowired
	private FindBoardService findBoardService;
	
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
	public ModelAndView insertIDNMember(ModelAndView mv, @ModelAttribute Member member) {

		try {
			String memberId = member.getMemberId();
			int result = mService.insertIDNMember(member);
			int inserPoint = mService.updateMemberPoint(memberId);
			
			if (result > 0) {
				mv.addObject("msg", "회원가입이 성공적으로 완료되었습니다. 환영합니다!");
				mv.addObject("url", "/member/login.do");
				mv.setViewName("common/message");
				
			} else {
				mv.addObject("msg", "회원가입에 실패했습니다.");
				mv.addObject("url", "member/signIDNMember");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "member/signIDNMember");
			mv.setViewName("common/message");
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
	public ModelAndView insertCORMember(ModelAndView mv, @ModelAttribute Member member) {

		try {
			String memberId = member.getMemberId();
			int result = mService.insertCORMember(member);
			int inserPoint = mService.updateMemberPoint(memberId);
			if (result > 0) {
				mv.addObject("msg", "회원가입이 성공적으로 완료되었습니다. 환영합니다!");
				mv.addObject("url", "/member/login.do");
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "회원가입에 실패했습니다.");
				mv.addObject("url", "member/signCORMember");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", "관리자에게 문의 바랍니다.");
			mv.addObject("url", "member/signCORMember");
			mv.setViewName("common/message");
		}
		return mv;
	}

	// 로그인 폼
	@RequestMapping(value = "/member/login.do", method = RequestMethod.GET)
	public ModelAndView showLoginForm(ModelAndView mv) {
		mv.setViewName("member/login");
		return mv;
	}

	// 로그인 기능
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public ModelAndView memberLogin(ModelAndView mv, HttpSession session, HttpServletRequest request,
			@ModelAttribute Member member) {

		try {
			Member mOne = mService.selectCheckLogin(member);
			if (mOne != null) {
				session = request.getSession();
				session.setAttribute("memberId", mOne.getMemberId());
				session.setAttribute("memberGrade", mOne.getMemberGrade());
				session.setAttribute("memberName", mOne.getMemberName());
				mv.setViewName("redirect:/index.jsp");				
			} else {
				mv.addObject("msg", "아이디나 비밀벊가 일치하지 않습니다.");
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

	// 로그아웃 기능
	@RequestMapping(value = "/member/logout.do", method = RequestMethod.GET)
	public ModelAndView memberLogout(ModelAndView mv, HttpSession session, @ModelAttribute Member member) {

		try {
			if (session != null) {
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

	// 마이페이지 
	@RequestMapping(value = "/member/myPage.do", method = { RequestMethod.GET})
	public ModelAndView memberInfo(ModelAndView mv
			, HttpSession session
			, @ModelAttribute Member member
			, @ModelAttribute Donation donation
			, @RequestParam(value = "page", required = false, defaultValue = "1") Integer currentPage) {
		
		try {
			String memberId = (String) session.getAttribute("memberId");
			Member mOne = null;
			List<LostBoard> myLostPosts = null;
			List<FindBoard> myFindPosts = null;
			List<Donation> myDonations = null;
			List<Point> myPointAmounts = null;
            Map<String, Object> donationInfoMap = new HashMap<>();
            donationInfoMap.put("memberId", memberId);
            donationInfoMap.put("donation", donation);
            Integer totalLostCount = 0;
            Integer totalFindCount = 0;
            Integer totalDonationCount = 0;
            int memberTotalPoint = 0;
			int myLostPostCount = 0 ;
			int myFindPostCount = 0 ;
			int myDonationsCount = 0;
			int myDonationsTotal = 0;
			int recentDonation = 0; 
			int totalUsePoint = 0;
			PageInfo pageLostInfo = null;
			PageInfo pageFindInfo = null;
			PageInfo pageDonationInfo = null;
			PageInfo pointInfo = null;
			
			if (memberId != null && !memberId.isEmpty()) {
				mOne = mService.selectOneById(memberId);
				myLostPosts = lostBoardService.showLostBoardById(memberId);
				myFindPosts = findBoardService.showFindBoardById(memberId);
				myLostPostCount  = lostBoardService.countLostBoardById(memberId);
				myFindPostCount = findBoardService.countFindBoardById(memberId);
				myDonations = plusMBoardService.showDonationTitle(donationInfoMap);
				myDonationsCount = plusMBoardService.countDoationById(memberId);
				myDonationsTotal = plusMBoardService.totalDonationById(memberId);
				memberTotalPoint = mService.totalPointsById(memberId);
				myPointAmounts = mService.showPointById(memberId);
				recentDonation = plusMBoardService.showRecentDonationByID(memberId);
				totalUsePoint = mService.totalUsePointById(memberId);
				
				//페이징
				totalFindCount = findBoardService.countFindBoardById(memberId);
				totalLostCount = lostBoardService.countLostBoardById(memberId);
				totalDonationCount = plusMBoardService.countDoationById(memberId);
				pageLostInfo = this.getPageInfo(currentPage, totalLostCount);
				pageFindInfo = this.getPageInfo(currentPage, totalLostCount);
				pageDonationInfo = this.getPageInfo(currentPage, totalLostCount);
			}
			if (mOne != null) {
				mv.addObject("member", mOne);
                mv.addObject("myPosts", myLostPosts);
                mv.addObject("myPostCount", myLostPostCount);
                mv.addObject("myPostFindCount", myFindPostCount);
                mv.addObject("myDonations", myDonations);
                mv.addObject("myDonationsCount", myDonationsCount);
                mv.addObject("myDonationsTotal", myDonationsTotal);
                mv.addObject("myFindPosts", myFindPosts);
                mv.addObject("memberTotalPoint", memberTotalPoint);
                mv.addObject("pointList", myPointAmounts);
                mv.addObject("pageLostInfo", pageLostInfo);
                mv.addObject("pageFindInfo", pageFindInfo);
                mv.addObject("pageDonationInfo", pageDonationInfo);
                mv.addObject("totalUsePoint", totalUsePoint);
                mv.addObject("recentDonation", recentDonation);

                mv.setViewName("member/myPage");
                System.out.println("최근 기부 내역 : " + recentDonation);
				
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
	

	// 회원정보 수정
	@RequestMapping(value = "/member/update.do", method = RequestMethod.POST)
	public ModelAndView updateMember(ModelAndView mv, HttpSession session, @ModelAttribute Member member) {

		try {
			int result = mService.updateMember(member);
			if (result > 0) {
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

	// 회원 탈퇴
	@RequestMapping(value = "/member/delete.do", method = RequestMethod.GET)
	public ModelAndView deleteMember(ModelAndView mv, HttpSession session, @ModelAttribute Member member) {
		try {
			int result = mService.deleteMember(member);
			if (result > 0) {
				mv.setViewName("redirect:/member/logout.do");
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

	// 아이디 찾기 페이지 진입
	@RequestMapping(value = "/member/findId.do", method = RequestMethod.GET)
	public ModelAndView findMemberId(ModelAndView mv) {
		mv.setViewName("member/findId");
		return mv;
	}

	// 아이디 찾기 기능(이메일)
	@RequestMapping(value = "/member/findIdByEmail.do", method = RequestMethod.POST)
	public ModelAndView findMemberIdByEmail(ModelAndView mv, @ModelAttribute Member member) {
		try {
			Member mOne = mService.selectOneByEmail(member);

			if (mOne != null) {
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

	// 아이디 찾기 기능(핸드폰)
	@RequestMapping(value = "/member/findIdByPhone.do", method = RequestMethod.POST)
	public ModelAndView findMemberIdByPhone(ModelAndView mv, @ModelAttribute Member member) {
		try {
			Member mOne = mService.selectOneByPhone(member);

			if (mOne != null) {
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

	// 비밀번호 찾기 페이지 진입
	@RequestMapping(value = "/member/findPw.do", method = RequestMethod.GET)
	public ModelAndView findMemberPw(ModelAndView mv) {
		mv.setViewName("member/findPw");
		return mv;
	}

	// 비밀번호 변경 기능
	@RequestMapping(value = "/member/updatePw.do", method = RequestMethod.POST)
	public ModelAndView updateMemberPw(ModelAndView mv, HttpSession session, @ModelAttribute Member member) {

		try {
			int result = mService.updateMemberPw(member);
			if (result > 0) {
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
	
	
	// 이메일 인증 후 변경
	@RequestMapping(value = "/member/updatePwByEmail.do", method = RequestMethod.POST)
	public ModelAndView modifyPwByIdAndEmail(ModelAndView mv, HttpSession session, @ModelAttribute Member member) {

		try {
			int findPwByIdAndEmail = mService.updatePwByIdAndEmail(member);
			
			if (findPwByIdAndEmail > 0) {
				mv.addObject("msg", "비밀번호 변경이 완료되었습니다.");
				mv.addObject("url", "/member/login.do");
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "가입한 이메일과 아이디가 일치하지 않습니다.");
				mv.addObject("url", "/member/findPw.do");
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

	// 핸드폰 인증 후 변경
	@RequestMapping(value = "/member/updatePwByPhone.do", method = RequestMethod.POST)
	public ModelAndView modifyPwByIdAndPhone(ModelAndView mv, HttpSession session, @ModelAttribute Member member) {

		try {
			int findPwByIdAndPhone = mService.updatePwByIdAndPhone(member);
			
			if (findPwByIdAndPhone > 0) {
				mv.addObject("msg", "비밀번호 변경이 완료되었습니다.");
				mv.addObject("url", "/member/login.do");
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "가입한 핸드폰 번호와 아이디가 일치하지 않습니다.");
				mv.addObject("url", "/member/findPw.do");
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
	
	// 아이디 중복체크(개인회원)
	@RequestMapping(value = "/member/checkIDN.do", method = RequestMethod.GET)
	public ModelAndView checkIDNMemberId(ModelAndView mv, @RequestParam("memberId") String memberId) {
		// SELECT COUNT(*) FROM MEMBER_TBL WHERE MEMBER_ID =?

		try {
			int result = mService.selectCheckById(memberId);
			if (result > 0) {
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

	// 아이디 중복체크(기업회원)
	@RequestMapping(value = "/member/checkCOR.do", method = RequestMethod.GET)
	public ModelAndView checkCORMemberId(ModelAndView mv, @RequestParam("memberId") String memberId) {
		// SELECT COUNT(*) FROM MEMBER_TBL WHERE MEMBER_ID =?

		try {
			int result = mService.selectCheckById(memberId);
			if (result > 0) {
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
	
    @RequestMapping(value="/confirmMail.do", method= RequestMethod.POST)
    public ModelAndView mailConfirm(@RequestParam("memberEmail") String memberEmail
    		, HttpSession session, ModelAndView mv) throws Exception {
        String code = registerMail.sendSimpleMessage(memberEmail);
        System.out.println("사용자에게 발송한 인증코드 ==> " + code);
        if(code !=null) {
        	session.setAttribute("emailCode", code);
        	mv.setViewName("member/signIDNMember");        	
        } 
        return mv;
    }
    
    @RequestMapping(value="/confirmCORMail.do", method= RequestMethod.POST)
    public ModelAndView mailConfirmByCOrMember(@RequestParam("memberEmail") String memberEmail
    		, HttpSession session, ModelAndView mv) throws Exception {
        String code = registerMail.sendSimpleMessage(memberEmail);
        System.out.println("사용자에게 발송한 인증코드 ==> " + code);
        if(code !=null) {
        	session.setAttribute("emailCode", code);
        	mv.setViewName("member/signCORMember");        	
        } 
        return mv;
    }
    
    // 코드 확인을 위한 AJAX 컨트롤러
    @RequestMapping(value="/verifyEmailCode.do", method= RequestMethod.POST)
    @ResponseBody
    public String verifyEmailCode(@RequestParam("enteredCode") String enteredCode, HttpSession session) {
        // 세션에서 이메일 코드 가져오기
        String emailCode = (String) session.getAttribute("emailCode");
        
        if (emailCode != null && emailCode.equals(enteredCode)) {
            // 코드가 일치하는 경우
            return "success";
        } else {
            // 코드가 일치하지 않는 경우
            return "failure";
        }
    }
    
    private PageInfo getPageInfo(Integer currentPage, Integer totalCount) {
		PageInfo pInfo = null;
		int recordCountPerPage = 10;
		int naviCountPerPage = 5;
		int naviTotalCount;
		int startNavi;
		int endNavi;
		if (totalCount % recordCountPerPage > 0) {
			naviTotalCount = totalCount / recordCountPerPage + 1;
		} else {
			naviTotalCount = totalCount / recordCountPerPage;
		}
		if (currentPage < 1) {
			currentPage = 1;
		}
		if (currentPage > naviTotalCount) {
			currentPage = naviTotalCount;
		}
		startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		endNavi = startNavi + naviCountPerPage - 1;
		if (endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		pInfo = new PageInfo(currentPage, recordCountPerPage, naviCountPerPage, naviTotalCount, startNavi, endNavi,
				totalCount);
		return pInfo;
	}



    
}
