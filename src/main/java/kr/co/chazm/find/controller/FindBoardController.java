package kr.co.chazm.find.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
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
import kr.co.chazm.find.domain.PageInfo;
import kr.co.chazm.find.service.FindBoardService;

@Controller
public class FindBoardController {

	@Autowired
	private FindBoardService fBService;
	
	@RequestMapping(value = "/findBoard/insert.do", method = RequestMethod.POST)
	public ModelAndView insertFindBoard(ModelAndView mv
			, @ModelAttribute FindBoard findBoard
			, @RequestParam(value="uploadFile", required = false) MultipartFile uploadFile
			, HttpServletRequest request
			, HttpSession session) {
		try {
//			String findWriter = (String)session.getAttribute("memberId");
			String findWriter = "test";
			String memberName = "test";
			String getPlace = "test";
			findBoard.setMemberName(memberName);
			findBoard.setGetPlace(getPlace);
			if(findWriter != null && !findWriter.equals("")) {
				findBoard.setFindWriter(findWriter);
				if(uploadFile != null && !uploadFile.getOriginalFilename().equals("")) {
					// 파일 정보(이름, 리네임, 경로, 크기) 및 파일 저장 
					Map<String, Object> fBMap = this.saveFile(request, uploadFile);
					findBoard.setFindFilename((String)fBMap.get("fileName"));
					findBoard.setFindFilerename((String)fBMap.get("fileRename"));
					findBoard.setFindFilepath((String)fBMap.get("filePath"));
				}
				int result = fBService.insertFindBoard(findBoard);
				if(result > 0) {
					mv.setViewName("redirect:/findBoard/list.do");
				} else {
					mv.addObject("msg", "게시글 등록이 완료되지 않았습니다.");
					mv.addObject("error", "게시글 등록 실패");
					mv.addObject("url", "/findBoard/insert.do");
					mv.setViewName("alert");
				}
			} else {
				mv.addObject("msg", "로그인 정보가 존재하지 않습니다.");
				mv.addObject("error", "로그인이 필요합니다.");
				mv.addObject("url", "/index.jsp");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("error", e.getMessage());
			mv.addObject("url", "/findBoard/insert.do");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping(value = "/findBoard/update.do", method = RequestMethod.POST)
	public ModelAndView updateFindBoard(ModelAndView mv
			, @ModelAttribute FindBoard findBoard
			, @RequestParam(value="uploadFile", required = false) MultipartFile uploadFile
			, HttpServletRequest request
			, HttpSession session) {
		try {
//			String findWriter = (String)session.getAttribute("memberId");
			String findWriter = "test";	
			if(findWriter != null && !findWriter.equals("")) {
				findBoard.setFindWriter(findWriter);
				if(uploadFile != null && !uploadFile.getOriginalFilename().equals("")) {
					// 기존 업로드 파일 있으면 삭제 
					String fileRename = findBoard.getFindFilerename();
					if(fileRename != null) {
						this.deleteFile(fileRename, request);
					}
					// 새로운 파일 저장 - 파일 정보(이름, 리네임, 경로, 크기) 및 파일 저장 
					Map<String, Object> fBMap = this.saveFile(request, uploadFile);
					findBoard.setFindFilename((String)fBMap.get("fileName"));
					findBoard.setFindFilerename((String)fBMap.get("fileRename"));
					findBoard.setFindFilepath((String)fBMap.get("filePath"));
				}
				int result = fBService.updateFindBoard(findBoard);
				if(result > 0) {
					mv.setViewName("redirect:/findBoard/detail.do?findNo="+findBoard.getFindNo());
				} else {
					mv.addObject("msg", "게시글 수정이 완료되지 않았습니다.");
					mv.addObject("error", "게시글 수정 실패");
					mv.addObject("url", "/findBoard/update.do?findNo="+findBoard.getFindNo());
					mv.setViewName("common/errorPage");
				} 
			} else {
				mv.addObject("msg", "로그인 정보가 존재하지 않습니다.");
				mv.addObject("error", "로그인이 필요합니다.");
				mv.addObject("url", "/findBoard/update.do?findNo="+findBoard.getFindNo());
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("error", e.getMessage());
			mv.addObject("url", "/findBoard/update.do?findNo="+findBoard.getFindNo());
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping(value = "/findBoard/delete.do", method = RequestMethod.GET)
	public ModelAndView deleteFindBoard(
//			@ModelAttribute FindBoard findBoard
			@RequestParam("findNo") int findNo
			, HttpSession session
			, ModelAndView mv) {
		try {
			int result = fBService.deleteFindBoard(findNo);
			if(result > 0) {
				mv.setViewName("redirect:/findBoard/list.do");
			} else {
				mv.addObject("msg", "게시글 삭제가 완료되지 않았습니다.");
				mv.addObject("error", "게시글 삭제 실패");
				mv.addObject("url", "/findBoard/list.do");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("error", e.getMessage());
			mv.addObject("url", "/findBoard/detail.do?findNo="+findNo);
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping(value = "/findBoard/insert.do", method = RequestMethod.GET)
	public ModelAndView showInsertFindBoardForm(ModelAndView mv) {
		mv.setViewName("find/findBoardInsert");
		return mv;
	}
	
	@RequestMapping(value = "/findBoard/update.do", method = RequestMethod.GET)
	public ModelAndView showUpdateFindBoardForm(ModelAndView mv
			,@RequestParam("findNo") int findNo) {
		try {
			FindBoard findBoard = fBService.selectFindBoardByNo(findNo);
			if(findBoard != null) {
				mv.addObject("findBoard", findBoard);
				mv.setViewName("find/findBoardUpdate");
			} else {
				mv.addObject("msg", "데이터 조회가 완료되지 않았습니다.");
				mv.addObject("error", "데이터 조회 실패");
				mv.addObject("url", "/index.jsp");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("error", e.getMessage());
			mv.addObject("url", "/index.jsp");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping(value = "/findBoard/list.do", method = RequestMethod.GET)
	public ModelAndView showFindBoardList(ModelAndView mv) {
		// selectFindBoardList
		return mv;
	}
	
	@RequestMapping(value = "/findBoard/detail.do", method = RequestMethod.GET)
	public ModelAndView showFindBoardDetail(
			@RequestParam("findNo") int findNo
			, ModelAndView mv) {
		// selectFindBoardByNo
		try {
			FindBoard findBoard = fBService.selectFindBoardByNo(findNo);
			if(findBoard != null) {
//				List<FindReply> replyList = rService.selectReplyList(findNo);
//				if(replyList.size() > 0) {
//					mv.addObject("rList", replyList);
//				}
				mv.addObject("findBoard", findBoard);
				mv.setViewName("find/findBoardDetail");
			} else {
				mv.addObject("msg", "게시글 조회가 완료되지 않았습니다.");
				mv.addObject("error", "게시글 상세 조회 실패");
				mv.addObject("url", "/findBoard/list.do");
				mv.setViewName("common/errorPage");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의하세요.");
			mv.addObject("error", e.getMessage());
			mv.addObject("url", "/findBoard/list.do");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping(value = "/findBoard/search.do", method = RequestMethod.GET)
	public ModelAndView showFindBoardSearch(ModelAndView mv) {
		// searchFindByKeyword
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
		String fileRename = "B" + sdf.format(new Date(System.currentTimeMillis())) + "." + extension;
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
}
