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
<link rel="stylesheet"
	href="../resources/assets/css/find/findDetail.css">
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
		<section id="title" class="sections-bg title"
			style="padding-top: 100px;">
			<div class="container position-relative">
				<div class="section-header">
					<h2>주인을 찾아요</h2>
					<p>습득물의 상세 내용을 확인하세요!</p>
				</div>
			</div>
		</section>
		<!-- ======= 습득물 상세 조회 ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">
				<div class="row g-5">
					<div class="col-lg-12">
						<article class="blog-details">
							<div class="post-img">
								<img src="assets/img/blog/blog-1.jpg" alt="" class="img-fluid">
							</div>
							<div class="d-flex justify-content-between">
								<h2 class="title">${findBoard.findTitle }</h2>
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


							<div class="meta-top">
								<ul>
									<li class="d-flex align-items-center"><i
										class="bi bi-person"></i>${findBoard.memberName }</li>
									<li class="d-flex align-items-center"><i
										class="bi bi-clock"></i>
									<time datetime="2020-01-01">${findBoard.fCreateDate }</time></li>
									<li class="d-flex align-items-center"><i
										class="bi bi-chat-dots"></i>12 Comments</li>
								</ul>
							</div>
							<!-- End meta top -->

							<div class="content">
								<div class="content-img">
									<img
										src="../resources/fuploadFiles/${findBoard.findFilerename }"
										onerror="this.src='../resources/assets/img/no-image.jpg'">
								</div>
								<div class="infoWrap">
									<div class="d-flex justify-content-start">
										<div id="category_box"
											class="d-flex justify-content-center text-center">
											<div class="filter-active category_icon">
												<div class="icon">
													<c:if test="${findBoard.findCategory eq '지갑'}">
														<img src="../resources/assets/img/wallet.png"
															style="width: 40px; height: 40px;">
													</c:if>
													<c:if test="${findBoard.findCategory eq '가방'}">
														<img src="../resources/assets/img/bag.png"
															style="width: 40px; height: 40px;">
													</c:if>
													<c:if test="${findBoard.findCategory eq '핸드폰'}">
														<img src="../resources/assets/img/phone.png"
															style="width: 40px; height: 40px;">
													</c:if>
													<c:if test="${findBoard.findCategory eq '의류'}">
														<img src="../resources/assets/img/clothes.png"
															style="width: 40px; height: 40px;">
													</c:if>
													<c:if test="${findBoard.findCategory eq '기타'}">
														<img src="../resources/assets/img/others.png"
															style="width: 40px; height: 40px;">
													</c:if>
												</div>
												<h5 class="icon-title">${findBoard.findCategory }</h5>
											</div>
											<div class="filter-active category_icon">
												<div class="icon">
													<c:if test="${findBoard.findPlace eq '버스'}">
														<img src="../resources/assets/img/bus.png"
															style="width: 40px; height: 40px;">
													</c:if>
													<c:if test="${findBoard.findPlace eq '지하철'}">
														<img src="../resources/assets/img/train.png"
															style="width: 40px; height: 40px;">
													</c:if>
													<c:if test="${findBoard.findPlace eq '택시'}">
														<img src="../resources/assets/img/taxi.png"
															style="width: 40px; height: 40px;">
													</c:if>
													<c:if test="${findBoard.findPlace eq '공항'}">
														<img src="../resources/assets/img/airplane.png"
															style="width: 40px; height: 40px;">
													</c:if>
													<c:if test="${findBoard.findPlace eq '음식점'}">
														<img src="../resources/assets/img/restaurant.png"
															style="width: 40px; height: 40px;">
													</c:if>
												</div>
												<h5 class="icon-title">${findBoard.findPlace }</h5>
											</div>
										</div>
										<div class="find-info">
											<ul class="find-info">
												<li><p class="find01">색상</p>
													<p class="find02">${findBoard.findColor }</p></li>
												<c:if test="${findBoard.findBrand ne null}">
													<li><p class="find01">브랜드</p>
														<p class="find02">${findBoard.findBrand }</p></li>
												</c:if>
												<c:if test="${findBoard.findBrand eq null}">
													<li><p class="find01">브랜드</p>
														<p class="find02">X</p></li>
												</c:if>
											</ul>
										</div>
									</div>
									<div id="map" class="find_location"
										style="background-color: #f8f8f8; width: 100%; height: 200px;">
										지도 공간</div>
									<div class="find-info">
										<ul class="find-info">
											<li><p class="find01">보관 장소</p>
												<p class="find02">${findBoard.getPlace }</p></li>
											<li><p class="find01">습득일자</p>
												<p class="find02">${findBoard.findDate }</p></li>
											<li><p class="find01">유실물 상태</p>
												<p class="find02">보관중</p></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- End post content -->
							<hr>
							<div class="findContent">${findBoard.findContent }</div>
							<hr>
							<div id="buttons" class="d-flex justify-content-between">
								<c:if test="${sessionScope.memberId eq findBoard.findWriter }">
									<div>
										<form action="/findBoard/complete.do" method="post">
											<input type="hidden" name="findNo"
												value="${findBoard.findNo }">
											<button type="submit" class="btn"
												style="background-color: gold; color: #fff;">인계완료</button>
										</form>
									</div>
									<div>

										<button type="button" class="btn"
											style="background-color: #4365BC; color: #fff"
											onclick="showUpdateFindBoardForm();">수정하기</button>
										<button type="button" class="btn"
											style="background-color: #818181; color: #fff"
											onclick="checkDelete();">삭제하기</button>
									</div>
								</c:if>
							</div>
							<!-- 댓글창 -->
							<div class="comments">
								<h4 class="comments-count">댓글</h4>
								<hr>
								<!-- 댓글 등록 -->
								<div class="reply-form">
									<form action="/findReply/insert.do" method="post">
										<input type="hidden" name="refFindNo"
											value="${findBoard.findNo}">
										<div class="row">
											<div class="col input-area align-items-center">
												<textarea name="findRContent" class="form-control"
													placeholder="응원의 댓글을 남겨주세요."></textarea>
												<button type="submit" class="btn btn-primary">
													<i class="bi bi-send"></i>
												</button>
											</div>
										</div>
									</form>
								</div>
								<!-- 댓글 리스트 -->
								<c:forEach var="findReply" items="${fRList }">
									<div id="comment-1" class="comment">
										<div class="d-flex">
											<div class="comment-img">
												<img src="assets/img/blog/comments-1.jpg" alt="">
											</div>
											<div>
												<h5>
													<a href="#">${findReply.findRWriter}</a>
													<%-- <c:if test="${sessionScope.memberId eq findReply.findRWriter }"> --%>
													<%-- </c:if> --%>
													<a href="javascript:void(0)" class="reply"
														onclick="showAddForm('${findReply.findRNo}')"> <i
														class="bi bi-reply-fill"></i>답글
													</a>
													<c:if
														test="${sessionScope.memberId eq findReply.findRWriter }">
														<a href="javascript:void(0)" class="reply"
															onclick="showModifyForm('${findReply.findRNo}')"> <i
															class="bi bi-eraser-fill"></i> 수정
														</a>
														<c:url var="delReplyUrl" value="/findReply/delete.do">
															<c:param name="findRNo" value="${findReply.findRNo }"></c:param>
															<c:param name="refFindNo" value="${findReply.refFindNo }"></c:param>
														</c:url>
														<a href="javascript:void(0)" class="reply"
															onclick="deleteReply('${delReplyUrl}');"> <i
															class="bi bi-x-circle"></i> 삭제
														</a>
													</c:if>
												</h5>
												<time datetime="2020-01-01">${findReply.findRCreateDate.toString().substring(0,11) }</time>
												<p>${findReply.findRContent }</p>
											</div>
										</div>
									</div>
									<!-- 댓글 수정폼 -->
									<div id="modifyForm-${findReply.findRNo }"
										style="display: none;">
										<form action="/findReply/update.do" method="post">
											<div class="row">
												<div class="col input-area align-items-center">
													<input type="hidden" name="findRNo"
														value="${findReply.findRNo }"> <input
														type="hidden" name="refFindNo"
														value="${findReply.refFindNo }">
													<textarea class="form-control" name="findRContent"
														placeholder="응원의 댓글을 남겨주세요.">${findReply.findRContent }</textarea>
													<button type="submit" class="btn btn-primary">
														<i class="bi bi-send"></i>
													</button>
												</div>
											</div>
										</form>
									</div>
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
									<!-- End comment #1 -->
								
								<c:forEach var="findReReply" items="${fRRList }">
									<c:if test="${findReply.findRNo eq findReReply.findRParentNo }">
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
															onclick="showModifyForm('${findReReply.findRNo}')"> <i
															class="bi bi-eraser-fill"></i> 수정
														</a>
														<c:url var="delReplyUrl" value="/findReply/delete.do">
															<c:param name="findRNo" value="${findReReply.findRNo }"></c:param>
															<c:param name="refFindNo" value="${findReReply.refFindNo }"></c:param>
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
									</c:if>
								</c:forEach>
								</c:forEach>

								<div class="mt-5 d-flex justify-content-center">
									<c:if test="${pInfo.startNavi ne '1' }">
										<a
											href="/findBoard/detail.do?findNo=${findBoard.findNo }&page=${pInfo.startNavi-1 }"
											class="first">Prev&nbsp;&nbsp;&nbsp;</a>
									</c:if>
									<c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }"
										var="p">
										<a href="${pageUrl }">${p }</a>&nbsp;
										</c:forEach>
									<c:if test="${pInfo.endNavi ne pInfo.naviTotalCount }">
										<a
											href="/findBoard/detail.do?findNo=${findBoard.findNo }&page=${pInfo.endNavi+1 }"
											class="last">Next</a>
									</c:if>
								</div>
							</div>
							<!-- End blog comments -->

						</article>
						<!-- End blog post -->
					</div>
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

	<!-- 지도 api -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=07ff3550f3413fb406de3abc16437467"></script>
	<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=07ff3550f3413fb406de3abc16437467&libraries=services,clusterer,drawing"></script>

	<script>
	<!-- 지도 api -->
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.470596042652, 126.936957347952), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 마커 생성
		var marker = new kakao.maps.Marker(
				{
					position : new kakao.maps.LatLng(37.470596042652,
							126.936957347952),
					map : map
				});

		marker.setMap(map);
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('경기 성남시 분당구 판교역로 235 에이치스퀘어', function(result,
				status) {

			// 정상적으로 검색이 완료됐으면 
			if (status === kakao.maps.services.Status.OK) {

				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				// 결과값으로 받은 위치를 마커로 표시합니다
				var marker = new kakao.maps.Marker({
					map : map,
					position : coords
				});

				// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				map.setCenter(coords);
			}
		});

		// 좋아요 로그인 확인 
		function showLoginAlert() {
			alert("좋아요는 로그인 후에 가능합니다.");
		}
		// 좋아요 
		function likeBtn() {
			const likeYn = '${likeYn}';
			const memberId = '${sessionScope.memberId}';
			const findNo = '${findBoard.findNo}'
			if (likeYn > 0) {
				if (confirm("좋아요를 취소하시겠습니까?")) {
					location.href = "/FindLike/delete.do?refFindNo=" + findNo
							+ "&memberId" + memberId;
				}
			} else {
				alert("좋아요가 등록되었습니다.");
				location.href = "/FindLike/insert.do?refFindNo=" + findNo
						+ "&memberId" + memberId;
			}
		}
		// 댓글 수정폼 
		function showModifyForm(findRNo) {
			const ModifyForm = document.querySelector("#modifyForm-" + findRNo);
			if (ModifyForm.style.display == "none") {
				ModifyForm.style.display = "block";
			} else {
				ModifyForm.style.display = "none";
			}
		}
		// 댓글 수정폼 
		function showAddForm(findRNo) {
			const addForm = document.querySelector("#addForm-" + findRNo);
			if (addForm.style.display == "none") {
				addForm.style.display = "block";
			} else {
				addForm.style.display = "none";
			}
		}
		// 댓글 삭제
		function deleteReply(url) {
			if (confirm("정말 삭제하시겠습니까?")) {
				location.href = url;
			}
		}

		// 게시글 수정 
		function showUpdateFindBoardForm() {
			const findNo = '${findBoard.findNo}';
			location.href = "/findBoard/update.do?findNo=" + findNo;
		}
		// 게시글 삭제
		function checkDelete() {
			const findNo = '${findBoard.findNo}';
			if (confirm("삭제하시겠습니까?")) {
				location.href = "/findBoard/delete.do?findNo=" + findNo;
			}
		}
	</script>
</body>

</html>