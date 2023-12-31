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
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.chazm.find.domain.FindBoard;
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

	
	//분실물 등록 페이지로 이동
	@RequestMapping(value="/lostBoard/insert.do", method=RequestMethod.GET)
	public ModelAndView showInsertLostBoardForm(ModelAndView mv) {
		mv.setViewName("lost/insertLostBoardForm");
		return mv;
	}
	
	
	//분실물 등록
	@RequestMapping(value="/lostBoard/insert.do", method=RequestMethod.POST)
	public ModelAndView insertLostBoard(ModelAndView mv
										, @ModelAttribute LostBoard lostBoard
										, @RequestParam(value="lostPlace1", required=false ) String lostPlace
										, @RequestParam(value="lostDate1", required=false ) String lostDate //@ModelAttribute에서도 lostDate가있기 때문에 도메인의 필드명과 다른 키값으로 받아줘야 함 
										, @RequestParam(value="lostBrand1", required=false ) String lostBrand
										, @RequestParam(value="lostMaybe1", required=false ) String lostMaybe
										, @RequestParam(value="uploadFile", required=false) MultipartFile uploadFile
										, HttpSession session
										, HttpServletRequest request) {
//		LostBoard lostBoard = new LostBoard(lostTitle, lostContent, null, null, null, lostCategory, lostLocation, lostPlace, lostDate, lostColor, lostBrand);
		
		try {
			java.sql.Date lostedDate = null; 
			if(!"".equals(lostDate)) {
				lostedDate = new java.sql.Date(Date.valueOf(lostDate).getTime());
			} //String으로 받아야함 그 후에 수동으로 날짜타입으로 변환시켜야함
			
			String lostWriter = (String)session.getAttribute("memberId");
			lostBoard.setLostPlace(lostPlace);
			lostBoard.setLostDate(lostedDate);
			lostBoard.setLostBrand(lostBrand);
			lostBoard.setLostMaybe(lostMaybe);
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
					String memberId = lostBoard.getLostWriter();
					int rOne = lostBoardService.insertPoint(memberId);
					rOne += lostBoardService.updateMemberPoint(memberId);
					mv.addObject("msg", "게시글이 등록되었습니다.");
					mv.addObject("url", "/lostBoard/list.do");
					mv.setViewName("common/message");
					
				}else {
//					mv.setViewName("<script>alert('글 등록에 실패했습니다'); history.back();</script>");
					mv.addObject("msg", "글 등록에 실패했습니다.");
					mv.addObject("url", "/lostBoard/list.do");
					mv.setViewName("common/message");
				}
			}else {
				mv.addObject("msg", "로그인해야 글 등록이 가능합니다.");
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
	
	
	//분실물게시판 글수정페이지로 이동
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
	
	
	//분실물게시판 글수정
	@RequestMapping(value="/lostBoard/update.do", method=RequestMethod.POST)
	public ModelAndView updateLostBoard(ModelAndView mv
									  , @ModelAttribute LostBoard lostBoard
									  , @RequestParam(value="lostPlace1", required=false ) String lostPlace
									  , @RequestParam(value="lostDate1", required=false ) String lostDate //@ModelAttribute에서도 lostDate가있기 때문에 도메인의 필드명과 다른 키값으로 받아줘야 함 
									  , @RequestParam(value="lostBrand1", required=false ) String lostBrand
									  , @RequestParam(value="lostMaybe1", required=false ) String lostMaybe
									  , @RequestParam(value="uploadFile", required=false) MultipartFile uploadFile
									  , HttpSession session
									  , HttpServletRequest request) {
		//UPDATE LOST_BOARD_TBL SET  ~ WHERE LOST_NO = ? AND LOST_WRITER = ? AND L_STATE_YN = 'Y'
		//  @DateTimeFormat(pattern="yyyy-MM-dd") Date lostDate
		String url ="";
		try {
//			java.sql.Date chalStartDate = new java.sql.Date(challenge.getChalStartDate().getTime());  //데이터타입 데이트일때
			java.sql.Date lostedDate = null; //데이터타입 스트링일때 (널체크 포함) 
			if(!"".equals(lostDate)) {
				lostedDate = new java.sql.Date(Date.valueOf(lostDate).getTime());
			}
			lostBoard.setLostPlace(lostPlace);
			lostBoard.setLostDate(lostedDate);
			lostBoard.setLostBrand(lostBrand);
			lostBoard.setLostMaybe(lostMaybe);
			
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
	
	
	//분실물게시판 글 삭제(비공개)
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
	
	 	//분실물 게시판 목록조회
		@ResponseBody 
		@RequestMapping(value="/lostBoard/list.do", method=RequestMethod.GET, produces="text/html;charset=UTF-8;")
		public ModelAndView showLostBoardList(ModelAndView mv
											, @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage
											,HttpSession session) {
			
			Integer totalCount = lostBoardService.getListCount();
			PageInfo pInfo = this.getPageInfo(9, currentPage, totalCount);
			List<LostBoard>lList = lostBoardService.selectLostBoardList(pInfo);
			try {
				if(lList.size()>0) {
					for (LostBoard lostBoard : lList) {
		                // 각 게시물에 대한 리플 갯수를 가져와서 설정
		                int lostNo = lostBoard.getLostNo();
		                //댓글 수 카운트
		                Integer totalReplyCount = lostReplyService.getReplyListCount(lostNo);
		                lostBoard.setTotalReplyCount(totalReplyCount);
		            }
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


		//글상세보기
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
						Integer totalReplyCount = lostReplyService.getReplyListCount(refLostNo);
						
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
					mv.addObject("url", "/member/login.do");
					mv.setViewName("common/message");
				}
			} catch (Exception e) {
				mv.addObject("msg", "관리자에게 문의해주세요.");
				mv.addObject("url", "/lostBoard/list.do");
				mv.setViewName("common/message");
			}
			return mv;
		}


	//게시글 검색(+페이징)
	@RequestMapping(value="/lostBoard/search.do", method=RequestMethod.GET)
	public ModelAndView searchLostBoard(ModelAndView mv
									  , @ModelAttribute LostBoard lostBoard
									  , @RequestParam(value="lostDateStart", required = false) String lostDateStart
							          , @RequestParam(value="lostDateEnd", required = false) String lostDateEnd
									  , @RequestParam("lostSearchCondition") String lostSearchCondition
									  , @RequestParam("lostSearchKeyword") String lostSearchKeyword
									  , @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage
									  ) {
		 	
		Map<String, String> searchMap = new HashMap<String, String>();
		// 검색 파라미터가 존재하는 경우에만 searchMap에 추가
	    if (lostDateStart != null && !lostDateStart.isEmpty()) {
	    	searchMap.put("lostDateStart", lostDateStart);
	    }
	    if (lostDateEnd != null && !lostDateEnd.isEmpty()) {
	    	searchMap.put("lostDateEnd", lostDateEnd);
	    }
	    if (lostSearchCondition != null && !lostSearchCondition.isEmpty()) {
	    	searchMap.put("lostSearchCondition", lostSearchCondition);
	    }
	    if (lostSearchKeyword != null && !lostSearchKeyword.isEmpty()) {
	    	searchMap.put("lostSearchKeyword", lostSearchKeyword);
	    }
		if (lostBoard.getLostCategory() != null && !lostBoard.getLostCategory().isEmpty()) {
			searchMap.put("lostCategory", lostBoard.getLostCategory());
	    }
		if (lostBoard.getLostLocation() != null && !lostBoard.getLostLocation().isEmpty()) {
			searchMap.put("lostLocation", lostBoard.getLostLocation());			
		}
		if (lostBoard.getLostPlace() != null && !lostBoard.getLostPlace().isEmpty()) {	
			searchMap.put("lostPlace", lostBoard.getLostPlace());
		}
		if (lostBoard.getLostColor() != null && !lostBoard.getLostColor().isEmpty()) {
			searchMap.put("lostColor", lostBoard.getLostColor());
		}
		if (lostBoard.getLostBrand() != null && !lostBoard.getLostBrand().isEmpty()) {
			searchMap.put("lostBrand", lostBoard.getLostBrand());
		}
		
		//서치 페이징처리
		Integer totalCount = lostBoardService.searchGetListCount(searchMap); 
		PageInfo pInfo = this.getPageInfo(9, currentPage, totalCount);
		
		List<LostBoard>searchLostList = lostBoardService.searchLostByKeyword(pInfo, searchMap);
		try {
			if(searchLostList.size()>0) {
				for (LostBoard lBoard : searchLostList) {
	                // 각 게시물에 대한 리플 갯수를 가져와서 설정
	                int lostNo = lBoard.getLostNo();
	                Integer totalReplyCount = lostReplyService.getReplyListCount(lostNo);
	                lBoard.setTotalReplyCount(totalReplyCount);
	            }
				mv.addObject("searchMap",searchMap)
				.addObject("lostBoard",lostBoard)
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
		
		//좋아요 등록
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
	
	
		//좋아요 삭제
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
	
	//페이지네이션 메소드
	public PageInfo getPageInfo(int recordCountPerPage, Integer currentPage, Integer totalCount) {
//		int recordCountPerPage = 0;
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
	
	//파일삭제 메소드
	private void deleteFile(String fileRename, HttpServletRequest request ) {
		String root = request.getSession().getServletContext().getRealPath("resources"); //파일 경로 가져오기
		String delFilepath = root+"\\luploadFiles\\"+fileRename;
		File file = new File(delFilepath);
		if(file.exists()) {  
			file.delete();
		}
	}
	
	//파일저장메소드
	public Map<String, Object> saveFile(HttpServletRequest request, MultipartFile uploadFile) throws IllegalStateException, IOException{
		Map<String, Object>fileMap = new HashMap<String, Object>();
		//resources 경로 구하기 
		String root = request.getSession().getServletContext().getRealPath("resources"); //살제 저장하고싶은 경로(resources)
		//파일 저장 경로 구하기
		String savePath = root + "\\luploadFiles";
		//파일이름 구하기
		String fileName = uploadFile.getOriginalFilename();
		//시간으로 파일명 리네임하기 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");  
		String strResult = sdf.format(new Date(System.currentTimeMillis()));
		String ext = fileName.substring(fileName.lastIndexOf(".")+1);	
		String fileRename = "L"+strResult+"."+ext; 
		
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
	
	//통합검색
	@RequestMapping(value = "/totalSearch/search.do", method = RequestMethod.GET)
	public ModelAndView searchLostBoard(ModelAndView mv
									  , @ModelAttribute LostBoard lostBoard
									  , @ModelAttribute FindBoard findBoard
									  , @RequestParam("totalSearchKeyword") String totalSearchKeyword
									  , @RequestParam(value="findPage", required=false, defaultValue="1") Integer currentFindPage
									  , @RequestParam(value="lostPage", required=false, defaultValue="1") Integer currentLostPage) {
		
		//통합서치 습득물파트 페이징처리
		Integer totalSearchFindCount = lostBoardService.totalSearchFindCount(totalSearchKeyword); 
		PageInfo fPInfo = this.getPageInfo(12, currentFindPage, totalSearchFindCount);
		
		//통합서치 분실물파트 페이징처리
		Integer totalSearchLostCount = lostBoardService.totalSearchLostCount(totalSearchKeyword); 
		PageInfo lPInfo = this.getPageInfo(12, currentLostPage, totalSearchLostCount);
		
		
		
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
				
				mv.setViewName("common/totalSearchNew");
				
			}else {
				mv.addObject("msg", "검색된 습득물이 없습니다").setViewName("common/totalSearchNew");
			}
			//분실물
			if(tSLostList.size()>0) {
				mv.addObject("totalSearchKeyword",totalSearchKeyword)
				.addObject("lPInfo",lPInfo)
				.addObject("tSLostList",tSLostList);
				
				mv.setViewName("common/totalSearchNew");
				
			}else {
				mv.addObject("msg", "검색된 분실물이 없습니다").setViewName("common/totalSearchNew");
			}	
		} catch (Exception e) {
			mv.addObject("msg", "관리자에게 문의바랍니다");
			mv.addObject("url", "/index.jsp");
			mv.setViewName("common/message");
		}
		return mv;
	}
	
	
	
	

}
