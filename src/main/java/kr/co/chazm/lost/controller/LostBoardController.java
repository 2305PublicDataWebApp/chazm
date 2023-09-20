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

import kr.co.chazm.find.domain.FindBoard;
import kr.co.chazm.find.service.FindBoardService;
import kr.co.chazm.lost.domain.LostBoard;
import kr.co.chazm.lost.domain.LostLike;
import kr.co.chazm.lost.domain.LostReply;
import kr.co.chazm.lost.domain.PageInfo;
import kr.co.chazm.lost.service.LostBoardService;
import kr.co.chazm.lost.service.LostReplyService;
import kr.co.chazm.plusmember.domain.PlusMLike;

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
										, @RequestParam(value="lostPlace", required=false ) String lostPlace
										, @RequestParam(value="lostStartDate", required=false ) Date lostStartDate
										, @RequestParam(value="lostEndDate", required=false ) Date lostEndDate
										, @RequestParam(value="lostBrand", required=false ) String lostBrand
										, @RequestParam(value="lostMaybe", required=false ) String lostMaybe
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
									  , @RequestParam(value="lostPlace", required=false ) String lostPlace
									  , @RequestParam(value="lostStartDate", required=false ) Date lostStartDate
									  , @RequestParam(value="lostEndDate", required=false ) Date lostEndDate
									  , @RequestParam(value="lostBrand", required=false ) String lostBrand
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
			
			String memberId = (String)session.getAttribute("memberId");;
			String lostWriter = lostBoard.getLostWriter();
			url = "/lostBoard/detail.do?lostNo="+lostBoard.getLostNo();
		
			//글쓴사람만 수정 가능 
			if(lostWriter != null && lostWriter.equals(memberId)) {
				lostBoard.setLostWriter(lostWriter);
				Integer result = lostBoardService.updateLostBoard(lostBoard);
				if(result > 0) {
					mv.setViewName("redirect:"+url);
				}else {
					mv.addObject("msg", "글 수정에 실패했습니다.");
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
											, HttpSession session) {
			//SELECT * FROM LOST_BOARD_TBL WHERE LOST_NO = ?
			try {
				String memberId = (String) session.getAttribute("memberId");
				
				//로그인 한 경우에만 글상세보기 가능
				if(memberId != null && !memberId.equals("")) {
					LostBoard lostBoard = lostBoardService.selectOneByNo(lostNo);
					if(lostBoard != null) {	
						LostLike lostLike = new LostLike(lostNo, memberId);
						Integer refLostNo = lostLike.getRefLostNo();
						
						LostReply lostReply = new LostReply();
						Integer lostRNo = lostReply.getLostRParentNo();
						//댓글리스트 가져오기
						List<LostReply>lRList = lostReplyService.selectReplyList(lostNo);
						//대댓글리스트 가져오기
//						List<LostReply>lRRList = lostReplyService.selectRReplyList(lostRNo);
						
						//댓글수 카운트
						Map<String, Integer> rCountMap = new HashMap<String, Integer>();
						rCountMap.put("lostNo",lostNo);
						rCountMap.put("lostRNo",lostRNo);
//						Integer totalReplyCount = lostReplyService.getReplyListCount(refLostNo);
						Integer totalReplyCount = lostReplyService.getReplyListCount(rCountMap); 
						
						//좋아요눌렀는지 여부 
						Integer likeYn = lostBoardService.checkLikeYn(lostLike); // 0:안누름 / 1:누름
						
						if(lRList.size() > 0) {
							mv.addObject("lRList", lRList);	
						}else {
							mv.addObject("msg", "등록된 댓글이 없습니다.");
						}
//						if(lRRList.size() > 0) {
//							mv.addObject("lRRList", lRRList);	
//						}
						
						mv.addObject("lostBoard", lostBoard);
						mv.addObject("totalReplyCount", totalReplyCount);
						mv.addObject("likeYn", likeYn);
						mv.setViewName("lost/lostBoardDetail");
						
					}else {
						mv.addObject("msg", "게시글 조회에 실패했습니다");
						mv.addObject("url", "/lostBoard/list.do");
						mv.setViewName("common/message");
					}
				}else {
					mv.addObject("msg", "로그인 해야 상세보기가 가능합니다");
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
									  , @RequestParam("lostLocation") String lostLocation
									  , @RequestParam("lostBrand") String lostBrand
									  , @RequestParam("lostColor") String lostColor
//									  , @RequestParam("lostStartDate") @DateTimeFormat(pattern = "yyyyMMdd") Date lostStartDate
//									  , @RequestParam("lostEndDate") @DateTimeFormat(pattern = "yyyyMMdd") Date  lostEndDate
									  , @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage
									  ) {
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("lostSearchCondition",lostSearchCondition);
		searchMap.put("lostSearchKeyword",lostSearchKeyword);
		searchMap.put("lostLocation",lostLocation);
		searchMap.put("lostBrand",lostBrand);
		searchMap.put("lostColor",lostColor);
		
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
				.addObject("lostLocation",lostLocation)
				.addObject("lostBrand",lostBrand)
				.addObject("lostColor",lostColor)
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
		/**
		 * 좋아요 등록
		 * @param mv
		 * @param lostLike
		 * @param refLostNo
		 * @param session
		 * @return
		 */
		@RequestMapping(value = "/lostLike/insert.do", method = RequestMethod.GET)
		public ModelAndView insertLostLike(ModelAndView mv
										  , @RequestParam("refLostNo") int refLostNo
										  , HttpSession session) {
			String url = "";
			try {
				String memberId = (String) session.getAttribute("memberId");
				LostLike lostLike = new LostLike(refLostNo, memberId);
				url="/lostBoard/detail.do?lostNo="+refLostNo;
				Integer result = lostBoardService.insertLostLike(lostLike);
				
				if(result>0) {
					mv.setViewName("redirect:"+url);
				}else {
					mv.addObject("msg", "좋아요를 실패했습니다.");
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
		 * 좋아요 삭제
		 * @param mv
		 * @param lostLike
		 * @param refLostNo
		 * @param session
		 * @return
		 */
		@RequestMapping(value = "/lostLike/delete.do", method = RequestMethod.GET)
		public ModelAndView deletePlusMLike(ModelAndView mv
										  , @RequestParam("refLostNo") int refLostNo
										  , HttpSession session) {
			String url = "";
			try {
				String memberId = (String) session.getAttribute("memberId");
				LostLike lostLike = new LostLike(refLostNo, memberId);
				url="/lostBoard/detail.do?lostNo="+refLostNo;
				Integer result = lostBoardService.deleteLostLike(lostLike);
				if (result > 0) {
					mv.setViewName("redirect:"+url);
				} else {
					mv.addObject("msg", "좋아요 취소를 실패했습니다.");
					mv.addObject("url", url);
					mv.setViewName("common/message");
				}
			} catch (Exception e) {
				mv.addObject("msg", "좋아요에게 문의해주세요.");
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
	
	/**
	 * 통합검색
	 * @param mv
	 * @param lostBoard
	 * @param totalSearchKeyword
	 * @param currentPage
	 * @return
	 */
	@RequestMapping(value = "/totalSearch/search.do", method = RequestMethod.GET)
	public ModelAndView searchLostBoard(ModelAndView mv
									  , @ModelAttribute LostBoard lostBoard
									  , @ModelAttribute FindBoard findBoard
									  , @RequestParam("totalSearchKeyword") String totalSearchKeyword
									  , @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage) {
		
		//통합서치 습득물파트 페이징처리
		Integer totalSearchFindCount = lostBoardService.totalSearchFindCount(totalSearchKeyword); 
		PageInfo fPInfo = this.getPageInfo(currentPage, totalSearchFindCount);
		
		//통합서치 분실물파트 페이징처리
		Integer totalSearchLostCount = lostBoardService.totalSearchLostCount(totalSearchKeyword); 
		PageInfo lPInfo = this.getPageInfo(currentPage, totalSearchLostCount);
		
		
		
		//통합서치 습득물 리스트 
		List<FindBoard>tSFindList = lostBoardService.totalSearchFindByKeyword(fPInfo, totalSearchKeyword);
		
		//통합서치 분실물 리스트 
		List<LostBoard>tSLostList = lostBoardService.totalSearchLostByKeyword(lPInfo, totalSearchKeyword);
		try {
			//습득물
			if(tSFindList.size()>0) {
				mv.addObject("totalSearchKeyword",totalSearchKeyword)
				.addObject("fPInfo",fPInfo)
				.addObject("tSFindList",tSFindList);
				
				mv.setViewName("lost/totalSearchNew");
				
			}else {
				mv.addObject("msg", "검색된 분실물 리스트가 없습니다").setViewName("lost/totalSearchNew");
			}
			//분실물
			if(tSLostList.size()>0) {
				mv.addObject("totalSearchKeyword",totalSearchKeyword)
				.addObject("lPInfo",lPInfo)
				.addObject("tSLostList",tSLostList);
				
				mv.setViewName("lost/totalSearchNew");
				
			}else {
				mv.addObject("msg", "검색된 분실물 리스트가 없습니다").setViewName("lost/totalSearchNew");
			}	
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의바랍니다");
			mv.addObject("url", "/lostBoard/list.do");
			mv.setViewName("common/message");
		}
		return mv;
	}
	

}
