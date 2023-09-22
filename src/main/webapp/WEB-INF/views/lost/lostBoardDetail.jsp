<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>찾음 : 분실물 통합 포털</title>
		<meta content="" name="description">
		<meta content="" name="keywords">
		
		<!-- Favicons -->
		<link href="../resources/assets/img/light.png" rel="icon">
		
		<!-- Google Fonts -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link
			href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
			rel="stylesheet">
		
		<!-- Vendor CSS Files -->
		<link href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css"
			rel="stylesheet">
		<link
			href="../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
			rel="stylesheet">
		<link href="../resources/assets/vendor/aos/aos.css" rel="stylesheet">
		<link href="../resources/assets/vendor/glightbox/css/glightbox.min.css"
			rel="stylesheet">
		<link href="../resources/assets/vendor/swiper/swiper-bundle.min.css"
			rel="stylesheet">
		
		<!-- Template Main CSS File -->
		<!-- <link href="../resources/assets/css/main.css" rel="stylesheet"> -->
		
		<!-- CSS -->
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
		
		<main id="main">
			<section id="title" class=" title"
				style="padding-top: 100px;">
				<div class="container position-relative">
					<div class="section-header">
						<h2>찾아주세요</h2>
                    <p>분실물의 상세 내용을 확인하세요!</p>
					</div>
				</div>
			</section>

			<section id="blog" class="blog">
				<div class="container" data-aos="fade-up">
					<div class="row g-5">
						<div class="col-lg-12">
							<article class="blog-details">
								<div class="post-img">
									<img src="assets/img/blog/blog-1.jpg" alt="" class="img-fluid">
								</div>
								<div class="d-flex justify-content-between">
									<h2 class="title">${lostBoard.lostTitle }</h2>
									<div class="sidebar-item like">
										<c:if test="${ sessionScope.memberId ne null }">
											<button class="heart-button" id="like" onclick="likeBtn();">
												<c:if test="${likeYn != 0 }">
													<i class="bi-suit-heart-fill like-img"></i>
													<i class="bi-suit-heart hover-image"></i>
												</c:if>
												<c:if test="${likeYn == 0 }">
													<i class="bi-suit-heart like-img"></i>
													<i class="bi-suit-heart-fill hover-image"></i>
												</c:if>
											</button>
										</c:if>
										<c:if test="${ sessionScope.memberId eq null }">
											<button class="heart-button" id="like"
												onclick="showLoginAlert();">
												<i class="bi-suit-heart like-img"></i> <i
													class="bi-suit-heart-fill hover-image"></i>
											</button>
										</c:if>
									</div>
								</div>
	
	
								<div class="write-info meta-top">
                                     <ul>
                                         <li class="d-flex align-items-center"><i class="bi bi-person"></i>${lostBoard.lostWriter }</li>
                                         <li class="d-flex align-items-center"><i class="bi bi-clock"></i><time datetime="2020-01-01">${lostBoard.lCreateDate }</time></li>
                                         <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i>${totalReplyCount } Comments</li>
                                     </ul>
                                 </div>
								<!-- End meta top -->
	
								<div class="content">
									<div class="content-img">
										<c:if test="${!empty lostBoard.lostFilerename }">  <!-- 첨부이미지 있을때 -->
                                            <img src="../resources/luploadFiles/${lostBoard.lostFilerename}" data-gallery="portfolio-gallery-app" class="glightbox"></a>
                                             
                                        </c:if>
