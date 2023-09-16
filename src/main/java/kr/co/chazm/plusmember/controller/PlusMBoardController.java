package kr.co.chazm.plusmember.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.chazm.plusmember.domain.PageInfo;
import kr.co.chazm.plusmember.domain.PlusMBoard;
import kr.co.chazm.plusmember.service.PlusMBoardService;

@Controller
public class PlusMBoardController {

	@Autowired
	private PlusMBoardService plusMBoardService;

	@RequestMapping(value = "/plusMBoard/insert.do", method = RequestMethod.GET)
	public ModelAndView showInsertPlusMBoardForm(ModelAndView mv) {
		mv.setViewName("plusM/plusMinsert");
		return mv;
	}

	@RequestMapping(value = "/plusMBoard/insert.do", produces = "text/html;charset=UTF-8;", method = RequestMethod.POST)
	public @ResponseBody String insertPlusMBoard(@ModelAttribute PlusMBoard plusMBoard,
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
				return "<script>alert('게시글이 등록되었습니다.'); location.href='/plusMBoard/list.do';</script>";
			} else {
				return "<script>alert('게시글이 등록을 실패하였습니다.'); history.back();</script>";
			}
		} catch (Exception e) {
			return "<script>alert('게시글 등록 중 오류가 발생하였습니다.'); history.back();</script>";
		}
	}

	@RequestMapping(value="/plusMBoard/update.do", method=RequestMethod.GET)
	public ModelAndView showUpdatePlusMBoardForm(ModelAndView mv,
			@RequestParam("plusMNo") int plusMNo) {
		PlusMBoard plusMBoard = plusMBoardService.selectOneByNo(plusMNo);
		mv.addObject("plusMBoard", plusMBoard);
		mv.setViewName("plusM/plusMupdate");
		return mv;
	}
	
	@RequestMapping(value="/plusMBoard/update.do", produces = "text/html;charset=UTF-8;", method=RequestMethod.POST)
	public @ResponseBody String updatePlusMBoard(
			@ModelAttribute PlusMBoard plusMBoard
			, @RequestParam(value="uploadFile", required=false) MultipartFile uploadFile
			, HttpServletRequest request
			) {
		try {
			if(uploadFile != null && !uploadFile.isEmpty()) {
				String fileRename = plusMBoard.getPlusMFilerename();
				if(fileRename != null) {
					this.deleteFile(request, fileRename);
				}
				Map<String, Object> pMap = this.saveFile(request, uploadFile);
				plusMBoard.setPlusMFilename((String)pMap.get("fileName"));
				plusMBoard.setPlusMFilerename((String) pMap.get("fileRename"));
				plusMBoard.setPlusMFilepath((String) pMap.get("filePath"));
			}
			int result = plusMBoardService.updatePlusMBoard(plusMBoard);
			if(result > 0) {
				return "<script>alert('게시글이 정상적으로 수정되었습니다.'); location.href='/plusMBoard/detail.do?plusMNo="+plusMBoard.getPlusMNo()+"';</script>";
			}else {
				return "<script>alert('게시글 수정을 실패하였습니다.'); history.back();</script>";
			}
		} catch (Exception e) {
			return "<script>alert('게시글 수정 도중 오류가 발생하였습니다.'); history.back();</script>";
		}
	}

	@RequestMapping(value = "/plusMBoard/list.do", method = RequestMethod.GET)
	public ModelAndView showPlusMBoardList(ModelAndView mv,
			@RequestParam(value = "page", required = false, defaultValue = "1") Integer currentPage) {
		Integer totalCount = plusMBoardService.getListCount();
		PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
		List<PlusMBoard> pMList = plusMBoardService.selectPlusMBoardList(pInfo);
		mv.addObject("pInfo", pInfo);
		mv.addObject("pMList", pMList);
		mv.setViewName("plusM/plusM");
		return mv;
	}

	@RequestMapping(value = "/plusMBoard/detail.do", method = RequestMethod.GET)
	public ModelAndView showPlusMBoardDetail(ModelAndView mv, @RequestParam("plusMNo") int plusMNo) {
		PlusMBoard plusMBoard = plusMBoardService.selectOneByNo(plusMNo);
		if (plusMBoard != null) {
			mv.addObject("plusMBoard", plusMBoard);
			mv.setViewName("plusM/plusMdetail");
		}
		return mv;
	}

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

	private void deleteFile(HttpServletRequest request, String fileRename) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String delFilepath = root+"\\puploadFiles\\"+fileRename;
		File file = new File(delFilepath);
		if(file.exists()) {
			file.delete();
		}
		
	}

}
