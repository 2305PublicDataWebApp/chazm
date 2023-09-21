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
<link rel="stylesheet" href="../resources/assets/css/common/header.css">
<link rel="stylesheet" href="../resources/assets/css/common/footer.css">
<link href="../resources/assets/css/member/myPage.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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

		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">
				<div class="row g-5">
					<div class="col-lg-4">
						<div class="sidebar">
							<div class="sidebar-item donation-info">
								<div class="cur-val">
									<strong>${memberId }</strong>
								</div>
								<div class="donationBottom row">
									<span>${memberName }</span>
									<c:if test="${member.memberPoint eq null}">
										<p>0P</p>
									</c:if>
									<c:if test="${member.memberPoint ne null}">
										<p>${member.memberPoint }P</p>
									</c:if>
								</div>
								<div class="donation-btn">
									<button type="button" data-bs-toggle="modal"
										data-bs-target="#exampleModal"
										data-bs-whatever="@updatemember">회원정보 수정</button>
								</div>
								<br />
								<hr />
								<div class="myPageSideMenu row">
									<a href=#member-info>회원 정보</a>
								</div>
								<div class="myPageSideMenu row">
									<a href=#member-write>내가 쓴 글</a>
								</div>
								<div class="myPageSideMenu row">
									<a href=#member-donation>기부 내역</a>
								</div>
								<div class="myPageSideMenu row">
									<a href=#member-pointAmount>포인트 내역</a>
								</div>
								<hr>
								<div class="donation-btn">
									<button type="button" class="btn btn-primary"
										style="width: 100px; height: 40px; font-size: 10px; border:none"
										onclick="checkDelete()">회원 탈퇴</button>
									<button type="button" class="btn btn-primary"
										style="width: 100px; height: 40px; font-size: 10px; border:none"
										data-bs-toggle="modal" data-bs-target="#updatePwModal"">비밀번호
										변경</button>
								</div>
							</div>
							<!-- End sidebar search formn-->
						</div>
						<!-- End Blog Sidebar -->
					</div>

					<div class="col-lg-8">
						<article class="blog-details" id="member-info"
							style="display: block">
							<a id="about" name="about"></a>
							<h2 class="title">회원정보</h2>
							<div class="meta-top"></div>
							<!-- End meta top -->
							<!-- 우측 내용 -->
							<div class="content">

								<div class="card">
									<div class="row g-0">
										<div class="col-md-4 gradient-custom text-center text-white"
											style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
											<c:if test="${memberGrade eq 1 }">
												<h5 style="margin-top: 50px">
												<i class="bi bi-person-square"></i>
												</h5>
												<br>
												<h5 style="margin-top: 50px">개인회원</h5>
											</c:if>
											<c:if test="${memberGrade eq 2 }">
												<h5 style="margin-top: 50px">
												<i class="bi bi-building"></i>
												</h5>
												<br>
												<h5 style="margin-top: 50px">기업회원</h5>
											</c:if>
											<i class="far fa-edit mb-5"></i>
										</div>
										<div class="col-md-8">
											<div class="card-body p-4">
												<div class="row pt-1">
													<c:if test="${member.memberGrade eq 1 }">
														<div class="col-6 mb-3">
															<h5>이름</h5>
															<p class="text-muted">${member.memberName }</p>
														</div>
													</c:if>
													<c:if test="${member.memberGrade eq 2 }">
														<div class="col-6 mb-3">
															<h5>기업명</h5>
															<p class="text-muted">${member.memberName }</p>
														</div>
													</c:if>
													<div class="col-6 mb-3">
														<h5>핸드폰번호</h5>
														<p class="text-muted">${member.memberPhone }</p>
													</div>
												</div>
												<div>
													<hr class="mt-0 mb-4">
													<h5>이메일</h5>
													<p class="text-muted">${member.memberEmail }</p>
												</div>

												<div class="row pt-1">
													<div class="col-6 mb-3">
														<h5>주소</h5>
														<p class="text-muted">${member.memberAddress }</p>
													</div>
												</div>
												<div class="d-flex justify-content-start">
													<a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
													<a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
													<a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<br>

							</div>
							<!-- End post content -->
						</article>
						<!-- End blog post -->

						<article class="blog-details" id="member-write">
							<h2 class="title">내가 쓴 글</h2>
							<div class="stats-item d-flex align-items-center">
								<div class="container">
									<div class="row" style="margin-bottom: 50px">
										<div class="four col-md-3">
											<div class="counter-box colored">
												<i class="bi bi-pencil-fill"></i> <span
													data-purecounter-start="0"
													data-purecounter-end="${myPostCount}"
													data-purecounter-duration="1" class="purecounter counter"></span>
												<p>작성한 글</p>
											</div>
										</div>
										<div class="four col-md-3">
											<div class="counter-box">
												<c:if test="${myPostCount ne null}">
													<i class="bi bi-chat-dots"></i>
													<span data-purecounter-start="0"
														data-purecounter-end="${myPostCount }"
														data-purecounter-duration="1" class="purecounter counter"></span>
													<p>분실물 게시판</p>
												</c:if>
												<c:if test="${myPostCount eq null}">
													<i class="bi bi-chat-dots"></i>
													<span data-purecounter-start="0" data-purecounter-end="0"
														data-purecounter-duration="1" class="purecounter counter"></span>
													<p>분실물 게시판</p>
												</c:if>
											</div>
										</div>
										<!-- 기업일경우 -->
										<div class="four col-md-3">
											<div class="counter-box">
												<c:if test="${myPostFindCount ne null}">
													<i class="bi bi-box2-heart"></i>
													<span data-purecounter-start="0"
														data-purecounter-end="${myPostFindCount }"
														data-purecounter-duration="1" class="purecounter counter"></span>
													<p>습득물 게시판</p>
												</c:if>
												<c:if test="${myPostFindCount eq null}">
													<i class="bi bi-box2-heart"></i>
													<span data-purecounter-start="0" data-purecounter-end="0"
														data-purecounter-duration="1" class="purecounter counter"></span>
													<p>습득물 게시판</p>
												</c:if>
											</div>
										</div>
									</div>
									<div>
										<c:if test="${memberGrade eq 1 }">
											<table class="table accordion accordion-flush text-center"
												id="lostlist" data-aos="fade-up" data-aos-delay="100">
												<colgroup>
													<col width="60%" />
													<col width="30%" />

												</colgroup>
												<tr>
													<th>제목</th>
													<th>등록일</th>
												</tr>
												<c:forEach items="${myPosts}" var="lostOne">
													<tr>
														<input type="hidden" value="${lostOne.lostNo}">
														<td><a
															href="/lostBoard/detail.do?lostNo=${lostOne.lostNo}"
															class="accordion-button collapsed">
																${lostOne.lostTitle } </a></td>
														<td>${lostOne.lCreateDate }</td>

													</tr>
												</c:forEach>
											</table>
											<div class="mt-5 d-flex justify-content-center">
												<nav aria-label="Page navigation example r">
													<ul class="pagination">
														<c:url var="prevUrl" value="/member/myPage.do">
															<c:param name="page"
																value="${pageLostInfo.startNavi - 1 }"></c:param>
														</c:url>
														<li class="page-item"><a class="page-link"
															href="${prevUrl }"><i class="bi bi-chevron-left"></i></a></li>
														<c:forEach begin="${pageLostInfo.startNavi }"
															end="${pageLostInfo.endNavi }" var="p">
															<c:url var="pageUrl" value="/plusA/list.do">
																<c:param name="page" value="${p }"></c:param>
															</c:url>
															<li class="page-item"><a class="page-link"
																href="${pageUrl }">${p }</a></li>
														</c:forEach>
														<c:url var="nextUrl" value="/plusA/list.do">
															<c:param name="page" value="${pageLostInfo.endNavi + 1 }"></c:param>
														</c:url>
														<li class="page-item"><a class="page-link"
															href="${nextUrl }"><i class="bi bi-chevron-right"></i></a></li>
													</ul>
												</nav>
											</div>
										</c:if>
										<c:if test="${memberGrade eq 2 }">
											<table class="table accordion accordion-flush text-center"
												id="lostlist" data-aos="fade-up" data-aos-delay="100">
												<colgroup>
													<col width="60%" />
													<col width="30%" />

												</colgroup>
												<tr>
													<th>제목</th>
													<th>등록일</th>
												</tr>
												<c:forEach items="${myFindPosts}" var="findOne">
													<tr>
														<input type="hidden" value="${findOne.findNo}">
														<td><a
															href="/findBoard/detail.do?findNo=${findOne.findNo}"
															class="accordion-button collapsed">
																${findOne.findTitle } </a></td>
														<td>${findOne.fCreateDate }</td>

													</tr>
												</c:forEach>
											</table>
											<div class="mt-5 d-flex justify-content-center">
												<nav aria-label="Page navigation example r">
													<ul class="pagination">
														<c:url var="prevUrl" value="/member/myPage.do">
															<c:param name="page"
																value="${pageLostInfo.startNavi - 1 }"></c:param>
														</c:url>
														<li class="page-item"><a class="page-link"
															href="${prevUrl }"><i class="bi bi-chevron-left"></i></a></li>
														<c:forEach begin="${pageLostInfo.startNavi }"
															end="${pageLostInfo.endNavi }" var="p">
															<c:url var="pageUrl" value="/plusA/list.do">
																<c:param name="page" value="${p }"></c:param>
															</c:url>
															<li class="page-item"><a class="page-link"
																href="${pageUrl }">${p }</a></li>
														</c:forEach>
														<c:url var="nextUrl" value="/plusA/list.do">
															<c:param name="page" value="${pageLostInfo.endNavi + 1 }"></c:param>
														</c:url>
														<li class="page-item"><a class="page-link"
															href="${nextUrl }"><i class="bi bi-chevron-right"></i></a></li>
													</ul>
												</nav>
											</div>
										</c:if>

									</div>
								</div>
							</div>
						</article>

						<article class="blog-details" id="member-donation">
							<h2 class="title">기부 내역</h2>
							<div class="container">
								<div class="row" style="margin-bottom: 50px">
									<div class="four col-md-3">
										<div class="counter-box colored">
											<i class="bi bi-piggy-bank"></i> <span
												data-purecounter-start="0"
												data-purecounter-end="${myDonationsTotal }"
												data-purecounter-duration="1" class="purecounter counter"></span>
											<p>총 기부 금액</p>
										</div>
									</div>
									<div class="four col-md-3">
										<div class="counter-box">
											<i class="bi bi-envelope-paper-heart"></i> <span
												data-purecounter-start="0"
												data-purecounter-end="${myDonationsCount}"
												data-purecounter-duration="1" class="purecounter counter"></span>
											<p>총 기부 횟수</p>
										</div>
									</div>
									<!-- 기업일경우 -->
									<div class="four col-md-3">
										<div class="counter-box">
											<i class="bi bi-bag-heart"></i>
											<c:if test="${myDonationsCount ne 0}">
												<span data-purecounter-start="0"
													data-purecounter-end="${recentDonation}"
													data-purecounter-duration="1" class="purecounter counter"></span>
											</c:if>
											<c:if test="${myDonationsCount eq 0}">
												<span data-purecounter-start="0" data-purecounter-end="0"
													data-purecounter-duration="1" class="purecounter counter"></span>
											</c:if>
											<p>최근 기부 금액</p>
										</div>
									</div>
								</div>
								<div>
									<table class="table accordion accordion-flush text-center"
										id="plusAlist" data-aos="fade-up" data-aos-delay="100">
										<colgroup>
											<col width="60%" />
											<col width="20%" />
											<col width="20%" />
										</colgroup>
										<tr>
											<th>기부내역</th>
											<th>기부포인트</th>
											<th>기부일자</th>
										</tr>
										<c:forEach items="${myDonations }" var="donation">
											<tr>
												<input type="hidden" value="${donation.donationNo }">
												<td><a
													href="/plusMBoard/detail.do?plusMNo=${donation.refPlusMNo }"
													class="accordion-button collapsed">${donation.plusMBoard.plusMTitle}
												</a></td>
												<td>${donation.dntPoint }</td>
												<td><fmt:formatDate value="${donation.dntDate}"
														pattern="yyyy-MM-dd" /></td>
											</tr>
										</c:forEach>
									</table>
									<div class="mt-5 d-flex justify-content-center">
										<nav aria-label="Page navigation example r">
											<ul class="pagination">
												<c:url var="prevUrl" value="/member/myPage.do">
													<c:param name="page"
														value="${pageDonationInfo.startNavi - 1 }"></c:param>
												</c:url>
												<li class="page-item"><a class="page-link"
													href="${prevUrl }"><i class="bi bi-chevron-left"></i></a></li>
												<c:forEach begin="${pageDonationInfo.startNavi }"
													end="${pageDonationInfo.endNavi }" var="p">
													<c:url var="pageUrl" value="/member/myPage.do">
														<c:param name="page" value="${p }"></c:param>
													</c:url>
													<li class="page-item"><a class="page-link"
														href="${pageUrl }">${p }</a></li>
												</c:forEach>
												<c:url var="nextUrl" value="/member/myPage.do">
													<c:param name="page"
														value="${pageDonationInfo.endNavi + 1 }"></c:param>
												</c:url>
												<li class="page-item"><a class="page-link"
													href="${nextUrl }"><i class="bi bi-chevron-right"></i></a></li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</article>

						<article class="blog-details" id="member-pointAmount">
							<h2 class="title">포인트 내역</h2>
							<div class="container">
								<div class="row" style="margin-bottom: 50px">
									<div class="four col-md-3">
										<div class="counter-box colored">
											<i class="bi bi-piggy-bank"></i> <span
												data-purecounter-start="0"
												data-purecounter-end="${member.memberPoint }"
												data-purecounter-duration="1" class="purecounter counter"></span>
											<p>보유 포인트</p>
										</div>
									</div>
									<div class="four col-md-3">
										<div class="counter-box">
											<i class="bi bi-envelope-paper-heart"></i> <span
												data-purecounter-start="0"
												data-purecounter-end="${memberTotalPoint}"
												data-purecounter-duration="1" class="purecounter counter"></span>
											<p>누적 포인트</p>
										</div>
									</div>
									<!-- 기업일경우 -->
									<div class="four col-md-3">
										<div class="counter-box">
											<i class="bi bi-bag-heart"></i> <span
												data-purecounter-start="0"
												data-purecounter-end="${totalUsePoint }"
												data-purecounter-duration="1" class="purecounter counter"></span>
											<p>사용한 포인트</p>
										</div>
									</div>
								</div>
							</div>
							<div>
								<table class="table accordion accordion-flush text-center"
									id="plusAlist" data-aos="fade-up" data-aos-delay="100">
									<colgroup>
										<col width="60%" />
										<col width="20%" />
										<col width="20%" />
									</colgroup>
									<tr>
										<th>포인트 사용처</th>
										<th>사용내역</th>
										<th>사용일</th>
									</tr>
									<c:forEach items="${pointList }" var="pointList">
										<tr>
											<input type="hidden" value="${pointList.pointNo}">
											<td>${pointList.pointDetails }</td>
											<td>${pointList.pointAmount }</td>
											<td>${pointList.pUpdateDate }</td>
										</tr>
									</c:forEach>
								</table>
								<div class="mt-5 d-flex justify-content-center">
									<nav aria-label="Page navigation example r">
										<ul class="pagination">
											<c:url var="prevUrl" value="/member/myPage.do">
												<c:param name="page" value="${pageLostInfo.startNavi - 1 }"></c:param>
											</c:url>
											<li class="page-item"><a class="page-link"
												href="${prevUrl }"><i class="bi bi-chevron-left"></i></a></li>
											<c:forEach begin="${pageLostInfo.startNavi }"
												end="${pageLostInfo.endNavi }" var="p">
												<c:url var="pageUrl" value="/plusA/list.do">
													<c:param name="page" value="${p }"></c:param>
												</c:url>
												<li class="page-item"><a class="page-link"
													href="${pageUrl }">${p }</a></li>
											</c:forEach>
											<c:url var="nextUrl" value="/plusA/list.do">
												<c:param name="page" value="${pageLostInfo.endNavi + 1 }"></c:param>
											</c:url>
											<li class="page-item"><a class="page-link"
												href="${nextUrl }"><i class="bi bi-chevron-right"></i></a></li>
										</ul>
									</nav>
								</div>
							</div>
						</article>
					</div>
				</div>
			</div>
		</section>
		<!-- End Blog Details Section -->
	</main>

	<!-- 회원정보 수정 모달 -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">회원 정보 수정</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form class="sign-form" action="/member/update.do" method="post">
						<input type="hidden" class="form-control" id="memberIdModal"
							name="memberId" required value="${sessionScope.memberId}">
						<div class="mb-3 custom-input">
							<label for="phone" class="form-label">핸드폰번호</label>
							<div class="input-group">
								<input type="text" class="form-control" id="memberPhone"
									name="memberPhone" required placeholder="핸드폰 번호를 입력해 주세요"
									value="${member.memberPhone }">
								<button class="btn btn-outline-secondary" type="button"
									id="verifyPhone" data-bs-target="#verificationModal"
									data-bs-toggle="modal">인증</button>
							</div>
						</div>
						<!-- 이메일 입력 폼 -->
						<div class="mb-3 custom-input">
							<label for="email" class="form-label">이메일</label>
							<div class="input-group">
								<input type="email" class="form-control" id="memberEmail"
									name="memberEmail" required placeholder="이메일을 입력해 주세요"
									value="${member.memberEmail }">
								<button class="btn btn-outline-secondary" type="button"
									id="verifyEmail" data-bs-target="#emailVerificationModal"
									data-bs-toggle="modal">인증</button>
							</div>
						</div>
						<div class="mb-3">
							<label for="postalCode" class="form-label">주소</label>
							<div class="input-group">
								<input type="text" class="form-control" id="memberPostCode"
									name="memberPostCode" required placeholder="우편 번호"
									value="${member.memberPostCode }">
								<button class="btn btn-outline-secondary" type="button"
									id="searchPostalCode" onclick="sample6_execDaumPostcode();">우편번호
									검색</button>
							</div>
							<input type="text" class="form-control" id="memberAddress"
								name="memberAddress" required
								placeholder="주소(우편 번호 검색 시 자동 입력됩니다.)"
								value="${member.memberAddress }"> <input type="text"
								class="form-control" id="memberDetailAddress"
								name="memberDetailAddress" placeholder="상세주소를 입력해 주세요"
								value="${member.memberDetailAddress }">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">닫기</button>
							<button type="submit" class="btn btn-primary">수정완료</button>
						</div>
					</form>
					<!--2안  -->
				</div>
			</div>
		</div>
	</div>

	<!-- 비밀번호 변경 모달  -->
	<div class="modal fade" id="updatePwModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">비밀번호 변경</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form class="sign-form" action="/member/updatePw.do" method="post">
						<input type="hidden" class="form-control" id="memberIdModal"
							name="memberId" required value="${sessionScope.memberId}">
						<div class="mb-3">
							<label for="password" class="form-label">새 비밀번호</label> <input
								type="password" class="form-control" id="memberPw"
								name="memberPw" placeholder="비밀번호를 입력해 주세요">
							<div id="memberPwError" class="validation"></div>
						</div>
						<div class="mb-3">
							<label for="confirmPassword" class="form-label">새 비밀번호 확인</label>
							<input type="password" class="form-control" id="confirmPassword"
								name="confirmPassword" placeholder="비밀번호를 한번 더 입력해 주세요">
							<div id="confirmPasswordError" class="validation"></div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">닫기</button>
							<button type="submit" class="btn btn-primary">수정완료</button>
						</div>
					</form>
					<!--2안  -->
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 창 -->
	<div class="modal fade" id="verificationModal" tabindex="-1"
		aria-labelledby="verificationModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="verificationModalLabel">핸드폰 인증</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- 인증번호 입력 폼 -->
					<div class="mb-3">
						<label for="verificationCode" class="form-label">인증번호 입력</label> <input
							type="text" class="form-control" id="verificationCode" required>
					</div>
					<div id="verificationError" class="validation"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary"
						id="verifyVerificationCode" data-bs-target="#exampleModal"
						data-bs-toggle="modal">인증 완료</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 이메일 인증 모달 -->
	<div class="modal fade" id="emailVerificationModal" tabindex="-1"
		aria-labelledby="verificationModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="verificationModalLabel">이메일 인증</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- 인증번호 입력 폼 -->
					<div class="mb-3">
						<label for="verificationCode" class="form-label">인증번호 입력</label> <input
							type="text" class="form-control" id="emailVerificationCode"
							required>
					</div>
					<div id="emailVerificationError" class="validation"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary"
						id="emailVerifyVerificationCode" data-bs-target="#exampleModal"
						data-bs-toggle="modal">인증 완료</button>
				</div>
			</div>
		</div>
	</div>

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
	<script src="../resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="../resources/assets/js/main.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function checkDelete() {
			const memberId = '${sessionScope.memberId}'
			if (confirm("탈퇴하시겠습니까?")) {
				location.href = "/member/delete.do?memberId=" + memberId;
			}
		}
		// 모달 열기 함수
		function openModal() {
			// 모달 열기 코드

			document.getElementById("searchPostalCode").addEventListener(
					"click", sample6_execDaumPostcode);
		}

		// 모달 닫기 함수
		function closeModal() {
			// 모달 닫기 코드

			document.getElementById("searchPostalCode").removeEventListener(
					"click", sample6_execDaumPostcode);
		}

		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('memberPostCode').value = data.zonecode;
							document.getElementById("memberAddress").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("memberDetailAddress")
									.focus();

							window.close();
						}
					}).open();

			// 비밀번호 유효성 검사
			document.getElementById("memberPw").addEventListener(
					"blur",
					function() {
						const memberPw = this.value;
						const memberPwError = document
								.getElementById("memberPwError");

						if (memberPw.length === 0) {
							memberPwError.textContent = "비밀번호를 입력하세요.";
							return;
						} else {
							memberPwError.textContent = "";
						}

						// 비밀번호 조건 검사 추가
						// 예: 최소 8자 이상, 영어 소문자, 대문자, 숫자, 특수문자 포함 여부 검사

						/* 						const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
												if (!regex.test(memberPw)) {
													memberPwError.textContent = "비밀번호는 8자이상 입력가능합니다.";
												} else {
													memberPwError.textContent = "";
												} */
					});

			// 비밀번호 확인 유효성 검사
			document
					.getElementById("confirmPassword")
					.addEventListener(
							"blur",
							function() {
								const confirmPassword = this.value;
								const memberPw = document
										.getElementById("memberPw").value;
								const confirmPasswordError = document
										.getElementById("confirmPasswordError");

								if (confirmPassword.length === 0) {
									confirmPasswordError.textContent = "비밀번호를 한번 더 입력하세요.";
									return;
								}

								if (confirmPassword !== memberPw) {
									confirmPasswordError.textContent = "비밀번호가 일치하지 않습니다.";
									confirmPasswordError.style.color = "red";
								} else {
									confirmPasswordError.textContent = "비밀번호가 일치합니다.";
									confirmPasswordError.style.color = "green";
								}
							});

		}
		// 랜덤 인증번호 생성 함수
		function generateRandomCode() {
			return Math.floor(1000 + Math.random() * 9000);
		}

		document
				.getElementById("verifyPhone")
				.addEventListener(
						"click",
						function() {
							const memberPhone = document
									.getElementById("memberPhone").value;
							const memberPhoneError = document
									.getElementById("memberPhoneError");

							if (memberPhone.length === 0) {
								memberPhoneError.textContent = "핸드폰 번호를 입력하세요.";
								return;
							}

							const verificationCode = generateRandomCode();

							// 생성된 인증번호를 alert 창에 표시
							alert("인증번호가 발송되었습니다. 인증번호: " + verificationCode);

							// 인증번호 확인 버튼 리스너
							document
									.getElementById("verifyVerificationCode")
									.addEventListener(
											"click",
											function() {
												const enteredCode = document
														.getElementById("verificationCode").value;
												const verificationError = document
														.getElementById("verificationError");

												if (parseInt(enteredCode) === verificationCode) {
													alert("인증이 완료되었습니다.");
												} else {
													verificationError.textContent = "인증번호가 일치하지 않습니다.";
												}
											});
						});

		//이메일 인증
			document.getElementById("verifyEmail").addEventListener("click", function () {
			    const memberEmail = document.getElementById("memberEmail").value;
				
			    $.ajax({
			        url: "/confirmMail.do",
			        type: "POST",
			        data: { memberEmail: memberEmail },
			        success: function () {
			            // 이메일 발송 성공 시 모달 표시
			            $("#emailVerificationModal").modal("show");
			            alert("인증 이메일을 발송하였습니다.");
			        },
			        error: function () {
			            alert("이메일 발송 중 오류가 발생했습니다.");
			        }
			    });
			});

		  	document.getElementById("emailVerifyVerificationCode").addEventListener("click", function () {
	                const enteredCode = document.getElementById("emailVerificationCode").value;
	                const verificationError = document.getElementById("emailVerificationError");

	                $.ajax({
	                    url: "/verifyEmailCode.do",
	                    type: "POST",
	                    data: { enteredCode: enteredCode },
	                    success: function (response) {
	                        if (response === "success") {
	                            alert("이메일 인증이 완료되었습니다.");
	                            $("#emailVerificationModal").modal("hide");
	                            isEmailVerified = true;
	                        } else {
	                        	verificationError.textContent = "인증번호가 일치하지 않습니다.";
	                        }
	                    },
	                    error: function () {
	                        alert("인증 코드 확인 중 오류가 발생했습니다.");
	                    }
	                });
	            });
	</script>
</body>

</html>