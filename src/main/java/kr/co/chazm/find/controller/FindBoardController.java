package kr.co.chazm.find.controller;

import java.io.File;
import java.io.IOException;
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

import kr.co.chazm.find.domain.FindBoard;
import kr.co.chazm.find.domain.FindLike;
import kr.co.chazm.find.domain.FindReply;
import kr.co.chazm.find.domain.PageInfo;
import kr.co.chazm.find.service.FindBoardService;
import kr.co.chazm.find.service.FindReplyService;
import kr.co.chazm.member.domain.Member;
import kr.co.chazm.member.service.MemberService;

@Controller
public class FindBoardController {

	@Autowired
	private FindBoardService findBoardService;
	
	@Autowired
	private FindReplyService findReplyService;
	
	@Autowired
	private MemberService memberService;
	
	// 게시글 등록
	@RequestMapping(value = "/findBoard/insert.do", method = RequestMethod.POST)
	public ModelAndView insertFindBoard(ModelAndView mv
			, @ModelAttribute FindBoard findBoard
			, @RequestParam(value="uploadFile", required = false) MultipartFile uploadFile
			, HttpServletRequest request
			, HttpSession session) {
		try {
			String memberId = (String)session.getAttribute("memberId");
			// id를 통해 member정보 가져오기 
			Member member = memberService.selectOneById(memberId);
			String findWriter = member.getMemberId();
			String memberName = member.getMemberName();
			String getPlace = member.getMemberAddress();
			findBoard.setFindWriter(findWriter);
			findBoard.setMemberName(memberName);
			findBoard.setGetPlace(getPlace);
			findBoard.setFindWriter(findWriter);
			if(uploadFile != null && !uploadFile.getOriginalFilename().equals("")) {
				// 파일 정보(이름, 리네임, 경로) 및 파일 저장 
				Map<String, Object> fBMap = this.saveFile(request, uploadFile);
				findBoard.setFindFilename((String)fBMap.get("fileName"));
				findBoard.setFindFilerename((String)fBMap.get("fileRename"));
				findBoard.setFindFilepath((String)fBMap.get("filePath"));
			}
			int result = findBoardService.insertFindBoard(findBoard);
			if(result > 0) {
				//POINT_TBL INSERT, MEMBER_TBL UPDATE
				Map<String, Object> pMap = new HashMap<String, Object>(); 
				pMap.put("memberId", memberId);
				pMap.put("point", 500);
				pMap.put("pointDetails", "습득물 게시판 글 작성 포인트 지급");
				int insertPoint = findBoardService.insertPoint(pMap);
				int updateMemberPoint = findBoardService.updateMemberPoint(pMap);
				mv.addObject("msg", "게시글이 등록되었습니다.");
				mv.addObject("url", "/findBoard/list.do");
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "게시글 등록이 완료되지 않았습니다.");
				mv.addObject("url", "/findBoard/insert.do");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("url", "/findBoard/insert.do");
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	// 게시글 수정
	@RequestMapping(value = "/findBoard/update.do", method = RequestMethod.POST)
	public ModelAndView updateFindBoard(ModelAndView mv, @ModelAttribute FindBoard findBoard
			, @RequestParam(value="uploadFile", required = false) MultipartFile uploadFile
			, HttpServletRequest request, HttpSession session) {
		try {
			if(uploadFile != null && !uploadFile.getOriginalFilename().equals("")) {
				// 기존 업로드 파일 있으면 삭제 
				String fileRename = findBoard.getFindFilerename();
				if(fileRename != null) {
					this.deleteFile(fileRename, request);
				}
				// 새로운 파일 저장 - 파일 정보(이름, 리네임, 경로) 및 파일 저장 
				Map<String, Object> fBMap = this.saveFile(request, uploadFile);
				findBoard.setFindFilename((String)fBMap.get("fileName"));
				findBoard.setFindFilerename((String)fBMap.get("fileRename"));
				findBoard.setFindFilepath((String)fBMap.get("filePath"));
			}
			int result = findBoardService.updateFindBoard(findBoard);
			if(result > 0) {
				mv.addObject("msg", "게시글이 수정되었습니다.");
				mv.addObject("url", "/findBoard/detail.do?findNo="+findBoard.getFindNo());
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "게시글 수정이 완료되지 않았습니다.");
				mv.addObject("url", "/findBoard/update.do?findNo="+findBoard.getFindNo());
				mv.setViewName("common/message");
			} 
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("url", "/findBoard/update.do?findNo="+findBoard.getFindNo());
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	// 게시글 삭제 
	@RequestMapping(value = "/findBoard/delete.do", method = RequestMethod.GET)
	public ModelAndView deleteFindBoard(
			ModelAndView mv, @RequestParam("findNo") int findNo, HttpSession session) {
		try {
			int result = findBoardService.deleteFindBoard(findNo);
			if(result > 0) {
				// 댓글 있는지 갯수 확인 하고 진행 
				int reply = findReplyService.getReplyCount(findNo);
				if(reply > 0) {
					int replyDel = findReplyService.deleteFindBoardReply(findNo);
				}
				// 좋아요 있는지 갯수 확인 하고 진행
				int like = findBoardService.getLikeCont(findNo);
				if(like > 0) {
					int likeDel = findBoardService.deleteFindBoardLike(findNo);
				}
				mv.addObject("msg", "게시글이 삭제되었습니다.");
				mv.addObject("url", "/findBoard/list.do");
				mv.setViewName("common/message");
			} else {
				mv.addObject("msg", "게시글 삭제가 완료되지 않았습니다.");
				mv.addObject("url", "/findBoard/list.do");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("url", "/findBoard/detail.do?findNo="+findNo);
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	// 인계완료 
	@RequestMapping(value = "/findBoard/complete.do", method = RequestMethod.POST)
	public ModelAndView findComplete(ModelAndView mv, @RequestParam("findNo") int findNo, HttpSession session) {
		int result = findBoardService.findComplete(findNo);
		if(result > 0) {
			// 댓글 있는지 갯수 확인 하고 진행 
			int reply = findReplyService.getReplyCount(findNo);
			if(reply > 0) {
				int replyComplte = findReplyService.deleteFindBoardReply(findNo);
			}
			// 좋아요 있는지 갯수 확인 하고 진행
			int like = findBoardService.getLikeCont(findNo);
			if(like > 0) {
				int likeComplte = findBoardService.deleteFindBoardLike(findNo);
			}
			String memberId = (String)session.getAttribute("memberId");
			//POINT_TBL INSERT, MEMBER_TBL UPDATE
			Map<String, Object> pMap = new HashMap<String, Object>(); 
			pMap.put("memberId", memberId);
			pMap.put("point", 1000);
			pMap.put("pointDetails", "습득물 인계완료 포인트 지급");
			int insertPoint = findBoardService.insertPoint(pMap);
			int updateMemberPoint = findBoardService.updateMemberPoint(pMap);
			mv.addObject("msg", "인계 처리가 완료되었습니다.");
			mv.addObject("url", "/findBoard/list.do");
			mv.setViewName("common/message");
		} else {
			mv.addObject("msg", "인계 처리가 완료되지 않았습니다.");
			mv.addObject("url", "/findBoard/list.do");
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	
	
	// 게시글 등록 페이지 조회
	@RequestMapping(value = "/findBoard/insert.do", method = RequestMethod.GET)
	public ModelAndView showInsertFindBoardForm(ModelAndView mv, HttpSession session) {
		String memberId = (String)session.getAttribute("memberId");
		if(memberId != null && !memberId.equals("")) {
			Integer memberGrade = (Integer)session.getAttribute("memberGrade");
			if(memberGrade == 2) {
				mv.setViewName("find/findBoardInsert");
			} else {
				mv.addObject("msg", "습득물 등록은 기업회원만 가능합니다.").addObject("url", "/findBoard/list.do").setViewName("common/message");
			}
		} else {
			mv.addObject("msg", "로그인 후 이용 가능합니다.").addObject("url", "/findBoard/list.do").setViewName("common/message");
		}
		return mv;
	}
	
	// 게시글 수정 페이지 조회
	@RequestMapping(value = "/findBoard/update.do", method = RequestMethod.GET)
	public ModelAndView showUpdateFindBoardForm(ModelAndView mv
			,@RequestParam("findNo") int findNo) {
		try {
			FindBoard findBoard = findBoardService.selectFindBoardByNo(findNo);
			if(findBoard != null) {
				mv.addObject("findBoard", findBoard);
				mv.setViewName("find/findBoardUpdate");
			} else {
				mv.addObject("msg", "데이터 조회가 완료되지 않았습니다.");
				mv.addObject("url", "/index.jsp");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("url", "/index.jsp");
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	// 리스트 조회
	@RequestMapping(value = "/findBoard/list.do", method = RequestMethod.GET)
	public ModelAndView showFindBoardList(
			@RequestParam(value = "page", required=false, defaultValue = "1") Integer currentPage
			, ModelAndView mv) {
		// selectFindBoardList
		try {
			Integer totalCount = findBoardService.getListCount();
			PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
			List<FindBoard> fBList = findBoardService.selectFindBoardList(pInfo);
			if(!fBList.isEmpty()) {
				mv.addObject("pInfo", pInfo).addObject("fBList", fBList).setViewName("find/findBoardList");
			} else {
				mv.addObject("msg", "게시글 목록 조회가 완료되지 않았습니다.");
				mv.addObject("url", "/index.jsp");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("url", "/index.jsp");
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	// 상세 페이지 조회
	@RequestMapping(value = "/findBoard/detail.do", method = RequestMethod.GET)
	public ModelAndView showFindBoardDetail(
			HttpSession session
			, @RequestParam(value = "page", required = false, defaultValue = "1") Integer currentPage
			, @RequestParam("findNo") int findNo
			, ModelAndView mv) {
		try {			
			String memberId = (String) session.getAttribute("memberId");
			FindBoard findBoard = findBoardService.selectFindBoardByNo(findNo);
			if(findBoard != null) {
				FindLike findLike = new FindLike(findNo, memberId);
				int likeYn = findBoardService.selectLikeYn(findLike);
				Integer replyCount = findReplyService.getReplyCount(findNo);
				List<FindReply> fRList = findReplyService.selectFindReplyList(findNo);
				List<FindReply> fRRList = findReplyService.selectFindReReplyList(findNo);
				mv.addObject("findBoard", findBoard);
				mv.addObject("fRList", fRList).addObject("fRRList", fRRList).addObject("totalCount", replyCount);
				mv.addObject("likeYn", likeYn);
				mv.setViewName("find/findBoardDetail");
			} else {
				mv.addObject("msg", "게시글 조회가 완료되지 않았습니다.");
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
	
	// 검색 기능 
	@RequestMapping(value = "/findBoard/search.do", method = RequestMethod.GET)
	public ModelAndView showFindBoardSearch(
			@RequestParam(value="findDateStart", required = false) String findDateStart
            , @RequestParam(value="findDateEnd", required = false) String findDateEnd
            , @RequestParam(value="findSearchCondition", required = false) String findSearchCondition
            , @RequestParam(value="findSearchKeyword", required = false) String findSearchKeyword
            , @ModelAttribute FindBoard findBoard
			, @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage
			, ModelAndView mv) {
		Map<String, String> paramMap = new HashMap<String, String>();
		// 검색 파라미터가 존재하는 경우에만 paramMap에 추가
	    if (findDateStart != null && !findDateStart.isEmpty()) {
	        paramMap.put("findDateStart", findDateStart);
	    }
	    if (findDateEnd != null && !findDateEnd.isEmpty()) {
	        paramMap.put("findDateEnd", findDateEnd);
	    }
	    if (findSearchCondition != null && !findSearchCondition.isEmpty()) {
	        paramMap.put("findSearchCondition", findSearchCondition);
	    }
	    if (findSearchKeyword != null && !findSearchKeyword.isEmpty()) {
	        paramMap.put("findSearchKeyword", findSearchKeyword);
	    }
		if (findBoard.getFindCategory() != null && !findBoard.getFindCategory().isEmpty()) {
	        paramMap.put("findCategory", findBoard.getFindCategory());
	    }
		if (findBoard.getFindLocation() != null && !findBoard.getFindLocation().isEmpty()) {
			paramMap.put("findLocation", findBoard.getFindLocation());			
		}
		if (findBoard.getFindPlace() != null && !findBoard.getFindPlace().isEmpty()) {	
			paramMap.put("findPlace", findBoard.getFindPlace());
		}
		if (findBoard.getFindColor() != null && !findBoard.getFindColor().isEmpty()) {
			paramMap.put("findColor", findBoard.getFindColor());
		}
		if (findBoard.getFindBrand() != null && !findBoard.getFindBrand().isEmpty()) {
			paramMap.put("findBrand", findBoard.getFindBrand());
		}
		int totalCount = findBoardService.getListCount(paramMap); // 페이징을 위한 검색 총 게시물 갯수 
		PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
		List<FindBoard> searchList = findBoardService.searchFindByKeyword(pInfo, paramMap);
		if(!searchList.isEmpty()) {
			mv.addObject("paramMap", paramMap);
			mv.addObject("findBoard", findBoard);
			mv.addObject("pInfo", pInfo);
			mv.addObject("searchList", searchList);
			mv.setViewName("find/findBoardSearchList");
		} else {
			mv.addObject("msg", "검색된 게시물이 없습니다.");
			mv.addObject("url", "/findBoard/list.do");
			mv.setViewName("common/message");
		}
		
		return mv;
	}
	
	
	// 좋아요 등록
	@RequestMapping(value = "/FindLike/insert.do", method = RequestMethod.GET)
	public ModelAndView insertFindLike(
			ModelAndView mv
			, @RequestParam("refFindNo") int refFindNo
			, HttpSession session) {
		try {
			String memberId = (String) session.getAttribute("memberId");
			FindLike findLike = new FindLike(refFindNo, memberId);
			int result = findBoardService.insertFineLike(findLike);
			if(result > 0) {
				mv.setViewName("redirect:/findBoard/detail.do?findNo=" + refFindNo);
			} else {
				mv.addObject("msg", "좋아요 등록에 실패했습니다.");
				mv.addObject("url", "/findBoard/detail.do?findNo=" + refFindNo);
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "좋아요 등록 중 오류가 발생하였습니다.");
			mv.addObject("url", "/findBoard/detail.do?findNo=" + refFindNo);
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	
	// 좋아요 삭제
	@RequestMapping(value = "/FindLike/delete.do", method = RequestMethod.GET)
	public ModelAndView deleteFindLike(
			ModelAndView mv
			, @RequestParam("refFindNo") int refFindNo
			, HttpSession session) {
		try {
			String memberId = (String) session.getAttribute("memberId");
			FindLike findLike = new FindLike(refFindNo, memberId);
			int result = findBoardService.deleteFindLike(findLike);
			if(result > 0) {
				mv.setViewName("redirect:/findBoard/detail.do?findNo=" + refFindNo);
			} else {
				mv.addObject("msg", "좋아요 삭제에 실패했습니다.");
				mv.addObject("url", "/findBoard/detail.do?findNo=" + refFindNo);
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "좋아요 삭제 중 오류가 발생하였습니다.");
			mv.addObject("url", "/findBoard/detail.do?findNo=" + refFindNo);
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	

	private Map<String, Object> saveFile(HttpServletRequest request, MultipartFile uploadFile) throws Exception {
		Map<String, Object> fileMap = new HashMap<String, Object>();
		// resources 경로 구하기
		String root = request.getSession().getServletContext().getRealPath("resources");
		// 파일 저장 경로 구하기
		String savePath = root + "\\fuploadFiles";
		// 파일 이름 
		String fileName = uploadFile.getOriginalFilename(); 
		// 파일 확장자 구하기
		String extension = fileName.substring(fileName.lastIndexOf(".")+1);
		// 시간으로 파일 리네임, 리네임을 위한 포맷 만들기 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String fileRename = "F" + sdf.format(new Date(System.currentTimeMillis())) + "." + extension;
		// 파일 저장 전폴더 만들기 
		File saveFolder = new File(savePath);
		if(!saveFolder.exists()) {
			saveFolder.mkdir();
		}
		// 파일 저장
		File saveFile = new File(savePath+"\\"+fileRename); // 업로드 파일 
		uploadFile.transferTo(saveFile);
		// 파일 정보 리턴
		fileMap.put("fileName", fileName);
		fileMap.put("fileRename", fileRename);
		fileMap.put("filePath", "../resources/fuploadFiles/"+fileRename);
		return fileMap;
	}

	private void deleteFile(String fileRename, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String delFilepath = root + "\\fuploadFiles\\" + fileRename;
		File file = new File(delFilepath);
		if(file.exists()) { // 파일이 존재하는지 확인 
			file.delete(); // 존재하면 삭제 
		}
	}

	private PageInfo getPageInfo(Integer currentPage, Integer totalCount) {
		int recordCountPerPage = 12;
		int naviCountPerPage = 5;
		int naviTotalCount = (int)Math.ceil((double)totalCount / recordCountPerPage);
		int startNavi = ((int)((double)currentPage/naviCountPerPage+0.9)-1)*naviCountPerPage+1;
		int endNavi = startNavi + naviCountPerPage - 1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		PageInfo pInfo = new PageInfo(currentPage, totalCount, naviTotalCount, recordCountPerPage, naviCountPerPage, startNavi, endNavi);
		return pInfo;
	}

	private PageInfo getReplyPageInfo(Integer currentPage, Integer totalCount) {
		int recordCountPerPage = 10;
		int naviCountPerPage = 5;
		int naviTotalCount = (int)Math.ceil((double)totalCount / recordCountPerPage);
		int startNavi = ((int)((double)currentPage/naviCountPerPage+0.9)-1)*naviCountPerPage+1;
		int endNavi = startNavi + naviCountPerPage - 1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		PageInfo pInfo = new PageInfo(currentPage, totalCount, naviTotalCount, recordCountPerPage, naviCountPerPage, startNavi, endNavi);
		return pInfo;
	}
}