<%--                                         <c:if test="${empty lostBoard.lostFilerename }">  <!-- 첨부이미지 없을때 --> --%>
<!--                                         	<img src="../resources/assets/img/noImage.jpg"  data-gallery="portfolio-gallery-app" class="glightbox"> -->
<%--                                         </c:if> --%>
									</div>
									<div class="infoWrap">
										<div class="d-flex justify-content-start">
											<div id="category_box"
												class="d-flex justify-content-center text-center">
												<div class="filter-active category_icon">
													<div class="icon">
														<c:if test="${lostBoard.lostCategory eq '지갑'}">
															<img src="../resources/assets/img/wallet.png"
																style="width: 40px; height: 40px;">
														</c:if>
														<c:if test="${lostBoard.lostCategory eq '가방'}">
															<img src="../resources/assets/img/bag.png"
																style="width: 40px; height: 40px;">
														</c:if>
														<c:if test="${lostBoard.lostCategory eq '핸드폰'}">
															<img src="../resources/assets/img/phone.png"
																style="width: 40px; height: 40px;">
														</c:if>
														<c:if test="${lostBoard.lostCategory eq '의류'}">
															<img src="../resources/assets/img/clothes.png"
																style="width: 40px; height: 40px;">
														</c:if>
														<c:if test="${lostBoard.lostCategory eq '기타'}">
															<img src="../resources/assets/img/others.png"
																style="width: 40px; height: 40px;">
														</c:if>
													</div>
													<h5 class="icon-title">${lostBoard.lostCategory }</h5>
												</div>
												<div class="filter-active category_icon">
													<div class="icon">
														<c:if test="${lostBoard.lostPlace eq '버스'}">
															<img src="../resources/assets/img/bus.png"
																style="width: 40px; height: 40px;">
														</c:if>
														<c:if test="${lostBoard.lostPlace eq '지하철'}">
															<img src="../resources/assets/img/train.png"
																style="width: 40px; height: 40px;">
														</c:if>
														<c:if test="${lostBoard.lostPlace eq '택시'}">
															<img src="../resources/assets/img/taxi.png"
																style="width: 40px; height: 40px;">
														</c:if>
														<c:if test="${lostBoard.lostPlace eq '공항'}">
															<img src="../resources/assets/img/airplane.png"
																style="width: 40px; height: 40px;">
														</c:if>
														<c:if test="${lostBoard.lostPlace eq '기타'}">
															<img src="../resources/assets/img/restaurant.png"
																style="width: 40px; height: 40px;">
														</c:if>
													</div>
													<h5 class="icon-title">${lostBoard.lostPlace }</h5>
												</div>
											</div>
											<div class="lost-info">
												<ul class="lost-info">
													<li><p class="lost01">분실 지역</p>
														<p class="lost02">${lostBoard.lostLocation }</p></li>
													<li><p class="lost01">색상</p>
														<p class="lost02">${lostBoard.lostColor }</p></li>
													<c:if test="${lostBoard.lostBrand  ne null}">
														<li><p class="lost01">브랜드</p>
															<p class="lost02">${lostBoard.lostBrand }</p></li>
													</c:if>
													<c:if test="${lostBoard.lostBrand eq null}">
														<li><p class="lost01">브랜드</p>
															<p class="lost02">X</p></li>
													</c:if>
											</ul>
											</div>
										</div>
										<div id="lostDate" class="d-flex m-2 w-100" >
                                            <div class="w-100">
                                                <input type="text" value="${lostBoard.lostDate}" class="p-1 w-100 border border-dark-subtle rounded-start text-center" style="height: 40px;"> 
                                            </div>
                                         
                                        </div>
                                        
                                        <!-- 지도공간 -->
										<div id="map" style="width:100%;height:285px; margin-top : 10px;"></div>
										

									</div>
								</div>
								<!-- End post content -->
								<div class="lostContent">
									${lostBoard.lostContent }
								</div>

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
                                    <button id="deleteBtn" type="button" class="btn" style="background-color: #818181; color:#fff" onclick="deleteBoard('${deleteLostBoardUrl}');">삭제하기</button>
                                </c:if>
                                </div>



								<!-- 댓글창 -->
								<div class="comments">
									<h4 class="comments-count">댓글</h4>
									<hr>
									<!-- 댓글 등록 -->
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
									</div>
				
									<!-- 댓글목록-->
									<c:if test="${lRList eq null}">
		                                <div id="" class="comment reply-border">
							               	<div class="no-lost">
							              	<span>${msg}</span>
							               	</div>       			
		                                </div>
			              			</c:if>
			              			
			              			
				              			<c:forEach var="lostReply" items="${lRList}" varStatus="i"> 
