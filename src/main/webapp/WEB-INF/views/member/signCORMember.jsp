<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>찾음 : 분실물 통합 포털</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="../resources/assets/img/light.png" rel="icon">
<link href="../resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

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
<link href="../resources/assets/css/index.css" rel="stylesheet">
<link href="../resources/assets/css/member/signMember.css"
	rel="stylesheet">
<link rel="stylesheet" href="../resources/assets/css/common/header.css">
<link rel="stylesheet" href="../resources/assets/css/common/footer.css">
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
	<!-- ======= Header ======= -->
	<!-- <section id="topbar" class="topbar d-flex align-items-center">
            <div class="container d-flex justify-content-center justify-content-md-between">
                <div class="contact-info d-flex align-items-center">
                    <i class="bi bi-envelope d-flex align-items-center"><a
                            href="mailto:contact@example.com">contact@example.com</a></i>
                    <i class="bi bi-phone d-flex align-items-center ms-4"><span>+1 5589 55488 55</span></i>
                </div>
                <div class="social-links d-none d-md-flex align-items-center">
                    <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                    <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                    <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
                </div>
            </div>
        </section>End Top Bar -->
	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

	<main>
		<div class="container mt-5">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card">
						<div class="card-header" style="background: #fff; color: #4365BC;">
							<h1>기업 회원가입</h1>
						</div>
						<div class="card-body">
							<form class="sign-form" action="/member/insertCOR.do"
								method="post">
								<div class="mb-2">
									<label for="memberId" class="form-label">아이디</label>
									<div class="input-group">
										<input type="text" class="form-control" id="memberId"
											name="memberId" required placeholder="아이디를 입력해 주세요"
											value="${inputId}">
										<button class="btn btn-outline-secondary" type="button"
											id="verifyId" onclick="checkId();">중복 확인</button>
									</div>
									<div id="memberIdError" class="validation">
										<c:if test="${idCheckResult > 0}">
											<span style="color: red;">이미 사용 중인 아이디입니다.</span>
										</c:if>
										<c:if test="${idCheckResult == 0}">
											<span style="color: green;">사용 가능한 아이디입니다.</span>
										</c:if>
									</div>
								</div>
								<div class="mb-2">
									<label for="memberPw" class="form-label">비밀번호</label> <input
										type="password" class="form-control" id="memberPw"
										name="memberPw" required placeholder="비밀번호를 입력해 주세요">
									<div id="memberPwError" class="validation"></div>
								</div>
								<div class="mb-2">
									<label for="confirmPassword" class="form-label">비밀번호 확인</label>
									<input type="password" class="form-control"
										id="confirmPassword" name="confirmPassword" required
										placeholder="비밀번호를 한번 더 입력해 주세요">
									<div id="confirmPasswordError" class="validation"></div>
								</div>
								<div class="mb-2">
									<label for="memberName" class="form-label">기업명</label> <input
										type="text" class="form-control" id="memberName"
										name="memberName" required placeholder="기업명(기관,업체명)을 입력해 주세요">
									<div id="memberNameError" class="validation"></div>
								</div>
								<div class="mb-2 custom-input">
									<label for="memberPhone" class="form-label">담당자 번호</label>
									<div class="input-group">
										<input type="text" class="form-control" id="memberPhone"
											name="memberPhone" required placeholder="담당자 번호를 입력해 주세요">
										<button class="btn btn-outline-secondary" type="button"
											id="verifyPhone">인증</button>
										<br>
									</div>
									<div id="memberPhoneError" class="validation"></div>
								</div>
								<!-- 이메일 입력 폼 -->
								<div class="mb-2 custom-input">
									<label for="memberEmail" class="form-label">이메일</label>
									<div class="input-group">
										<input type="email" class="form-control" id="memberEmail"
											name="memberEmail" required placeholder="이메일을 입력해 주세요">
										<button class="btn btn-outline-secondary" type="button"
											id="verifyEmail">인증</button>
									</div>
									<div id="memberEmailError" class="validation"></div>
								</div>
								<div class="mb-3 custom-input">
									<label for="email" class="form-label">사업자 등록 번호</label>
									<div class="input-group">
										<input type="email" class="form-control" id="businessNo"
											name="businessNo" required placeholder="사업자 등록번호 - 제외 10자리">
										<button class="btn btn-outline-secondary" type="button"
											id="verifyBusinessNo">인증</button>
									</div>
									<div id="businessNoError" class="validation"></div>
								</div>
								<div class="mb-2">
									<label for=" memberPostCode" class="form-label">주소</label>
									<div class="input-group">
										<input type="text" class="form-control" id="memberPostCode"
											name="memberPostCode" required placeholder="우편 번호">
										<button class="btn btn-outline-secondary" type="button"
											id="searchPostalCode" onclick="sample6_execDaumPostcode();">우편번호
											검색</button>
									</div>
									<input type="text" class="form-control" id="memberAddress"
										name="memberAddress" required
										placeholder="주소(우편 번호 검색 시 자동 입력됩니다.)"> <input
										type="text" class="form-control" id="memberDetailAddress"
										name="memberDetailAddress" placeholder="상세주소를 입력해 주세요">
									<div id="memberAddressError" class="validation"></div>
								</div>
								<button type="submit" class="btn sign-button">회원가입</button>
							</form>
						</div>
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
							<label for="verificationCode" class="form-label">인증번호 입력</label>
							<input type="text" class="form-control" id="verificationCode"
								required>
						</div>
						<div id="verificationError" class="validation"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">닫기</button>
						<button type="button" class="btn btn-primary"
							id="verifyVerificationCode">인증 완료</button>
					</div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	<!-- End Header -->
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
		function checkId() {
			const memberId = document.querySelector("#memberId").value;
			if (memberId === "" || memberId === null) {
				alert("아이디를 입력하세요.");
				return;
			}

			location.href = "/member/checkCOR.do?memberId=" + memberId;

		}

		window.addEventListener("load", function() {
			// 페이지가 로드되면 아이디 입력 필드에 자동으로 포커스를 설정합니다.
			document.getElementById("memberId").focus();
		});

		// 아이디 유효성 검사
		document.getElementById("memberId").addEventListener(
				"blur",
				function() {
					const memberId = this.value;
					const memberIdError = document
							.getElementById("memberIdError");

					if (memberId.length === 0) {
						memberIdError.textContent = "아이디를 입력하세요.";
						return;
					}

					const regex = /^[A-Za-z0-9]+$/;
					if (!regex.test(memberId)) {
						memberIdError.textContent = "영어와 숫자만 입력하세요.";
					} else {
						memberIdError.textContent = "";
					}

				});

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

		// 이름
		document.getElementById("memberName").addEventListener(
				"blur",
				function() {
					const memberPhone = this.value;
					const memberPhoneError = document
							.getElementById("memberNameError");

					if (memberPhone.length === 0) {
						memberPhoneError.textContent = "기업(기관,업체)명을 입력하세요.";
					} else {
						memberPhoneError.textContent = "";
					}
				});

		// 핸드폰번호 유효성 검사
		document.getElementById("memberPhone").addEventListener(
				"blur",
				function() {
					const memberPhone = this.value;
					const memberPhoneError = document
							.getElementById("memberPhoneError");

					if (memberPhone.length === 0) {
						memberPhoneError.textContent = "핸드폰 번호를 입력하세요.";
					} else {
						memberPhoneError.textContent = "";
					}
				});

		// 이메일 유효성 검사
		document.getElementById("memberEmail").addEventListener(
				"blur",
				function() {
					const memberEmail = this.value;
					const memberEmailError = document
							.getElementById("memberEmailError");

					if (memberEmail.length === 0) {
						memberEmailError.textContent = "이메일을 입력하세요.";
					} else {
						memberEmailError.textContent = "";
					}
				});

		// 사업자 유효성 검사
		document.getElementById("businessNo").addEventListener(
				"blur",
				function() {
					const memberEmail = this.value;
					const memberEmailError = document
							.getElementById("businessNoError");

					if (memberEmail.length === 0) {
						memberEmailError.textContent = "사업자 등록번호를 입력하세요.";
					} else {
						memberEmailError.textContent = "";
					}
				});

		// 주소 유효성 검사
		document.getElementById("memberAddress").addEventListener(
				"blur",
				function() {
					const memberAddress = this.value;
					const memberAddressError = document
							.getElementById("memberAddressError");

					if (memberAddress.length === 0) {
						memberAddressError.textContent = "주소를 입력하세요.";
					} else {
						memberAddressError.textContent = "";
					}
				});

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
		}

		$(document)
				.ready(
						function() {
							$("#verifyBusinessNo")
									.click(
											function() {
												var businessNo = $(
														"#businessNo").val();

												// API 키
												var apiKey = "uy3jYbeNo9pdYLz%2FbZXRO%2F3tFw9FcY6FjN1mlzXiPnfDm4yy4z4ceuYU2ValrUULBJVlrX6JBznSjobmLH1A7w%3D%3D";

												// API 요청 데이터
												var requestData = {
													"b_no" : [ businessNo ]
												};

												// AJAX 요청
												$
														.ajax({
															url : "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey="
																	+ apiKey,
															type : "POST",
															data : JSON
																	.stringify(requestData),
															dataType : "JSON",
															contentType : "application/json",
															accept : "application/json",
															success : function(
																	result) {
																// 서버 응답을 가독성 있게 포맷팅하여 alert로 표시
																var formattedMessage;
																if (result
																		&& result.data
																		&& result.data.length > 0) {
																	var b_stt = result.data[0].b_stt; // "b_stt" 값을 추출
																	if (b_stt === "계속사업자") {
																		formattedMessage = "인증이 완료되었습니다.";
																	} else {
																		formattedMessage = "사업자번호 "
																				+ businessNo
																				+ "는 유효하지 않습니다.";
																	}
																} else {
																	formattedMessage = "사업자번호 "
																			+ businessNo
																			+ "는 유효하지 않습니다.";
																}
																alert(formattedMessage);
															},
															error : function(
																	result) {
																// 에러 메시지를 alert로 표시
																alert("API 요청 에러: "
																		+ result.responseText);
															}
														});
											});
						});
		// 랜덤 인증번호 생성 함수
		function generateRandomCode() {
			return Math.floor(1000 + Math.random() * 9000); // 1000부터 9999까지의 랜덤 숫자 생성
		}

		document
				.getElementById("verifyPhone")
				.addEventListener(
						"click",
						function() {
							// 핸드폰 번호 유효성 검사 (핸드폰 번호 입력 필드의 id를 확인해주세요)
							const memberPhone = document
									.getElementById("memberPhone").value;
							const memberPhoneError = document
									.getElementById("memberPhoneError");

							if (memberPhone.length === 0) {
								memberPhoneError.textContent = "핸드폰 번호를 입력하세요.";
								return;
							}

							// 핸드폰 번호가 유효하다고 가정하고, 랜덤 인증번호 생성
							const verificationCode = generateRandomCode();

							// 생성된 인증번호를 alert 창에 표시
							alert("인증번호가 발송되었습니다. 인증번호: " + verificationCode);

							// 모달 창 열기
							$("#verificationModal").modal("show");

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

												if (enteredCode === verificationCode
														.toString()) {
													alert("인증이 완료되었습니다.");
													$("#verificationModal")
															.modal("hide"); // 모달 창 닫기
												} else {
													verificationError.textContent = "인증번호가 일치하지 않습니다.";
												}
											});
						});
	</script>

</body>
</html>