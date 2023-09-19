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
                                            <img src="../resources/assets/img/luploadFiles/${lostBoard.lostFilerename}" data-gallery="portfolio-gallery-app" class="glightbox"></a>
                                             
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
										<div id="map" class="lost_location"
											style="background-color: #f8f8f8; width: 100%; height: 200px;">
											지도 공간
										</div>
<!-- 										<div class="lost-info"> -->
<!-- 											<ul class="lost-info"> -->
<!-- 												<li><p class="lost01">분실일자</p> -->
<%-- 													<p class="lost02">${lostBoard.lostDate }</p></li> --%>
<!-- 												<li><p class="lost01">보관 장소</p> -->
<%-- 													<p class="lost02">${lostBoard.getPlace }</p></li> --%>
<!-- 												<li><p class="lost01">유실물 상태</p> -->
<!-- 													<p class="lost02">보관중</p></li> -->
<!-- 											</ul> -->
<!-- 										</div> -->
									</div>
								</div>
								<!-- End post content -->
								<hr>
								<div class="lostContent">${lostBoard.lostContent }</div>
								<hr>
<!-- 								<div id="buttons" class="d-flex justify-content-end"> -->
<!-- 									<button type="button" class="btn" -->
<!-- 										style="background-color: #4365BC; color: #fff" -->
<!-- 										onclick="showUpdatelostBoardForm();">수정하기</button> -->
<!-- 									<button type="button" class="btn" -->
<!-- 										style="background-color: #818181; color: #fff" -->
<!-- 										onclick="checkDelete();">삭제하기</button> -->
<!-- 								</div> -->
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
										<!-- End comment #1 -->
										
										
										
										
										
	
										
										<!-- 대댓글폼 -->
										<div id="addForm-${findReply.findRNo }" style="display: none;">
											<form action="/findReply/insert.do" method="post">
												<div class="row">
													<div class="col input-area align-items-center">
														<input type="hidden" name="refFindNo"
															value="${findReply.refFindNo }"> <input
															type="hidden" name="findRParentNo"
															value="${findReply.findRNo }">
														<textarea class="form-control" name="findRContent"
															placeholder="응원의 댓글을 남겨주세요."></textarea>
														<button type="submit" class="btn btn-primary">
															<i class="bi bi-send"></i>
														</button>
													</div>
												</div>
											</form>
										</div>

	
										<c:forEach var="findReReply" items="${fRRList }">
											<c:if
												test="${findReply.findRNo eq findReReply.findRParentNo }">
												<div id="comment-reply-1" class="comment comment-reply">
													<div class="d-flex">
														<div class="comment-img">
															<img src="assets/img/blog/comments-3.jpg" alt="">
														</div>
														<div>
															<h5>
																<a href="#">${findReReply.findRWriter}</a>
																<c:if
																	test="${sessionScope.memberId eq findReReply.findRWriter }">
																	<a href="javascript:void(0)" class="reply"
																		onclick="showAddModifyForm('${findReReply.findRNo}')">
																		<i class="bi bi-eraser-fill"></i> 수정
																	</a>
																	<c:url var="delReplyUrl" value="/findReply/delete.do">
																		<c:param name="findRNo" value="${findReReply.findRNo }"></c:param>
																		<c:param name="refFindNo"
																			value="${findReReply.refFindNo }"></c:param>
																	</c:url>
																	<a href="javascript:void(0)" class="reply"
																		onclick="deleteReply('${delReplyUrl}');"> <i
																		class="bi bi-x-circle"></i> 삭제
																	</a>
																</c:if>
															</h5>
															<time datetime="2020-01-01">${findReReply.findRCreateDate.toString().substring(0,11) }</time>
															<p>${findReReply.findRContent }</p>
														</div>
													</div>
												</div>
												<!-- 대댓글 수정폼 -->
												<div id="AddModifyForm-${findReReply.findRNo }"
													style="display: none;">
													<form action="/findReply/update.do" method="post">
														<div class="row">
															<div class="col input-area align-items-center">
																<input type="hidden" name="findRNo"
																	value="${findReReply.findRNo }"> 
																<input type="hidden" name="refFindNo"
																	value="${findReReply.refFindNo }">
																<input type="hidden" name="findRParentNo"
																	value="${findReReply.findRParentNo }">
																<textarea class="form-control" name="findRContent"
																	placeholder="응원의 댓글을 남겨주세요.">${findReReply.findRContent }</textarea>
																<button type="submit" class="btn btn-primary">
																	<i class="bi bi-send"></i>
																</button>
															</div>
														</div>
													</form>
												</div>
											</c:if>
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
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=07ff3550f3413fb406de3abc16437467&libraries=services,clusterer,drawing"></script>
		<!-- 지도 api -->
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=07ff3550f3413fb406de3abc16437467"></script>
	
		<script>
		<!-- 지도 api -->
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(37.470596042652, 126.936957347952), // 지도의 중심좌표
				level : 3 // 지도의 확대 레벨
			};
			// 지도를 생성합니다
			var map = new kakao.maps.Map(mapContainer, mapOption); 
		
			
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();

			// 주소로 좌표를 검색합니다
			geocoder.addressSearch('${findBoard.getPlace}', function(result, status) {

			    // 정상적으로 검색이 완료됐으면 
			     if (status === kakao.maps.services.Status.OK) {

			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					console.log(coords);
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new kakao.maps.Marker({
			            map: map,
			            position: coords
			        });

			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new kakao.maps.InfoWindow({
			            content: '<div style="width:150px;text-align:center;padding:3px 0;">보관 장소</div>'
			        });
			        infowindow.open(map, marker);

			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    } 
			});  
			

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
//	 		function updateReplyBtn(url){
//	 			location.href=url;
//	 		}
			
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
	
			
			
			
			
			
			// 대댓글 등록폼 
			function showAddForm(lostRNo) {
				const addForm = document.querySelector("#addForm-" + lostRNo);
				if (addForm.style.display == "none") {
					addForm.style.display = "block";
				} else {
					addForm.style.display = "none";
				}
			}
			// 대댓글 수정폼 
			function showAddModifyForm(lostRNo) {
				const AddModifyForm = document.querySelector("#AddModifyForm-" + lostRNo);
				if (AddModifyForm.style.display == "none") {
					AddModifyForm.style.display = "block";
				} else {
					AddModifyForm.style.display = "none";
				}
			}
			
		</script>
	</body>

</html>