<!-- 				              			<div class="reply-border"> -->
				              				<!-- 댓글 css-->
				              				<c:if test="${lostReply.level == '1' }">
											<div id="comment-${lostReply.lostRNo}" class="comment ">
			                                    <div class="d-flex">
			                                        <div class="comment-img"><img src="#" alt=""></div>
				                                        <div>
															<h5>${lostReply.lostRWriter }
				                                          
																<!-- 내가 쓴 글일때만 버튼 보이게 (댓쓴사람만 수정,삭제하도록)  -->
			                                    				<c:if test="${lostReply.lostRWriter eq memberId }">
				                                    				<!-- 댓수정버튼 -->
																	<a href="javascript:void(0)" class="reply" 
					                                            		onclick="showEditForm(this,'${lostReply.lostRNo}')">   <!-- 수정폼 오픈 -->
					                                            		<i class="bi bi-eraser-fill"></i> 수정
					                                            	</a>
					                                            	<!-- 댓삭제버튼 -->
					                                            	<c:url var="deleteReplyUrl" value="/lostReply/delete.do">
																		<c:param name="lostRNo" value="${lostReply.lostRNo }"></c:param>
																		<c:param name="lostRWriter" value="${lostReply.lostRWriter }"></c:param>  <!-- 자기 자신(로그인한 사람)것만 지울수 있게함 -->
																		<c:param name="refLostNo" value="${lostReply.refLostNo }"></c:param> <!-- 성공하면 디테일.jsp로 가기위한 boardNo셋팅 -->
																	</c:url>
																	<a href="javascript:void(0)" class="reply" 
																		onclick="deleteReply('${deleteReplyUrl}')">
																		<i class="bi bi-x-circle"></i> 삭제
																	</a>
																</c:if>
																
						                     						<!-- 대댓달기버튼 -->
						                                            <a href="javascript:void(0)" class="reply" onclick="showRReplyForm('${lostReply.lostRNo}')">
						                                            	<i class="bi bi-reply-fill"></i> Reply
						                                            </a>
				                                            	
				                                        	</h5>
				                                        	<time datetime="2020-01-01">
				                                        		<fmt:formatDate pattern="yyyy/MM/dd HH:mm" value="${lostReply.lostRCreateDate}"/>
				                                        	</time>
				                                            <p>${lostReply.lostRContent }</p>
				                                        </div>
				                                    </div>
				                                </div>
		                                	</c:if>
		                                	
		                                	
		                                	<!-- 대댓글 css -->
		                                	<c:if test="${lostReply.level == '2' }">
		                                	<div id="comment-rreply" class="comment comment-reply ">
												<div class="d-flex">
													<div class="comment-img">
														<img src="assets/img/blog/comments-3.jpg" alt="">
													</div>
													<div>
														<h5>${lostReply.lostRWriter }
															<!-- 내가 쓴 글일때만 버튼 보이게 (대댓쓴사람만 수정,삭제하도록)  -->
															<c:if test="${lostReply.lostRWriter eq memberId }">
																<!-- 대댓수정버튼 -->
																<a href="javascript:void(0)" class="reply"
																	onclick="showEditForm(this,'${lostReply.lostRNo}')"> <!-- 수정폼 오픈 -->
																	<i class="bi bi-eraser-fill"></i> 수정
																</a>
																
																<!-- 대댓삭제버튼 -->
																<c:url var="deleteRReplyUrl" value="/lostReply/delete.do">
																	<c:param name="lostRNo" value="${lostReply.lostRNo }"></c:param>
																	<c:param name="lostRWriter" value="${lostReply.lostRWriter }"></c:param>
																	<c:param name="refLostNo" value="${lostReply.refLostNo }"></c:param>
																</c:url>
																<a href="javascript:void(0)" class="reply"
																	onclick="deleteReply('${deleteRReplyUrl}');"> 
																	<i class="bi bi-x-circle"></i> 삭제
																</a>
															</c:if>
														</h5>
														<time datetime="2020-01-01">
			                                        		<fmt:formatDate pattern="yyyy/MM/dd HH:mm" value="${lostReply.lostRCreateDate}"/>
			                                        	</time>
														<p>${lostReply.lostRContent }</p>
													</div>
												</div>
											</div>
											</c:if>	
												<!-- 댓글 수정하기폼 숨겼다 보이기 -->
				                                <div id="replyEditForm" style="display:none;">
													<form action="/lostReply/update.do" method="post">
					                                   <input type="hidden" name="lostRWriter" value="${lostReply.lostRWriter}">
					                                   <input type="hidden" name="lostRNo" value="${lostReply.lostRNo}">
					                                   <input type="hidden" name="refLostNo" value="${lostReply.refLostNo }">
					                                      <div class="row">
					                                          <div class="col input-area align-items-center">
					                                              <i class="bi bi-arrow-return-right"></i>
					                                              <textarea name="lostRContent" class="form-control"
					                                                  value="${lostReply.lostRContent }"></textarea>
				                                              	  <button id="updateBtn" type="submit" class="btn btn-primary"
				                                              			onclick="updateReplyBtn(this,'${lostReply.lostRNo}','${lostReply.refLostNo}');"><i class="bi bi-send"></i></button>
					                                          </div>
					                                      </div>
					                                </form>
				                                </div>
				                                
												<!-- 대댓글 쓰기-->
												<form action="/lostReply/insert.do" method="post">
												<input type="hidden" name="refLostNo" value="${lostReply.refLostNo }"> <!-- 게시글번호 -->
												<input type="hidden" name="lostRParentNo" value="${lostReply.lostRNo }"> <!-- 댓글번호 -->
													<div id="addForm-${lostReply.lostRNo }" style="display: none;">
														<div class="row">
															<div class="col input-area align-items-center">
																<textarea class="form-control" name="lostRContent"
																	placeholder="대댓글을 남겨주세요."></textarea>
																<button id="insertRReplyBtn" type="submit" class="btn btn-primary">완료</button>
															</div>
														</div>
													</div>
												</form>
