<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>찾음 : 디테일</title>
        <meta content="" name="description">
        <meta content="" name="keywords">
        <!-- 부트스트랩 CSS cdn-->
        <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->

        <!-- Favicons -->
        <!-- <link href="../resources/assets/img/favicon.png" rel="icon">
        <link href="../resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->
        <link href="../resources/assets/img/light.png" rel="icon">
        <link href="../resources/assets/img/light.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="../resources/assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="../resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="../resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <!-- <link href="../resources/assets/css/main.css" rel="stylesheet"> -->

        <!-- CSS -->
        <!-- <link href="../resources/assets/css/plusMdetail.css" rel="stylesheet"> -->
        <link rel="stylesheet" href="../resources/assets/css/lost/lostBoardDetail.css">
        <link rel="stylesheet" href="../resources/assets/css/common/header.css">
        <link rel="stylesheet" href="../resources/assets/css/common/footer.css">


        <!-- =======================================================
        * Template Name: Impact
        * Updated: Jul 27 2023 with Bootstrap v5.3.1
        * Template URL: https://bootstrapmade.com/impact-bootstrap-business-website-template/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
            ======================================================== -->
    </head>

    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

<!-- *****MAIN************************************************************************************ -->
        <main id="main" class="sections-bg">
            <section id="mainLayer1" class="">
                <div class="section-header ">
                    <h2>찾아주세요</h2>
                </div>
            </section>
                
            <section id="blog" class="blog ">
                <div class="container" data-aos="fade-up">
                    <div class="row g-5">
                        <div class="col-lg-12">
                            <div class="sidebar">
                                <div class="sidebar-item title-wrap">
                                    <div class="sidebar-item like">
                                    	<!-- 좋아요 -->
<%--                                     	<c:if test="${heartCheck}"> --%>
	                                        <form id="likeForm" action="/lostBoard/like.do" method="get">
	                                        <input type="hidden" name="memberId" value="${memberId}">
											<input type="hidden" name="refLostNo" value="${lostBoard.lostNo}">
											
												<!-- 초기 빈 하트 -->
	                                       		<button type="submit" class="heart-button"  onclick="switchOn()">
		                                            <i class="bi-suit-heart like-img" id="emptyHeart"></i>
		                                            <i class="bi-suit-heart-fill hover-image" id="fillHeart"></i> <!-- 마우스 올리면 색 바뀜 -->
		                                        </button>
											</form>
<%-- 										</c:if> --%>
                                        
                                        <div class="lost-title"><strong>${lostBoard.lostTitle }</strong></div>
                                        
                                         
                                        
											
