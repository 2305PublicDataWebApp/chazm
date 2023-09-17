<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
			<!-- ======= 기부 상세조회 ======= -->
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
										<p>${memberPoint }P</p>
									</div>
									<div class="donation-btn">
										<button type="button" data-bs-toggle="modal"
											data-bs-target="#exampleModal"
											data-bs-whatever="@updatemember">회원정보 수정</button>
									</div>
									<div></div>
								</div>
								<!-- End sidebar search formn-->
							</div>
							<!-- End Blog Sidebar -->
						</div>
						<div class="col-lg-8">
							<article class="blog-details" id="member-info">
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
													<img src="../resources/assets/img/member/IDN_MEMBER.png"
														alt="member" class="img-fluid my-5" style="width: 80px;" />
													<h5>개인회원</h5>
												</c:if>
												<c:if test="${memberGrade eq 2 }">
													<image id="image0_2_131" width="100" height="100"
														xlink:href="data:image/png;base64,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" />
													<h5>기업회원</h5>
												</c:if>
												<i class="far fa-edit mb-5"></i>
											</div>
											<div class="col-md-8">
												<div class="card-body p-4">
													<div class="row pt-1">
														<c:if test="${member.memberGrade eq 1 }">
															<div class="col-6 mb-3">
																<h6>이름</h6>
																<p class="text-muted">${member.memberName }</p>
															</div>
														</c:if>
														<c:if test="${member.memberGrade eq 2 }">
															<div class="col-6 mb-3">
																<h6>기업명</h6>
																<p class="text-muted">${member.memberName }</p>
															</div>
														</c:if>
														<div class="col-6 mb-3">
															<h6>핸드폰번호</h6>
															<p class="text-muted">${member.memberPhone }</p>
														</div>
													</div>
													<div>
														<hr class="mt-0 mb-4">
														<h6>이메일</h6>
														<p class="text-muted">${member.memberEmail }</p>
													</div>
	
													<div class="row pt-1">
														<div class="col-6 mb-3">
															<h6>주소</h6>
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
									<div class="donation-btn">
										<button type="button" class="btn btn-primary"
											style="width: 100px; height: 30px; font-size: 6px; float: right;"
											onclick="checkDelete();">회원 탈퇴</button>
										<button type="button" class="btn btn-primary"
											style="width: 100px; height: 30px; font-size: 6px; float: right;"
											data-bs-toggle="modal" data-bs-target="#updatePwModal"">비밀번호 변경</button>
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
														data-purecounter-start="0" data-purecounter-end="15"
														data-purecounter-duration="1" class="purecounter counter"></span>
													<p>작성한 글</p>
												</div>
											</div>
											<div class="four col-md-3">
												<div class="counter-box">
													<i class="bi bi-chat-dots"></i> <span
														data-purecounter-start="0" data-purecounter-end="5"
														data-purecounter-duration="1" class="purecounter counter"></span>
													<p>분실물 게시판</p>
												</div>
											</div>
											<!-- 기업일경우 -->
											<div class="four col-md-3">
												<div class="counter-box">
													<i class="bi bi-box2-heart"></i> <span
														data-purecounter-start="0" data-purecounter-end="10"
														data-purecounter-duration="1" class="purecounter counter"></span>
													<p>습득물 게시판</p>
												</div>
											</div>
										</div>
										<div>
											<table class="table accordion accordion-flush text-center"
												id="plusAlist" data-aos="fade-up" data-aos-delay="100">
												<colgroup>
													<col width="10%" />
													<col width="55%" />
													<col width="10%" />
													<col width="15%" />
													<col width="10%" />
												</colgroup>
												<tr>
													<th>#</th>
													<th>제목</th>
													<th>등록자</th>
													<th>등록일</th>
													<th></th>
												</tr>
												<c:forEach items="${pAList }" var="plusABoard">
													<tr>
														<td>${plusABoard.plusANo }</td>
														<td>
															<button class="accordion-button collapsed" type="button"
																data-bs-toggle="collapse"
																data-bs-target="#plusA-content-${plusABoard.plusANo }">
																${plusABoard.plusATitle }</button>
														</td>
														<td>${plusABoard.plusAWriter }</td>
														<td>${plusABoard.plusACreateDate }</td>
														<td><input class="form-check-input" type="radio"
															name="checkBoard" id="" value=${plusABoard.plusANo }></td>
													</tr>
													<tr id="plusA-content-${plusABoard.plusANo }"
														class="accordion-collapse collapse"
														data-bs-parent="#plusAlist" data-aos="fade-up">
														<td colspan="4" class="accordion-body">
															${plusABoard.plusAContent }</td>
													</tr>
												</c:forEach>
											</table>
											<div class="mt-5 d-flex justify-content-center">
												<nav aria-label="Page navigation example r">
													<ul class="pagination">
														<c:url var="prevUrl" value="/plusA/list.do">
															<c:param name="page" value="${pInfo.startNavi - 1 }"></c:param>
														</c:url>
														<li class="page-item"><a class="page-link"
															href="${prevUrl }"><i class="bi bi-chevron-left"></i></a>
														</li>
														<c:forEach begin="${pInfo.startNavi }"
															end="${pInfo.endNavi }" var="p">
															<c:url var="pageUrl" value="/plusA/list.do">
																<c:param name="page" value="${p }"></c:param>
															</c:url>
															<li class="page-item"><a class="page-link"
																href="${pageUrl }">${p }</a></li>
														</c:forEach>
														<c:url var="nextUrl" value="/plusA/list.do">
															<c:param name="page" value="${pInfo.endNavi + 1 }"></c:param>
														</c:url>
														<li class="page-item"><a class="page-link"
															href="${nextUrl }"><i class="bi bi-chevron-right"></i></a></li>
													</ul>
												</nav>
											</div>
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
													data-purecounter-start="0" data-purecounter-end="15000"
													data-purecounter-duration="1" class="purecounter counter"></span>
												<p>총 기부 금액</p>
											</div>
										</div>
										<div class="four col-md-3">
											<div class="counter-box">
												<i class="bi bi-envelope-paper-heart"></i> <span
													data-purecounter-start="0" data-purecounter-end="10"
													data-purecounter-duration="1" class="purecounter counter"></span>
												<p>총 기부 횟수</p>
											</div>
										</div>
										<!-- 기업일경우 -->
										<div class="four col-md-3">
											<div class="counter-box">
												<i class="bi bi-bag-heart"></i> <span
													data-purecounter-start="0" data-purecounter-end="1000"
													data-purecounter-duration="1" class="purecounter counter"></span>
												<p>최근 기부 금액</p>
											</div>
										</div>
									</div>
									<div>
										<table class="table accordion accordion-flush text-center"
											id="plusAlist" data-aos="fade-up" data-aos-delay="100">
											<colgroup>
												<col width="10%" />
												<col width="55%" />
												<col width="10%" />
												<col width="15%" />
												<col width="10%" />
											</colgroup>
											<tr>
												<th>#</th>
												<th>제목</th>
												<th>등록자</th>
												<th>등록일</th>
												<th></th>
											</tr>
											<c:forEach items="${pAList }" var="plusABoard">
												<tr>
													<td>${plusABoard.plusANo }</td>
													<td>
														<button class="accordion-button collapsed" type="button"
															data-bs-toggle="collapse"
															data-bs-target="#plusA-content-${plusABoard.plusANo }">
															${plusABoard.plusATitle }</button>
													</td>
													<td>${plusABoard.plusAWriter }</td>
													<td>${plusABoard.plusACreateDate }</td>
													<td><input class="form-check-input" type="radio"
														name="checkBoard" id="" value=${plusABoard.plusANo }></td>
												</tr>
												<tr id="plusA-content-${plusABoard.plusANo }"
													class="accordion-collapse collapse"
													data-bs-parent="#plusAlist" data-aos="fade-up">
													<td colspan="4" class="accordion-body">
														${plusABoard.plusAContent }</td>
												</tr>
											</c:forEach>
										</table>
										<div class="mt-5 d-flex justify-content-center">
											<nav aria-label="Page navigation example r">
												<ul class="pagination">
													<c:url var="prevUrl" value="/plusA/list.do">
														<c:param name="page" value="${pInfo.startNavi - 1 }"></c:param>
													</c:url>
													<li class="page-item"><a class="page-link"
														href="${prevUrl }"><i class="bi bi-chevron-left"></i></a></li>
													<c:forEach begin="${pInfo.startNavi }"
														end="${pInfo.endNavi }" var="p">
														<c:url var="pageUrl" value="/plusA/list.do">
															<c:param name="page" value="${p }"></c:param>
														</c:url>
														<li class="page-item"><a class="page-link"
															href="${pageUrl }">${p }</a></li>
													</c:forEach>
													<c:url var="nextUrl" value="/plusA/list.do">
														<c:param name="page" value="${pInfo.endNavi + 1 }"></c:param>
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
									<div class="row">
										<div class="four col-md-3">
											<div class="counter-box colored">
												<i class="bi bi-piggy-bank"></i> <span
													data-purecounter-start="0" data-purecounter-end="15000"
													data-purecounter-duration="1" class="purecounter counter"></span>
												<p>보유 포인트</p>
											</div>
										</div>
										<div class="four col-md-3">
											<div class="counter-box">
												<i class="bi bi-envelope-paper-heart"></i> <span
													data-purecounter-start="0" data-purecounter-end="30000"
													data-purecounter-duration="1" class="purecounter counter"></span>
												<p>누적 포인트</p>
											</div>
										</div>
										<!-- 기업일경우 -->
										<div class="four col-md-3">
											<div class="counter-box">
												<i class="bi bi-bag-heart"></i> <span
													data-purecounter-start="0" data-purecounter-end="1000"
													data-purecounter-duration="1" class="purecounter counter"></span>
												<p>사용한 포인트</p>
											</div>
										</div>
									</div>
								</div>
							</article>
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
							<input type="hidden" class="form-control" id="memberIdModal" name="memberId" required value="${sessionScope.memberId}">
							<div class="mb-3 custom-input">
								<label for="phone" class="form-label">핸드폰번호</label>
								<div class="input-group">
									<input type="text" class="form-control" id="memberPhone"
										name="memberPhone" required placeholder="핸드폰 번호를 입력해 주세요"
										value="${member.memberPhone }">
									<button class="btn btn-outline-secondary" type="button"
										id="verifyPhone">인증</button>
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
										id="verifyEmail">인증</button>
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
								<input type="hidden" class="form-control" id="memberIdModal" name="memberId" required value="${sessionScope.memberId}">
								<div class="mb-3">
									<label for="password" class="form-label">새 비밀번호</label> <input
										type="password" class="form-control" id="memberPw"
										name="memberPw" placeholder="비밀번호를 입력해 주세요">
									<div id="memberPwError" class="validation"></div>
								</div>
								<div class="mb-3">
									<label for="confirmPassword" class="form-label">새 비밀번호 확인</label> <input
										type="password" class="form-control" id="confirmPassword"
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
				document.getElementById("confirmPassword").addEventListener(
						"blur",
						function() {
							const confirmPassword = this.value;
							const memberPw = document.getElementById("memberPw").value;
							const confirmPasswordError = document
									.getElementById("confirmPasswordError");
	
							if (confirmPassword.length === 0) {
								confirmPasswordError.textContent = "비밀번호를 한번 더 입력하세요.";
								return;
							}
	
							if (confirmPassword !== memberPw) {
								confirmPasswordError.textContent = "비밀번호가 일치하지 않습니다.";
							} else {
								confirmPasswordError.textContent = "";
							}
						});
			}
		</script>
	</body>

</html>