<!-- 												</div> -->
			                              	</c:forEach>
			              			
									</div>
								</article>
								<!-- End blog post -->
							</div>
						</div>
					</div>
				</section>
				<!-- End Blog Details Section -->
			</main>
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	
		<a href="#"
			class="scroll-top d-flex align-items-center justify-content-center"><i
			class="bi bi-arrow-up-short"></i></a>
	
		<div id="preloader"></div>
	
		<!-- Vendor JS Files -->
		<script
			src="../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="../resources/assets/vendor/aos/aos.js"></script>
		<script src="../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
		<script
			src="../resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
		<script src="../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
		<script
			src="../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	
		<!-- Template Main JS File -->
		<script src="../resources/assets/js/main.js"></script>
	
		<!-- services와 clusterer, drawing 라이브러리 불러오기 -->


		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=07ff3550f3413fb406de3abc16437467&libraries=services"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };  
			
			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption); 
			
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch('${lostBoard.lostMaybe}', function(result, status) {
			
			    // 정상적으로 검색이 완료됐으면 
			     if (status === kakao.maps.services.Status.OK) {
			
			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new kakao.maps.Marker({
			            map: map,
			            position: coords
			        });
			
			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new kakao.maps.InfoWindow({
			            content: '<div style="width:150px;text-align:center;padding:6px 0;">분실추정위치</div>'
			        });
			        infowindow.open(map, marker);
			
			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    } 
			});    
		</script>
	
		<script>
		
			

			//수정페이지로 이동
			function updateBtn(url){
				location.href=url;
			}

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
			function updateReplyBtn(obj, lostRNo, refLostNo){
	        	obj.previousElementSibling.value;	
//	 			obj.parentElement.childNodes[1].value;	
	        }
			
			//댓글삭제시 복구불가 경고창 후 삭제페이지로 이동
			function deleteReply(url) {
				if(confirm ("정말 삭제하시겠습니까? 삭제후에는 복구할 수 없습니다")){
					location.href=url;
				}
			}
			
			
			// 대댓글 등록폼 
			function showRReplyForm(lostRNo) {
				const addForm = document.querySelector("#addForm-" + lostRNo);
				if (addForm.style.display == "none") {
					addForm.style.display = "block";
				} else {
					addForm.style.display = "none";
				}
			}

			
			
			
			
			// 좋아요 
			function likeBtn() {
				const likeYn = '${likeYn}';
				const memberId = '${sessionScope.memberId}';
				const lostNo = '${lostBoard.lostNo}'
				if (likeYn > 0) {
					if (confirm("좋아요를 취소하시겠습니까?")) {
						location.href = "/lostLike/delete.do?refLostNo=" +lostNo+ "&memberId" +memberId;
					}
				} else {
					alert("좋아요가 등록되었습니다.");
					location.href = "/lostLike/insert.do?refLostNo=" +lostNo+ "&memberId" + memberId;
				}
			}
	
			
			
			
			
			
			
			
		</script>
	</body>

</html>