package kr.co.chazm.lost.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.sql.Date;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.chazm.lost.domain.LostBoard;
import kr.co.chazm.lost.domain.PageInfo;
import kr.co.chazm.lost.service.LostBoardService;

@Controller
public class LostBoardController {
	@Autowired
	private LostBoardService lService;
	
	/**
	 * 분실물 게시판 목록조회
	 * @param mv
	 * @param currentPage
	 * @param session
	 * @return
	 */
	@ResponseBody 
	@RequestMapping(value="/lostBoard/list.do", method=RequestMethod.GET, produces="text/html;charset=UTF-8;")
	public ModelAndView showLostBoardList(ModelAndView mv
										, @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage
										,HttpSession session) {
//		String lostWriter = (String)session.getAttribute("memberId");
		
		Integer totalCount = lService.getListCount();
		PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
		List<LostBoard>lList = lService.selectLostBoardList(pInfo);
		try {
			if(lList.size()>0) {
				mv.addObject("lList", lList).addObject("pInfo",pInfo).setViewName("lost/lostBoard");
			}else {
				mv.addObject("msg", "등록된 분실물 리스트가 없습니다").setViewName("lost/lostBoard");
			}		
		} catch (Exception e) {
			mv.setViewName("<script>alert('분실물 목록조회 실패'); history.back();</script>");
		}
		return mv;
	}
	
	/**
	 * 분실물 등록 페이지로 이동
	 * @param mv
	 * @return
	 */
	@RequestMapping(value="/lostBoard/insert.do", method=RequestMethod.GET)
	public ModelAndView showInsertLostBoardForm(ModelAndView mv) {
		mv.setViewName("lost/insertLostBoardForm");
		return mv;
	}
	
	@ResponseBody 
	@RequestMapping(value="/lostBoard/insert.do", method=RequestMethod.POST)
	public ModelAndView insertLostBoard(ModelAndView mv
//										, @ModelAttribute LostBoard lostBoard
//										, @RequestParam("lostNo") Integer lostNo
										, @RequestParam("lostTitle") String lostTitle
										, @RequestParam("lostContent") String lostContent
										, @RequestParam("lostWriter") String lostWriter
										, @RequestParam("lostCategory") String lostCategory
										, @RequestParam("lostLocation") String lostLocation
										, @RequestParam(value="lostPlace", required=false ) String lostPlace
										, @RequestParam(value="lostDate", required=false ) Date lostDate
										, @RequestParam("lostColor") String lostColor
										, @RequestParam(value="lostBrand", required=false ) String lostBrand
										, @RequestParam(value="uploadFile", required=false) MultipartFile uploadFile
										, HttpSession session
										, HttpServletRequest request) {
		//INSERT INTO LOST_BOARD_TBL VALUES ()
		LostBoard lostBoard = new LostBoard(lostTitle, lostContent, lostWriter, null, null, null, lostCategory, lostLocation, lostPlace, lostDate, lostColor, lostBrand);
		try {
			lostWriter = (String)session.getAttribute("memberId");
//			Integer lostNo = lostBoard.setLostNo(Integer lostNo);


				//로그인 한 경우에만 글쓰기 가능 추가할것
				
				//분실물 사진 업로드
				if(uploadFile !=null && !uploadFile.getOriginalFilename().equals("")) {
					Map<String, Object> lMap = this.saveFile(request, uploadFile);
					lostBoard.setLostFilename((String)lMap.get("fileName"));
					lostBoard.setLostFilerename((String)lMap.get("fileRename"));
					lostBoard.setLostFilepath((String)lMap.get("filePath"));
				}
				Integer result = lService.insertLostBoard(lostBoard);
				if(result > 0) {
//					mv.setViewName("redirect://lostBoard/detail.do?lostNo="+lostNo);
					mv.setViewName("/lostBoard/list.do");
				}else {
//					mv.setViewName("<script>alert('글 등록에 실패했습니다'); history.back();</script>");
					mv.addObject("msg", "글 등록에 실패했습니다").setViewName("lost/lostBoard");
				}

		} catch (Exception e) {
			mv.addObject("msg", "글 등록을 실패했습니다").setViewName("lost/lostBoard");
		}
		return mv;
	}
	