<!-- 										<form action="/lostBoard/deleteLike.do" method="get"> -->
<%--                                         <input type="hidden" name="memberId" value="${memberId}"> --%>
<%-- 										<input type="hidden" name="refLostNo" value="${refLostNo}"> --%>
<%-- 											<c:if test="${heartCheck == true  }"> --%>
<!-- 												빨간 하트 -->
<!-- 	                                        <button class="heart-button"> -->
<!-- 	                                        	<i class="bi-suit-heart-fill push-like"></i> -->
<!-- 	                                            <i class="bi-suit-heart hover-image"></i> 마우스 올리면 색 바뀜 -->
<!-- 	                                        	<input type="submit" style="display:none" id="deleteLikeButton"> -->
<!-- 	                                        </button> -->
<%-- 											</c:if> --%>
<!-- 										</form> -->
											
											
	                                       
                                        
                                    </div>
                                    <div class="write-info meta-top">
                                        <ul>
                                            <li class="d-flex align-items-center"><i class="bi bi-person"></i>${lostBoard.lostWriter }</li>
                                            <li class="d-flex align-items-center"><i class="bi bi-clock"></i><time datetime="2020-01-01">${lostBoard.lCreateDate }</time></li>
                                            <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i>
                                            ${totalReplyCount } Comments
                                            <c:if test="${totalReplyCount == 0 }">0 Comments</c:if>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div id="mainPart1" class="d-flex">
                                    <div id="pictureWrap" class="">
                                        <div id="picture" >
	                                        <c:if test="${!empty lostBoard.lostFilerename }">  <!-- 첨부이미지 있을때 -->
	                                            <img src="../resources/assets/img/luploadFiles/${lostBoard.lostFilerename}" data-gallery="portfolio-gallery-app" class="glightbox"></a>
	                                             
	                                        </c:if>
	                                        <c:if test="${empty lostBoard.lostFilerename }">  <!-- 첨부이미지 없을때 -->
	                                        	<img src="../resources/assets/img/noImage.jpg"  data-gallery="portfolio-gallery-app" class="glightbox">
	                                        </c:if>
                                        </div>
                                    </div>
                                    
                                    <div id="infoWrap">
                                        <div class="d-flex">
                                            <div id="categoryBox" class="d-flex text-center">
                                                <div class="category-icon">
                                                    <div class="icon"><i class="bi bi-easel" style="color:#fff"></i></div>
                                                    <h4 class="title" style="color:#fff">${lostBoard.lostCategory }</h4>
                                                </div>
                                                <div class="category-icon">
                                                    <div class="icon"><i class="bi bi-taxi-front" style="color:#fff"></i></div>
                                                    <h4 class="title" style="color:#fff">${lostBoard.lostPlace }</h4>
                                                </div>
                                            </div>
                                            <div class="m-2 w-50 " >
                                                <div id="lostColor" class=" ">색상 : ${lostBoard.lostColor }</div>
                                                <div id="lostBrand" class=" ">브랜드 : ${lostBoard.lostBrand }</div>
                                            </div>

                                        </div>
                                        
                                         <div id="lostLocation" class="">
                                            <div class="d-flex m-2 ">
                                                <div id="lostCounty" class=" w-100">
                                                    <input type="text" name="lostCounty" value="시/ 도 : ${lostBoard.lostLocation }" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                                                </div>
                    
<!--                                                 <div id="lostCity" class="btn-group me-3"> -->
<!--                                                     <input type="text" name="" placeholder="시 / 군 / 구" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;"> -->
<!--                                                 </div> -->
        
<!--                                                 <div id="lostVillage" class="btn-group"> -->
<!--                                                     <input type="text" name="" placeholder="읍 / 면 / 동 " class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;"> -->
<!--                                                 </div> -->
                                            </div>
                                        </div> 
        
                                        <div id="lostDate" class="d-flex m-2 w-100" >
                                            <div class="w-50">
                                                <input type="text" value="${lostBoard.lostStartDate}" class="p-1 w-100 border border-dark-subtle rounded-start text-center" style="height: 40px;"> 
                                            </div>
                                            <div class="w-auto ms-2 me-2 d-flex align-items-center">
                                                <h5 class="text-black " > ~ </h5>
                                            </div>
                                            <div class="w-50">
                                                <input type="text" value="${lostBoard.lostEndDate}" class="p-1 w-100 border border-dark-subtle rounded-end text-center" style="height: 40px;">
                                            </div>
                                        </div>
        
                                        <!-- <div class="d-flex justify-content-between m-2 w-100 " >
                                            <div class=" me-2 w-50">
                                                <input type="text" name="" placeholder="색상" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                                            </div>
                                            <div class="w-50 ">
                                                <input type="text" name="" placeholder="브랜드" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                                            </div>
                                        </div> -->

<!--                                         <div class="map"> -->

