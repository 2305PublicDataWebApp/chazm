package kr.co.chazm.lost.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
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
import kr.co.chazm.lost.domain.LostLike;
import kr.co.chazm.lost.domain.LostReply;
import kr.co.chazm.lost.domain.PageInfo;
import kr.co.chazm.lost.service.LostBoardService;
import kr.co.chazm.lost.service.LostReplyService;

@Controller
public class LostBoardController {
	@Autowired
	private LostBoardService lostBoardService;
	@Autowired
	private LostReplyService lostReplyService;
	
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
	
	
	/**
	 * 분실물 등록
	 * @param mv
	 * @param lostBoard
	 * @param lostTitle
	 * @param lostContent
	 * @param lostCategory
	 * @param lostLocation
	 * @param lostPlace
	 * @param lostDate
	 * @param lostColor
	 * @param lostBrand
	 * @param uploadFile
	 * @param session
	 * @param request
	 * @return
	 */
	@ResponseBody 
	@RequestMapping(value="/lostBoard/insert.do", method=RequestMethod.POST)
	public ModelAndView insertLostBoard(ModelAndView mv
										, @ModelAttribute LostBoard lostBoard
//										, @RequestParam("lostNo") Integer lostNo
										, @RequestParam("lostTitle") String lostTitle
										, @RequestParam("lostContent") String lostContent
										, @RequestParam("lostCategory") String lostCategory
										, @RequestParam(value="lostLocation", required=false ) String lostLocation
										, @RequestParam(value="lostPlace", required=false ) String lostPlace
										, @RequestParam(value="lostStartDate", required=false ) Date lostStartDate
										, @RequestParam(value="lostEndDate", required=false ) Date lostEndDate
										, @RequestParam("lostColor") String lostColor
										, @RequestParam(value="lostBrand", required=false ) String lostBrand
										, @RequestParam(value="uploadFile", required=false) MultipartFile uploadFile
										, HttpSession session
										, HttpServletRequest request) {
//		LostBoard lostBoard = new LostBoard(lostTitle, lostContent, null, null, null, lostCategory, lostLocation, lostPlace, lostDate, lostColor, lostBrand);
		
		try {
			String lostWriter = (String)session.getAttribute("memberId");

			//로그인 한 경우에만 글쓰기 가능
			if(lostWriter != null && !lostWriter.equals("")) {
				lostBoard.setLostWriter(lostWriter);
				//분실물 사진 업로드
				if(uploadFile !=null && !uploadFile.getOriginalFilename().equals("")) {
					Map<String, Object> lMap = this.saveFile(request, uploadFile);
					lostBoard.setLostFilename((String)lMap.get("fileName"));
					lostBoard.setLostFilerename((String)lMap.get("fileRename"));
					lostBoard.setLostFilepath((String)lMap.get("filePath"));
				}
				Integer result = lostBoardService.insertLostBoard(lostBoard);
				if(result > 0) {
//					mv.setViewName("redirect://lostBoard/detail.do?lostNo="+lostNo);
					mv.setViewName("redirect:/lostBoard/list.do");
					
				}else {
//					mv.setViewName("<script>alert('글 등록에 실패했습니다'); history.back();</script>");
					mv.addObject("msg", "글 등록에 실패했습니다.");
					mv.addObject("url", "lost/lostBoard");
					mv.setViewName("common/message");
				}
			}else {
				mv.addObject("msg", "로그인해야 글 등록이 가능합니다.");
				mv.addObject("url", "lost/lostBoard");
				mv.setViewName("common/message");
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의해주세요.");
			mv.addObject("url", "lost/lostBoard");
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	
	/**
	 * 분실물게시판 글수정페이지로 이동
	 * @param mv
	 * @param lostNo
	 * @return
	 */
	@RequestMapping(value="/lostBoard/update.do", method=RequestMethod.GET)
	public ModelAndView showUpdateLostBoardForm (ModelAndView mv
									  			, @RequestParam("lostNo") Integer lostNo) {
		try {
			LostBoard lostBoard = lostBoardService.selectOneByNo(lostNo);
			mv.addObject("lostBoard", lostBoard);
			mv.setViewName("lost/updateLostBoardForm");
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의해주세요.");
			mv.addObject("url", "/lostBoard/detail.do?lostNo="+lostNo);
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	
	/**
	 * 분실물게시판 글수정
	 * @param mv
	 * @param board
	 * @param session
	 * @param uploadFile
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/lostBoard/update.do", method=RequestMethod.POST)
	public ModelAndView updateLostBoard(ModelAndView mv
									  , @ModelAttribute LostBoard lostBoard
//									  , @RequestParam("lostNo") String lostNo
//									  , @RequestParam("lostTitle") String lostTitle
//									  , @RequestParam("lostContent") String lostContent
//									  , @RequestParam("lostCategory") String lostCategory
//									  , @RequestParam(value="lostLocation", required=false ) String lostLocation
//									  , @RequestParam(value="lostPlace", required=false ) String lostPlace
//									  , @RequestParam(value="lostStartDate", required=false ) Date lostStartDate
//									  , @RequestParam(value="lostEndDate", required=false ) Date lostEndDate
//									  , @RequestParam("lostColor") String lostColor
//									  , @RequestParam(value="lostBrand", required=false ) String lostBrand
									  , @RequestParam(value="uploadFile", required=false) MultipartFile uploadFile
									  , HttpSession session
									  , HttpServletRequest request) {
		//UPDATE LOST_BOARD_TBL SET  ~ WHERE LOST_NO = ? AND LOST_WRITER = ? AND L_STATE_YN = 'Y' 
		String url ="";
		try {
			//기존 삭제 후 재등록(저장)
			if(uploadFile != null && !uploadFile.getOriginalFilename().equals("")) {
				String lostFilerename = lostBoard.getLostFilerename();
				if(lostFilerename != null) {
					//파일삭제
					this.deleteFile(lostFilerename, request); 
				}
				//파일재등록
				Map<String, Object> lFileMap = this.saveFile(request, uploadFile);
				lostBoard.setLostFilename((String)lFileMap.get("fileName")); 
				lostBoard.setLostFilerename((String)lFileMap.get("fileRename")); 
				lostBoard.setLostFilepath((String)lFileMap.get("filePath"));  				
			}
			
			String lostWriter = (String)session.getAttribute("memberId");;
//			lostWriter = lostBoard.getLostWriter();
			
			url = "/lostBoard/detail.do?lostNo="+lostBoard.getLostNo();
			
			//로그인여부 확인
			if(lostWriter != null && !lostWriter.equals("")) {
				lostBoard.setLostWriter(lostWriter);
				Integer result = lostBoardService.updateLostBoard(lostBoard);
				if(result > 0) {
					mv.setViewName("redirect:"+url);
				}else {
					mv.addObject("msg", "글 수정을 실패했습니다.");
					mv.addObject("url", url);
					mv.setViewName("common/message");
				}
			}else {
				mv.addObject("msg", "자신이 작성한 글만 수정할 수 있습니다");
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
	 * 분실물게시판 글 삭제(비공개)
	 * @param mv
	 * @param lostNo
	 * @param lostWriter
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/lostBoard/delete.do", method=RequestMethod.GET)
	public ModelAndView deleteLostBoard(ModelAndView mv
									 , @RequestParam ("lostNo") Integer lostNo
									 , HttpSession session) {
		String url="/lostBoard/detail.do?lostNo="+lostNo;
		try {
			//UPDATE LOST_BOARD_TBL SET L_STATE_YN = 'N' WHERE LOST_NO = ? 
			
			String lostWriter = (String)session.getAttribute("memberId");
			LostBoard lostBoard = new LostBoard();
			lostBoard.setLostNo(lostNo);
			lostBoard.setLostWriter(lostWriter);
			
			//로그인 여부 확인
			if(lostWriter != null && !lostWriter.equals("")) {
				Integer result = lostBoardService.deleteLostBoard(lostBoard);
				if(result>0) {
					mv.setViewName("redirect:/lostBoard/list.do");
				}else {
					mv.addObject("msg", "글 삭제에 실패했습니다").setViewName("/lostBoard/list.do");
				}
			}else {
				mv.addObject("msg", ".");
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
			
			Integer totalCount = lostBoardService.getListCount();
			PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
			List<LostBoard>lList = lostBoardService.selectLostBoardList(pInfo);
			try {
				if(lList.size()>0) {
					mv.addObject("lList", lList).addObject("pInfo",pInfo).setViewName("lost/lostBoard");
				}else {
					mv.addObject("msg", "등록된 분실물 리스트가 없습니다").setViewName("lost/lostBoard");
				}		
			} catch (Exception e) {
				mv.addObject("msg", "관리자에게 문의해주세요.");
				mv.addObject("url", "redirect:/index.jsp");
				mv.setViewName("common/message");
			}
			return mv;
		}


	/**
		 * 글상세보기
		 * @param mv
		 * @param lostNo
		 * @param session
		 * @return
		 */
		@RequestMapping(value="/lostBoard/detail.do", method=RequestMethod.GET)
		public ModelAndView showLostBoardDetail(ModelAndView mv
											, @RequestParam ("lostNo") Integer lostNo
											
											) {
			//SELECT * FROM LOST_BOARD_TBL WHERE LOST_NO = ?
			try {
				LostBoard lostBoard = lostBoardService.selectOneByNo(lostNo);
				if(lostBoard != null) {	
					//댓글리스트 가져오기
//					Integer totalReplyCount = lostReplyService.getReplyListCount();
					List<LostReply>lRList = lostReplyService.selectReplyList(lostNo);
				
					if(lRList.size() > 0) {
//						mv.addObject("totalReplyCount", totalReplyCount);
						mv.addObject("lRList", lRList);				
					}else {
						mv.addObject("msg", "등록된 댓글이 없습니다.");
					}
					mv.addObject("lostBoard", lostBoard);
					mv.setViewName("lost/lostBoardDetail");
				}else {
					mv.addObject("msg", "게시글 조회에 실패했습니다");
					mv.addObject("url", "/lostBoard/list.do");
					mv.setViewName("common/message");
				}
			} catch (Exception e) {
				mv.addObject("msg", "관리자에게 문의해주세요.");
				mv.addObject("url", "/lostBoard/list.do");
				mv.setViewName("common/message");
			}
			return mv;
		}


	/**
	 * 게시글 검색(+페이징)
	 * @param mv
	 * @param lostSearchCondition
	 * @param lostSearchKeyword
	 * @param currentPage
	 * @return
	 */
	@RequestMapping(value="/lostBoard/search.do", method=RequestMethod.GET)
	public ModelAndView searchLostBoard(ModelAndView mv
									  , @RequestParam("lostSearchCondition") String lostSearchCondition
									  , @RequestParam("lostSearchKeyword") String lostSearchKeyword
									  , @RequestParam("lostBrand") String lostBrand
//									  , @RequestParam("lostColor") String lostColor
//									  , @RequestParam("lostStartDate") @DateTimeFormat(pattern = "yyyyMMdd") Date lostStartDate
//									  , @RequestParam("lostEndDate") @DateTimeFormat(pattern = "yyyyMMdd") Date  lostEndDate
									  , @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage
									  ) {
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("lostSearchCondition",lostSearchCondition);
		searchMap.put("lostSearchKeyword",lostSearchKeyword);
		searchMap.put("lostBrand",lostBrand);
//		searchMap.put("lostColor",lostColor);
//		searchMap.put("lostStartDate",lostStartDate);
//		searchMap.put("lostEndDate",lostEndDate);
	
		
		//서치 페이징처리
		Integer totalCount = lostBoardService.searchGetListCount(searchMap); 
		PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
		
		List<LostBoard>searchLostList = lostBoardService.searchLostByKeyword(pInfo, searchMap);
		try {
			
			if(searchLostList.size()>0) {
				mv.addObject("lostSearchCondition",lostSearchCondition)
				.addObject("lostSearchKeyword",lostSearchKeyword)
				.addObject("lostBrand",lostBrand)
//				.addObject("lostColor",lostColor)
				.addObject("pInfo",pInfo)
				.addObject("searchLostList",searchLostList);
				
				mv.setViewName("lost/searchLostBoard");
				
			}else {
				mv.addObject("msg", "검색된 분실물 리스트가 없습니다").setViewName("lost/searchLostBoard");
			}	
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의바랍니다");
			mv.addObject("url", "/lostBoard/list.do");
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	
	//////좋아요 메소드/////////////////////////////////////////////////////////////////////////
	
	
	@RequestMapping(value="/lostBoard/like.do", method=RequestMethod.GET)
	public ModelAndView pushLostLike(ModelAndView mv
									, @ModelAttribute LostLike lostLike
									, HttpSession session) {
		String url = "lostBoard/detail.do?lostNo="+lostLike.getRefLostNo();
		try {
			String memberId = (String)session.getAttribute("memberId");
			boolean heartCheck = false; //빈 하트일때
			if(memberId != null && !memberId.equals("")) {  //로그인해야 좋아요 가능
//				lostLike.setMemberId(memberId);
				Integer result = lostBoardService.pushLostLike(lostLike);
				if(result>0) {
					heartCheck = true;  //빨간 하트로 변경 
					
					mv.addObject("heartCheck", heartCheck);
					mv.setViewName(url);
				}
			}
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의바랍니다");
			mv.addObject("url", url);
			mv.setViewName("common/message");
		}
		return mv;	
	}
	
	
	@RequestMapping(value="/lostBoard/deleteLike.do", method=RequestMethod.GET)
	public ModelAndView deleteLostLike(ModelAndView mv
									, @ModelAttribute LostLike lostLike
									, HttpSession session) {
		String url = "/lostBoard/detail.do?lostNo="+lostLike.getRefLostNo();
		try {
			String memberId = (String)session.getAttribute("memberId");
			
			
			boolean heartCheck = true; //빨간 하트일 떄 
			if(memberId != null && !memberId.equals("")) {  //로그인해야 좋아요 취소 가능
				lostLike.setMemberId(memberId);
				
				Integer result = lostBoardService.deleteLostLike(lostLike);
				if(result>0) {
					heartCheck = false;  //빈 하트로 변경 
				}
			}
			mv.addObject("heartCheck", heartCheck);
			mv.setViewName(url);
			
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의바랍니다");
			mv.addObject("url", url);
			mv.setViewName("common/message");
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
		String root = request.getSession().getServletContext().getRealPath("resources/assets/img"); //살제 저장하고싶은 경로(resources)
		//파일 저장 경로 구하기
		String savePath = root + "\\luploadFiles";
		//파일이름 구하기
		String fileName = uploadFile.getOriginalFilename();
		//시간으로 파일명 리네임하기 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");  
		String strResult = sdf.format(new Date(System.currentTimeMillis()));
		String ext = fileName.substring(fileName.lastIndexOf(".")+1);	
		String fileRename = "l"+strResult+"."+ext; 
		
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
		fileMap.put("filePath", "../resources/assets/img/luploadFiles/"+fileRename);
		
		return fileMap;		
		
	}
	

}
