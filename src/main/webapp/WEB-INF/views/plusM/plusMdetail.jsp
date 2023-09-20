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
<link href="../resources/assets/css/plusM/plusMdetail.css"
	rel="stylesheet">
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
	<section id="title" class="title" style="margin-top: 150px;">
		<div class="container position-relative">
			<div class="section-header">
				<h2>찾음+</h2>
			</div>
		</div>
		<div>
			<h2 style="text-align: center; font-weight: bold;">포인트로 기부해요</h2>
		</div>
	</section>

	<main id="main">
		<!-- ======= 기부 상세조회 ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">

				<div class="row g-5">

					<div class="col-lg-8">

						<article class="blog-details">

							<h2 class="title">${plusMBoard.plusMTitle }</h2>

							<div class="meta-top">
								<ul>
									<li class="d-flex align-items-center"><i
										class="bi bi-person"></i> <c:if test="${plusMBoard.plusMWriter eq 'admin' }">관리자</c:if> </li>
									<li class="d-flex align-items-center"><i
										class="bi bi-clock"></i> <time datetime="2020-01-01">${plusMBoard.plusMCreateDate }</time>
									</li>
									<li class="d-flex align-items-center"><i
										class="bi bi-chat-dots"></i>${pInfo.totalCount } 댓글</li>
									<li class="d-flex align-items-center">
										<i class="bi bi-hand-thumbs-up"></i>
										<a href="#" data-bs-toggle="modal" data-bs-target="#likeModal">${likeCount } 좋아요</a>
									</li>
								</ul>
							</div>
							<!-- End meta top -->

							<div class="content">
								<div>
									<img src="${plusMBoard.plusMFilepath }"
										alt="${plusMBoard.plusMFilename }" style="width: 70%;">
								</div>
								<div style="margin-top: 30px;">${plusMBoard.plusMContent }
								</div>
							</div>
							<!-- End post content -->

						</article>
						<!-- End blog post -->

						<!-- 댓글창 -->
						<div class="comments">

							<h4 class="comments-count">댓글</h4>
							<hr>
							<c:if test="${dntYn != 0 }">
								<div class="reply-form">
									<form action="/plusMReply/insert.do" method="post">
										<input type="hidden" name="refPlusMNo"
											value="${plusMBoard.plusMNo }">
										<div class="row">
											<div class="col input-area align-items-center">
												<textarea class="form-control" name="plusMRContent"
													placeholder="응원의 댓글을 남겨주세요."></textarea>
												<button type="submit" class="btn btn-primary">
													<i class="bi bi-send"></i>
												</button>
											</div>
										</div>
									</form>
								</div>
							</c:if>
							<c:forEach items="${pMRList }" var="plusMReply">
								<div id="comment-${plusMReply.plusMRNo }" class="comment">
									<div class="d-flex">
										<div class="comment-img"></div>
										<div>
											<h5>${plusMReply.plusMRWriter }
												<c:if
													test="${sessionScope.memberId eq plusMReply.plusMRWriter }">
													<a href="javascript:void(0)" class="reply"
														onclick="showEditForm('${plusMReply.plusMRNo}')"> <i
														class="bi bi-eraser-fill"></i> 수정
													</a>
													<a href="javascript:void(0)" class="reply"
														onclick="deleteReply('${plusMReply.plusMRNo}', '${plusMReply.refPlusMNo }')">
														<i class="bi bi-x-circle"></i> 삭제
													</a>
												</c:if>
											</h5>
											<time datetime="2020-01-01">${plusMReply.plusMRCreateDate.toString().substring(0,11) }</time>
											<p>${plusMReply.plusMRContent }</p>
										</div>
									</div>
								</div>
								<div id="edit-form-${plusMReply.plusMRNo}" class="edit-form"
									style="display: none;">
									<!-- 수정 폼의 내용을 입력하세요. -->
									<form action="/plusMReply/update.do" method="post">
										<div class="row">
											<div class="col input-area align-items-center">
												<input type="hidden" name="plusMRNo"
													value="${plusMReply.plusMRNo }"> <input
													type="hidden" name="refPlusMNo"
													value="${plusMReply.refPlusMNo }">
												<textarea class="form-control" name="plusMRContent"
													placeholder="응원의 댓글을 남겨주세요.">${plusMReply.plusMRContent }</textarea>
												<button type="submit" class="btn btn-primary">
													<i class="bi bi-send"></i>
												</button>
											</div>
										</div>
									</form>
								</div>
								<!-- End comment #1 -->
							</c:forEach>
							<div class="mt-5 d-flex justify-content-center">
								<nav aria-label="Page navigation example r">
									<ul class="pagination">
										<c:url var="prevUrl" value="/plusMBoard/detail.do">
											<c:param name="page" value="${pInfo.startNavi - 1 }"></c:param>
											<c:param name="plusMNo" value="${plusMBoard.plusMNo }"></c:param>
										</c:url>
										<li class="page-item"><a class="page-link"
											href="${prevUrl }"><i class="bi bi-chevron-left"></i></a></li>
										<c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }"
											var="p">
											<c:url var="pageUrl" value="/plusMBoard/detail.do">
												<c:param name="page" value="${p }"></c:param>
												<c:param name="plusMNo" value="${plusMBoard.plusMNo }"></c:param>
											</c:url>
											<li class="page-item"><a class="page-link"
												href="${pageUrl }">${p }</a></li>
										</c:forEach>
										<c:url var="nextUrl" value="/plusMBoard/detail.do">
											<c:param name="page" value="${pInfo.endNavi + 1 }"></c:param>
											<c:param name="plusMNo" value="${plusMBoard.plusMNo }"></c:param>
										</c:url>
										<li class="page-item"><a class="page-link"
											href="${nextUrl }"><i class="bi bi-chevron-right"></i></a></li>
									</ul>
								</nav>
							</div>
						</div>
						<!-- End blog comments -->
					</div>
					<!-- 기부 정보 -->
					<div class="col-lg-4">

						<div class="sidebar">
							<div class="sidebar-item like">
								<button class="heart-button" id="like"
									onclick="likeBtn();">
									<c:if test="${likeYn == 1 }">
										<i class="bi-suit-heart-fill like-img"></i>
									</c:if>
									<c:if test="${likeYn == 0 }">
										<i class="bi-suit-heart no-like-img"></i>
									</c:if>
								</button>
							</div>
							<div class="sidebar-item donation-info">
								<div class="cur-val">
									<fmt:parseNumber var="percent"
										value="${(plusMBoard.plusMCurAmount / plusMBoard.plusMGoalAmount) * 100 }"
										integerOnly="true" />
									<strong>${percent }%</strong>
								</div>
								<div class="graphBar">
									<span class="donationBar"
										style="width:${(plusMBoard.plusMCurAmount / plusMBoard.plusMGoalAmount) * 100 }%;"></span>
								</div>
								<div class="donationBottom row">
									<span>${plusMBoard.plusMStartDate } ~
										${plusMBoard.plusMEndDate }</span>
									<fmt:formatNumber var="curAmount"
										value="${plusMBoard.plusMCurAmount }"></fmt:formatNumber>
									<p>${curAmount }P</p>
									<fmt:formatNumber var="goalAmount"
										value="${plusMBoard.plusMGoalAmount }"></fmt:formatNumber>
									<span>목표금액 ${goalAmount }P</span>
								</div>
								<div class="donation-btn">
									<button class="btn-primary" type="button"
										data-bs-toggle="modal" data-bs-target="#donationModal">포인트
										기부하기</button>
								</div>
								<div class="dnt-place">
									<span>모금 단체</span>
									<p>${plusMBoard.plusMDntPlace }</p>
								</div>
								<c:if test="${memberGrade == 3 }">
									<div class="row admin-btn-area">
										<button class="col admin-btn" onclick="updatePlusMBoard();">수정</button>
										<button class="col admin-btn" onclick="deletePlusMBoard();">삭제</button>
									</div>								
								</c:if>
							</div>
							<!-- End sidebar search formn-->

						</div>
						<!-- End Blog Sidebar -->

					</div>
				</div>

			</div>
		</section>
		<!-- End Blog Details Section -->
		<!-- Modal -->
		<div class="modal fade" id="donationModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header text-center">
						<h5 class="modal-title" id="exampleModalLabel">포인트 기부하기</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<form id="dnt-form" action="/donation/insert.do" method="post">
						<input type="hidden" name="refPlusMNo" value="${plusMBoard.plusMNo }">
						<input type="hidden" name="dntPlace" value="${plusMBoard.plusMDntPlace }">
						<div class="modal-body justify-content-center">
							<div class="mb-3">
								<span>보유 포인트 : </span> <span id="memberPoint">${memberCurPoint }</span><span>P</span>
							</div>
							<div class="mb-3">
								<input type="number" id="dntPoint" name="dntPoint"
									placeholder="기부할 포인트를 입력하세요" style="width: 80%;"> <label
									for="inputPoint"> P </label>
							</div>
							<div>
								<span id="dnt-msg" style="color:red;"></span>							
							</div>
							<div class="mb-3">
								<input type="checkbox" name="" id="dntAgree"> <label
									for="dntAgree">기부한 포인트는 취소할 수 없습니다.</label>
							</div>
						</div>
						<div class="modal-footer d-flex justify-content-center">
							<button type="button" id="close" class="btn btn-secondary"
								data-bs-dismiss="modal">닫기</button>
							<button type="submit" id="dntBtn" class="btn btn-primary">기부하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="modal fade" id="likeModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header text-center">
						<h5 class="modal-title" id="exampleModalLabel">좋아요</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body text-center">
						<c:forEach items="${likeList }" var="like" varStatus="i">
						<div class="row">
							<dl class="d-flex" style="justify-content:space-between;">
								<dt class="text-center">아이디</dt>
								<dd class="text-center">${like.memberId }</dd>
							</dl>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
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
	<script type="text/javascript">
		// 댓글 수정 폼 나타나게 하는 이벤트
		function showEditForm(plusMRNo) {
			const editForm = document.querySelector("#edit-form-" + plusMRNo);
			if (editForm.style.display == "none") {
				editForm.style.display = "block";
			} else {
				editForm.style.display = "none";
			}
		}

		// 댓글 삭제
		function deleteReply(plusMRNo, refPlusMNo) {
			if (confirm("정말 삭제하시겠습니까?")) {
				location.href = "/plusMReply/delete.do?plusMRNo=" + plusMRNo
						+ "&refPlusMNo=" + refPlusMNo;
			}
		}

		// 게시글 수정
		function updatePlusMBoard() {
			const plusMNo = '${plusMBoard.plusMNo}';
			location.href = "/plusMBoard/update.do?plusMNo=" + plusMNo;
		}

		// 게시글 삭제
		function deletePlusMBoard() {
			const plusMNo = '${plusMBoard.plusMNo}';
			if (confirm("정말 삭제하시겠습니까?")) {
				location.href = "/plusMBoard/delete.do?plusMNo=" + plusMNo;
			}
		}

		/* // 좋아요 hover
		function toggleIcon(button) {
			const icon = button.querySelector('i');

			// 이미지 클래스를 변경합니다.
			if (icon.classList.contains('bi-suit-heart')) {
				icon.classList.remove('bi-suit-heart');
				icon.classList.add('bi-suit-heart-fill');
			}else {
				icon.classList.remove('bi-suit-heart-fill');
				icon.classList.add('bi-suit-heart');
			}
		} */
		
		// 좋아요 클릭
		function likeBtn() {
			const likeYn = '${likeYn}';
			const plusMNo = '${plusMBoard.plusMNo}'
			if(likeYn == 1) {
				if(confirm("좋아요를 취소하시겠습니까?")) {
					location.href = "/plusMLike/delete.do?refPlusMNo=" + plusMNo;
				}
			}else {
				alert("좋아요가 등록되었습니다.");
				location.href = "/plusMLike/insert.do?refPlusMNo=" + plusMNo;
			}
		}
		
		// 기부 폼 유효성 체크
		document.querySelector("#dnt-form").addEventListener("submit", (e) => {
			const memberPoint = document.querySelector("#memberPoint").innerText;
			const inputPoint = document.querySelector("#dntPoint").value;
			const msg = document.querySelector("#dnt-msg");
			const dntAgree = document.querySelector("#dntAgree");
			if(isNaN(parseInt(inputPoint)) || parseInt(inputPoint) <= 0) {
				e.preventDefault();
				msg.innerText = "기부할 포인트를 입력하세요.";
			}else if(parseInt(inputPoint) > parseInt(memberPoint)) {
				e.preventDefault();
				msg.innerText = "입력한 포인트가 보유한 포인트보다 큽니다.";
			}else if (!dntAgree.checked) {
				e.preventDefault();
				msg.innerText = "포인트 취소 불가 동의 후 기부 가능합니다.";
			}else {
				msg.innerText = "";
				submit();
			}
		});
	</script>
</body>

</html>