<!--                                             지도들어갈자리 -->
<!--                                         </div> -->
                                    </div>
                                </div>

                                <div id="mainPart2" class="">
                                    <div id="textarea" spellcheck="false">${lostBoard.lostContent }</div>
                                </div>
            
                                <div id="mainPart3" >
                                	<!-- 글수정버튼Url -->
	                                <c:url  var="updateLostBoardUrl" value="/lostBoard/update.do">
										<c:param  name="lostNo" value="${lostBoard.lostNo }"></c:param>
									</c:url>
									
									<!-- 글삭제버튼Url -->
									<c:url  var="deleteLostBoardUrl" value="/lostBoard/delete.do">
										<c:param  name="lostNo" value="${lostBoard.lostNo }"></c:param>
									</c:url>
									
									<!-- 글수정/삭제버튼 -->
                                    <div class="btn-wrap">
                                     <!-- 내가 쓴 글일때만 버튼 보이게 (글쓴사람만 수정,삭제하도록)  -->
                                    <c:if test="${lostBoard.lostWriter eq memberId }">  
                                        <button id="updateBtn" type="button" class="btn" style="background-color: #4365BC; color:#fff" onclick="updateBtn('${updateLostBoardUrl }');">수정하기</button>
                                        <button id="deleteBtn" type="button" class="btn" style="background-color: gray; color:#fff" onclick="deleteBoard('${deleteLostBoardUrl}');">삭제하기</button>
                                    </c:if>
                                    </div>
                                </div>

<!-- *******************************댓글창************************************* -->
                            <div class="comments">
                                <h4 class="comments-count">댓글</h4>
<!--                                 <hr> -->
                                <!--댓글 입력 폼-->
                                <div class="reply-form">
                                    <form action="/lostReply/insert.do" method="post">
                                    <input type="hidden" name="refLostNo" value="${lostBoard.lostNo}">
                                        <div class="row">
                                            <div class="col input-area align-items-center">
                                                <textarea name="lostRContent" class="form-control"
                                                    placeholder="응원의 댓글을 남겨주세요."></textarea>
                                                <button id="insertReplyBtn" type="submit" class="btn btn-primary"><i class="bi bi-send"></i></button>
                                            	
                                            </div>
                                        </div>
                                    </form>
                                    
                                    <!-- 댓글목록-->
                                    
                                <c:if test="${lRList eq null}">
	                                <div id="" class="comment reply-border">
						               	<div class="no-lost">
						              	<span>${msg}</span>
						               	</div>       			
	                                </div>
		              			</c:if>
		              			
                                <c:forEach var="replyOne" items="${lRList}" varStatus="i"> 
	                                <div id="comment-${replyOne.lostRNo}" class="comment reply-border">
	                                    <div class="d-flex">
	                                        <div class="comment-img"><img src="#" alt=""></div>
	                                        <div>
												<h5>${replyOne.lostRWriter }
	                                          
													<!-- 댓글삭제Url -->
													<c:url var="deleteReplyUrl" value="/lostReply/delete.do">
														<c:param name="lostRNo" value="${replyOne.lostRNo }"></c:param>
														<c:param name="lostRWriter" value="${replyOne.lostRWriter }"></c:param>  <!-- 자기 자신(로그인한 사람)것만 지울수 있게함 -->
														<c:param name="refLostNo" value="${replyOne.refLostNo }"></c:param> <!-- 성공하면 디테일.jsp로 가기위한 boardNo셋팅 -->
													</c:url>
													
													
													<!-- 내가 쓴 글일때만 버튼 보이게 (댓쓴사람만 수정,삭제하도록)  -->
                                    				<c:if test="${replyOne.lostRWriter eq memberId }">
	                                    				<!-- 댓수정버튼 -->
														<a href="javascript:void(0)" class="reply" 
		                                            		onclick="showEditForm(this,'${replyOne.lostRCreateDate}')">
		                                            		<i class="bi bi-eraser-fill"></i> 수정
		                                            	</a>
		                                            	<!-- 댓삭제버튼 -->
														<a href="javascript:void(0)" class="reply" 
															onclick="deleteReply('${deleteReplyUrl}')">
															<i class="bi bi-x-circle"></i> 삭제
														</a>
													</c:if>
	                     
	                                            <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a>
	                                        	</h5>
	                                        	<time datetime="2020-01-01">
	                                        		<fmt:formatDate pattern="yyyy/MM/dd HH:mm" value="${replyOne.lostRCreateDate}"/>
	                                        	</time>
	
	                                            <p>${replyOne.lostRContent }</p>
	                                        </div>
	                                    </div>
	                                </div>
	                                
									<!-- 수정하기폼 숨겼다 보이기 -->
	                                <div id="replyEditForm" style="display:none;">
										<form action="/lostReply/update.do" method="post">
		                                   <input type="hidden" name="lostRWriter" value="${replyOne.lostRWriter}">
		                                   <input type="hidden" name="lostRNo" value="${replyOne.lostRNo}">
		                                   <input type="hidden" name="refLostNo" value="${replyOne.refLostNo }">
		                                      <div class="row">
		                                          <div class="col input-area align-items-center">
		                                              <i class="bi bi-arrow-return-right"></i>
		                                              <textarea name="lostRContent" class="form-control"
		                                                  value="${replyOne.lostRContent }"></textarea>
		                                              <button id="updateBtn" type="submit" class="btn btn-primary"
		                                              	onclick="updateReplyBtn(this,'${replyOne.lostRNo}','${replyOne.refLostNo}');">수정완료</button>
		                                          </div>
		                                      </div>
		                                </form>
	                                </div>
                                </c:forEach>
                               </div>
                             </div>
                        	<!-- End Blog Sidebar -->
                        </div>
                       </div>
                    </div>
                </div>
            </section>
        </main>
        


		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>

        <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i
                class="bi bi-arrow-up-short"></i></a>

        <div id="preloader"></div>

        <!-- Vendor JS Files -->
        <script src="../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../resources/assets/vendor/aos/aos.js"></script>
        <script src="../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="../resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="../resources/assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="../resources/assets/js/main.js"></script>

        <!-- JS파일경로-->
        <!-- <script src="./resources/js/lostBoardDetail.js"></script> -->
        
		<script>
		
		
		//수정페이지로 이동
		function updateBtn(url){
			location.href=url;
		}
			
