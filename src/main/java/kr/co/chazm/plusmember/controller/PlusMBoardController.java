package kr.co.chazm.plusmember.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.chazm.member.service.MemberService;
import kr.co.chazm.plusmember.domain.Donation;
import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMBoard;
import kr.co.chazm.plusmember.domain.PlusMLike;
import kr.co.chazm.plusmember.domain.PlusMReply;
import kr.co.chazm.plusmember.service.PlusMBoardService;
import kr.co.chazm.plusmember.service.PlusMReplyService; 

@Controller
public class PlusMBoardController {

	@Autowired
	private PlusMBoardService plusMBoardService;
	@Autowired
	private PlusMReplyService plusMReplyService;

	// 게시글 등록 폼
	@RequestMapping(value = "/plusMBoard/insert.do", method = RequestMethod.GET)
	public ModelAndView showInsertPlusMBoardForm(ModelAndView mv, HttpSession session) {
		Integer memberGrade = (Integer) session.getAttribute("memberGrade");
		if (memberGrade == null || memberGrade != 3) {
			mv.addObject("msg", "접근 권한이 없습니다.");
			mv.addObject("url", "/");
			mv.setViewName("common/message");
		} else {
			mv.setViewName("plusM/plusMinsert");
		}
		return mv;
	}

	// 게시글 등록
	@RequestMapping(value = "/plusMBoard/insert.do", produces = "text/html;charset=UTF-8;", method = RequestMethod.POST)
	public ModelAndView insertPlusMBoard(ModelAndView mv, @ModelAttribute PlusMBoard plusMBoard,
			@RequestParam(value = "uploadFile", required = false) MultipartFile uploadFile,
			HttpServletRequest request) {
		try {
			if (uploadFile != null && !uploadFile.getOriginalFilename().equals("")) {
				Map<String, Object> pMap = this.saveFile(request, uploadFile);
				plusMBoard.setPlusMFilename((String) pMap.get("fileName"));
				plusMBoard.setPlusMFilerename((String) pMap.get("fileRename"));
				plusMBoard.setPlusMFilepath((String) pMap.get("filePath"));
			}
			int result = plusMBoardService.insertPlusMBoard(plusMBoard);
			if (result > 0) {
				mv.addObject("msg", "게시글이 등록되었습니다.");
				mv.addObject("url", "/plusMBoard/list.do");
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "게시글 등록을 실패하였습니다.");
				mv.addObject("url", "/plusMBoard/insert.do");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "게시글 등록 도중 오류가 발생하였습니다.");
			mv.addObject("url", "/plusMBoard/insert.do");
			mv.setViewName("common/message");
		}
		return mv;
	}

	// 좋아요 등록
	@RequestMapping(value = "/plusMLike/insert.do", method = RequestMethod.GET)
	public ModelAndView insertPlusMLike(ModelAndView mv, @RequestParam("refPlusMNo") int refPlusMNo,
			HttpSession session) {
		try {
			String memberId = (String) session.getAttribute("memberId");
			PlusMLike plusMLike = new PlusMLike(refPlusMNo, memberId);
			int result = plusMBoardService.insertPlusMLike(plusMLike);
			mv.setViewName("redirect:/plusMBoard/detail.do?plusMNo=" + refPlusMNo);
		} catch (Exception e) {
			mv.addObject("msg", "좋아요 등록 도중 오류가 발생하였습니다.");
			mv.addObject("url", "/plusMBoard/detail.do?plusMNo=" + refPlusMNo);
			mv.setViewName("common/message");
		}
		return mv;
	}

	// 기부 등록
	@RequestMapping(value = "/donation/insert.do", method = RequestMethod.POST)
	public ModelAndView insertDonation(ModelAndView mv, @ModelAttribute Donation donation, HttpSession session, @RequestParam("dntPlace") String dntPlace) {
		try {
			String memberId = (String) session.getAttribute("memberId");
			donation.setMemberId(memberId);
			int result = plusMBoardService.insertDonation(donation);
			result += plusMBoardService.updateMemberPoint(donation);
			result += plusMBoardService.updatePlusMCurVal(donation);
			Map<String, Object> dntMap = new HashMap<String, Object>();
			dntMap.put("memberId", donation.getMemberId());
			dntMap.put("pointAmount", donation.getDntPoint());
			dntMap.put("pointDetail", dntPlace);
			result += plusMBoardService.insertPoint(dntMap);
			System.out.println("result : " + result);
			if (result >= 4) {
				PlusMReply plusMReply = new PlusMReply();
				plusMReply.setRefPlusMNo(donation.getRefPlusMNo());
				plusMReply.setPlusMRContent(donation.getDntPoint() + "P 참여");
				plusMReply.setPlusMRWriter(donation.getMemberId());
				plusMReplyService.insertPlusMReply(plusMReply);
				mv.addObject("msg", "기부가 완료되었습니다. 감사합니다.");
				mv.addObject("url", "/plusMBoard/detail.do?plusMNo=" + donation.getRefPlusMNo());
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "기부를 실패하였습니다.");
				mv.addObject("url", "/plusMBoard/detail.do?plusMNo=" + donation.getRefPlusMNo());
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "기부 도중 오류가 발생하였습니다.");
			mv.addObject("url", "/plusMBoard/detail.do?plusMNo=" + donation.getRefPlusMNo());
			mv.setViewName("common/message");
		}
		return mv;
	}

	// 게시글 수정 폼
	@RequestMapping(value = "/plusMBoard/update.do", method = RequestMethod.GET)
	public ModelAndView showUpdatePlusMBoardForm(ModelAndView mv, @RequestParam("plusMNo") int plusMNo,
			HttpSession session) {
		Integer memberGrade = (Integer) session.getAttribute("memberGrade");
		if (memberGrade == null || memberGrade != 3) {
			mv.addObject("msg", "접근 권한이 없습니다.");
			mv.addObject("url", "/");
			mv.setViewName("common/message");
		} else {
			PlusMBoard plusMBoard = plusMBoardService.selectOneByNo(plusMNo);
			mv.addObject("plusMBoard", plusMBoard);
			mv.setViewName("plusM/plusMupdate");
		}
		return mv;
	}

	// 게시글 수정
	@RequestMapping(value = "/plusMBoard/update.do", produces = "text/html;charset=UTF-8;", method = RequestMethod.POST)
	public ModelAndView updatePlusMBoard(ModelAndView mv, @ModelAttribute PlusMBoard plusMBoard,
			@RequestParam(value = "uploadFile", required = false) MultipartFile uploadFile,
			HttpServletRequest request) {
		try {
			if (uploadFile != null && !uploadFile.isEmpty()) {
				String fileRename = plusMBoard.getPlusMFilerename();
				if (fileRename != null) {
					this.deleteFile(request, fileRename);
				}
				Map<String, Object> pMap = this.saveFile(request, uploadFile);
				plusMBoard.setPlusMFilename((String) pMap.get("fileName"));
				plusMBoard.setPlusMFilerename((String) pMap.get("fileRename"));
				plusMBoard.setPlusMFilepath((String) pMap.get("filePath"));
			}
			int result = plusMBoardService.updatePlusMBoard(plusMBoard);
			if (result > 0) {
				mv.addObject("msg", "게시글이 수정되었습니다.");
				mv.addObject("url", "/plusMBoard/detail.do?plusMNo=" + plusMBoard.getPlusMNo());
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "게시글 수정을 실패하였습니다.");
				mv.addObject("url", "/plusMBoard/detail.do?plusMNo=" + plusMBoard.getPlusMNo());
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "게시글 수정 도중 오류가 발생하였습니다.");
			mv.addObject("url", "/plusMBoard/detail.do?plusMNo=" + plusMBoard.getPlusMNo());
			mv.setViewName("common/message");
		}
		return mv;
	}

	// 게시글 삭제
	@RequestMapping(value = "/plusMBoard/delete.do", method = RequestMethod.GET)
	public ModelAndView deletePlusMBoard(ModelAndView mv, @RequestParam("plusMNo") int plusMNo, HttpSession session) {
		try {
			Integer memberGrade = (Integer) session.getAttribute("memberGrade");
			if (memberGrade == null || memberGrade != 3) {
				mv.addObject("msg", "접근 권한이 없습니다.");
				mv.addObject("url", "/");
				mv.setViewName("common/message");
			} else {
				int result = plusMBoardService.deletePlusMBoard(plusMNo);	// 게시글 삭제 endYn - y
				result += plusMReplyService.deleteRefPlusMReply(plusMNo);	// 포함된 댓글 status - n으로 바꾸기
				result += plusMBoardService.deletePlusMLikeByNo(plusMNo);	// 포함된 좋아요 삭제
				if (result >= 3) {
					mv.addObject("msg", "게시글이 삭제되었습니다.");
					mv.addObject("url", "/plusMBoard/list.do");
					mv.setViewName("common/message");
				} else {
					mv.addObject("msg", "게시글 삭제를 실패하였습니다.");
					mv.addObject("url", "/plusMBoard/detail.do?plusMNo=" + plusMNo);
					mv.setViewName("common/message");
				}
			}
		} catch (Exception e) {
			mv.addObject("msg", "게시글 삭제 도중 오류가 발생하였습니다.");
			mv.addObject("url", "/plusMBoard/detail.do?plusMNo=" + plusMNo);
			mv.setViewName("common/message");
		}
		return mv;
	}

	// 좋아요 삭제
	@RequestMapping(value = "/plusMLike/delete.do", method = RequestMethod.GET)
	public ModelAndView deletePlusMLike(ModelAndView mv, @RequestParam("refPlusMNo") int refPlusMNo,
			HttpSession session) {
		try {
			String memberId = (String) session.getAttribute("memberId");
			PlusMLike plusMLike = new PlusMLike(refPlusMNo, memberId);
			int result = plusMBoardService.deletePlusMLike(plusMLike);
			if (result > 0) {
				mv.setViewName("redirect:/plusMBoard/detail.do?plusMNo=" + refPlusMNo);
			} else {
				mv.addObject("msg", "좋아요 삭제를 실패하였습니다.");
				mv.addObject("url", "/plusMBoard/detail.do?plusMNo=" + refPlusMNo);
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "좋아요 등록 도중 오류가 발생하였습니다.");
			mv.addObject("url", "/plusMBoard/detail.do?plusMNo=" + refPlusMNo);
			mv.setViewName("common/message");
		}
		return mv;
	}

	// 게시글 전체 리스트 조회
	@RequestMapping(value = "/plusMBoard/list.do", method = RequestMethod.GET)
	public ModelAndView showPlusMBoardList(ModelAndView mv,
			@RequestParam(value = "page", required = false, defaultValue = "1") Integer currentPage,
			@RequestParam(value = "orderBy", required = false, defaultValue = "latest") String orderBy) {
		Integer totalCount = plusMBoardService.getListCount();
		PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
		List<PlusMBoard> pMList = plusMBoardService.selectPlusMBoardList(pInfo, orderBy);
		int dntPeople = plusMBoardService.selectDntListCount();
		int dntAmount = plusMBoardService.selectAllDntAmount();
		mv.addObject("pInfo", pInfo);
		mv.addObject("pMList", pMList);
		mv.addObject("dntPeople", dntPeople);
		mv.addObject("dntAmount", dntAmount);
		mv.addObject("orderBy", orderBy);
		mv.setViewName("plusM/plusM");
		return mv;
	}

	// 게시글 상세 조회
	@RequestMapping(value = "/plusMBoard/detail.do", method = RequestMethod.GET)
	public ModelAndView showPlusMBoardDetail(ModelAndView mv, @RequestParam("plusMNo") int plusMNo, HttpSession session,
			@RequestParam(value = "page", required = false, defaultValue = "1") Integer currentPage) {
		String memberId = (String) session.getAttribute("memberId");
		if (memberId == null || memberId.equals("")) {
			mv.addObject("msg", "로그인이 필요한 서비스입니다.");
			mv.addObject("url", "/member/login.do");
			mv.setViewName("common/message");
		} else {
			PlusMLike plusMLike = new PlusMLike(plusMNo, memberId);
			int likeYn = plusMBoardService.selectLikeYn(plusMLike); // 좋아요 여부 1:o, 2:x
			Donation donation = new Donation(plusMNo, memberId);
			int dntYn = plusMBoardService.selectDntYn(donation);
			int memberCurPoint = plusMBoardService.selectMemberPoint(memberId);
			int likeCount = plusMBoardService.selectLikeCount(plusMNo);
			PlusMBoard plusMBoard = plusMBoardService.selectOneByNo(plusMNo);
			Integer totalCount = plusMReplyService.getListCount(plusMNo);
			PageInfo pInfo = this.getReplyPageInfo(currentPage, totalCount);
			List<PlusMReply> pMRList = plusMReplyService.selectPlusMReplyList(pInfo, plusMNo);
			mv.addObject("plusMBoard", plusMBoard);
			mv.addObject("pInfo", pInfo);
			mv.addObject("pMRList", pMRList);
			mv.addObject("likeYn", likeYn);
			mv.addObject("dntYn", dntYn);
			mv.addObject("memberCurPoint", memberCurPoint);
			mv.addObject("likeCount", likeCount);
			mv.setViewName("plusM/plusMdetail");
		}
		return mv;
	}

	// 게시글 페이지 네비게이션
	private PageInfo getPageInfo(Integer currentPage, Integer totalCount) {
		PageInfo pInfo = null;
		int recordCountPerPage = 6;
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

	// 댓글 페이지 네비게이션
	private PageInfo getReplyPageInfo(Integer currentPage, Integer totalCount) {
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

	// 파일 저장
	private Map<String, Object> saveFile(HttpServletRequest request, MultipartFile uploadFile) throws Exception {
		Map<String, Object> fileMap = new HashMap<String, Object>();
		// 파일 이름 구하기
		String fileName = uploadFile.getOriginalFilename();
		// resources 경로 구하기
		String root = request.getSession().getServletContext().getRealPath("resources");
		// 파일 저장경로 구하기
		String saveFolder = root + "\\puploadFiles";
		// 파일 저장 전 폴더 만들기
		File folder = new File(saveFolder);
		if (!folder.exists()) {
			folder.mkdir();
		}
		// 파일 확장자 구하기
		String extension = fileName.substring(fileName.lastIndexOf(".") + 1);
		// 시간으로 파일 리네임 하기
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String fileRename = sdf.format(new Date(System.currentTimeMillis())) + "." + extension;
		// 파일 저장
		String savePath = saveFolder + "\\" + fileRename;
		File file = new File(savePath);
		uploadFile.transferTo(file);
		// Map에 넣어주기
		fileMap.put("fileName", fileName);
		fileMap.put("fileRename", fileRename);
		fileMap.put("filePath", "../resources/puploadFiles/" + fileRename);
		// Map 리턴
		return fileMap;
	}

	// 파일 삭제
	private void deleteFile(HttpServletRequest request, String fileRename) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String delFilepath = root + "\\puploadFiles\\" + fileRename;
		File file = new File(delFilepath);
		if (file.exists()) {
			file.delete();
		}
	}

}