	@RequestMapping(value="/lostBoard/detail.do", method=RequestMethod.GET)
	public ModelAndView showLostBoardDetail(ModelAndView mv
										, @RequestParam ("lostNo") Integer lostNo
										, HttpSession session) {
		//SELECT * FROM LOST_BOARD_TBL WHERE LOST_NO = ?
//		String lostWriter = (String)session.getAttribute("memberId");
		
		try {
			LostBoard lostBoard = lService.selectOneByNo(lostNo);
			if(lostBoard != null) {
				mv.addObject("lostBoard", lostBoard);
				mv.setViewName("lostBoard/lostBoardDetail");
			}else {
				mv.addObject("msg", "게시글 조회에 실패했습니다").setViewName("lost/lostBoard");
			}
		} catch (Exception e) {
			mv.addObject("msg", "게시글 조회를 실패했습니다").setViewName("lost/lostBoard");
		}
		return mv;
	}
	
	
	
	
	

	
	
	
	
//	공통메소드*******************************************************************************************
	
	/**
	 * 페이지네이션 메소드
	 * @param currentPage
	 * @param totalCount
	 * @return
	 */
	public PageInfo getPageInfo(Integer currentPage, Integer totalCount) {
		int recordCountPerPage = 9;
		int naviCountPerPage = 5;
		int naviTotalCount;
		
		naviTotalCount = (int)Math.ceil((double)totalCount/recordCountPerPage);
		
		int startNavi = ((int)((double)currentPage/naviCountPerPage+0.9)-1)*naviCountPerPage+1;
		int endNavi = startNavi + naviCountPerPage -1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		PageInfo pInfo = new PageInfo(currentPage, recordCountPerPage, naviCountPerPage, startNavi, endNavi, naviTotalCount, totalCount);
		return pInfo;
	}
	
	/**
	 * 파일삭제 메소드
	 * @param fileRename
	 * @param request
	 */
	private void deleteFile(String fileRename, HttpServletRequest request ) {
		String root = request.getSession().getServletContext().getRealPath("resources"); //파일 경로 가져오기
		String delFilepath = root+"\\luploadFiles\\"+fileRename;
		File file = new File(delFilepath);
		if(file.exists()) {  
			file.delete();
		}
	}
	
	/**
	 * 파일저장메소드
	 * @param request
	 * @param uploadFile
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public Map<String, Object> saveFile(HttpServletRequest request, MultipartFile uploadFile) throws IllegalStateException, IOException{
		Map<String, Object>fileMap = new HashMap<String, Object>();
		//resources 경로 구하기 
		String root = request.getSession().getServletContext().getRealPath("resources"); //살제 저장하고싶은 경로(resources)
		//파일 저장 경로 구하기
		String savePath = root + "\\luploadFiles";
		//파일이름 구하기
		String fileName = uploadFile.getOriginalFilename();
		//파일확장자구하기
		String extention = fileName.substring(fileName.lastIndexOf(".")+1);
		//시간으로 파일명 리네임하기 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");  
		String strResult = sdf.format(new Date(System.currentTimeMillis()));
		String ext = fileName.substring(fileName.lastIndexOf(".")+1);	
		String fileRename = "l"+strResult+"."+extention; 
		
		//파일 저장 전 폴더만들기 
		File saveFolder = new File(savePath);
		if(!saveFolder.exists()) {
			saveFolder.mkdir();
		}
		
		//파일 저장 
		File saveFile = new File(savePath+"\\"+fileRename);
		uploadFile.transferTo(saveFile); 
		fileMap.put("fileName", fileName);
		fileMap.put("fileRename", fileRename);
		fileMap.put("filePath", "../resources/luploadFiles/"+fileRename);
		
		return fileMap;		
		
	}
	

}