// 		//글삭제시 복구불가 경고창 후 삭제페이지로 이동
// 		function deleteBtn1(url) {
// 			if(confirm ("정말 삭제하시겠습니까? 삭제후에는 복구할 수 없습니다")){
// 				location.href=url;
// 			}
// 		}
		//글삭제시 복구불가 경고창 후 삭제페이지로 이동
		function deleteBoard(url) {
			if(confirm ("정말 삭제하시겠습니까? 삭제후에는 복구할 수 없습니다")){
				location.href=url;
			}
		}
		
		//댓글수정란 보이기
		function showEditForm(obj) {
			obj.parentElement.parentElement.parentElement.parentElement.nextElementSibling.style.display="";
		}
		
		
		//댓글수정
		function updateReplyBtn(url){
			location.href=url;
		}
		function updateReplyBtn(obj, lostRNo, refLostNo){
        	obj.previousElementSibling.value;	
// 			obj.parentElement.childNodes[1].value;	
        }
		
		
		//댓글삭제시 복구불가 경고창 후 삭제페이지로 이동
		function deleteReply(url) {
			if(confirm ("정말 삭제하시겠습니까? 삭제후에는 복구할 수 없습니다")){
				location.href=url;
			}
		}
		

		const heart = document.getElementById('emptyHeart');
		const fillHeart = document.getElementById('fillHeart');

	
		let switchToggle = false;
            function switchOn(){
                if(switchToggle){
                    document.querySelector("#fillHeart").style.display="block";
                    document.querySelector("#emptyHeart").style.display="none";
                }switchToggle = !switchToggle
                window.location.href = "/lostBoard/like.do";
            }
            
            function switchOff(){
                if(switchToggle){
                    document.querySelector("#emptyHeart").style.display="block";
                    document.querySelector("#fillHeart").style.display="none";
                }switchToggle = !switchToggle

                window.location.href = "/lostBoard/deleteLike.do";
            }
		
		
		
        

		</script>

    </body>

</html>