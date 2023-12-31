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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
<link href="../resources/assets/css/member/login.css" rel="stylesheet">
<link rel="stylesheet" href="../resources/assets/css/common/header.css">
<link rel="stylesheet" href="../resources/assets/css/common/footer.css">
<link rel="stylesheet"
	href="../resources/assets/css/member/findMember.css">

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

	<main class="form-signin">
		<h2 class="mb-3 text-center"
			style="color: #4365BC; font-size: 40px;">
			아이디 찾기 <img src="../resources/assets/img/light.png" alt=""
				style="width: 10%; padding-bottom: 5px;">
		</h2>
		<div class="container mt-5">
			<div class="row">
				<div class="col-md-12">

					<!-- 라디오 버튼을 사용하여 이메일 인증과 핸드폰 인증 선택 -->
					<div>
						<input type="radio" id="emailAuthentication"
							name="authenticationType" value="email" checked> <label
							for="emailAuthentication">이메일 인증</label>
					</div>
					<div>
						<input type="radio" id="phoneAuthentication"
							name="authenticationType" value="phone"> <label
							for="phoneAuthentication">핸드폰 인증</label>
					</div>
					<hr>
					<!-- 이메일 인증 폼 -->
					<div id="emailAuthenticationForm" style="display: block;"
						class="mt-3">
						<h3>이메일 인증</h3>
						<form action="/member/findIdByEmail.do" method="post">
							<div class="input-group">
								<input type="email" class="form-control" id="memberEmail"
									name="memberEmail" required placeholder="이메일을 입력해 주세요">
								<button class="btn btn-outline-secondary" type="button"
									id="verifyEmail">인증</button>
							</div>
							<div class="input-group">
								<input type="text" class="form-control"
									id="emailVerificationCode" name="emailVerificationCode"
									required placeholder="인증번호 입력">
								<button class="btn btn-outline-secondary" type="button"
									id="emailVerifyVerificationCode">인증확인</button>
							</div>
							<button class="btn btn-lg login-button" type="submit"
								id="findIdEmail">아이디 찾기</button>
							<div id="emailError" class="validation"></div>
						</form>
					</div>

					<!-- 핸드폰 인증 폼 -->
					<div id="phoneAuthenticationForm" style="display: none;"
						class="mt-3">
						<h3>핸드폰 인증</h3>
						<form action="/member/findIdByPhone.do" method="post"
							class="sign-form">
							<div class="input-group">
								<input type="text" class="form-control" id="memberPhone"
									name="memberPhone" required placeholder="핸드폰번호를 입력해 주세요">
								<button class="btn btn-outline-secondary" type="button"
									id="verifyPhone">인증</button>
							</div>
							<div class="input-group">
								<input type="text" class="form-control"
									id="enterAuthenticationPhoneNo"
									name="enterAuthenticationPhoneNo" required
									placeholder="인증번호 입력">
								<button class="btn btn-outline-secondary" type="button"
									id="findIdByPhone">인증확인</button>
							</div>
							<button class="btn btn-lg login-button" type="submit"
								id="findIdPhone">아이디 찾기</button>
							<div id="phoneError" class="validation"></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</main>

	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>

	<!-- End Header -->
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
	<script>
		
		    let isEmailVerified = false;
		    let isPhoneVerified = false;
		    let isBusinessNoVerified = false;
	        const emailAuthenticationForm = document.getElementById("emailAuthenticationForm");
	        const phoneAuthenticationForm = document.getElementById("phoneAuthenticationForm");
	        const emailAuthenticationRadio = document.getElementById("emailAuthentication");
	        const phoneAuthenticationRadio = document.getElementById("phoneAuthentication");
	
	        emailAuthenticationRadio.addEventListener("change", () => {
	            emailAuthenticationForm.style.display = "block";
	            phoneAuthenticationForm.style.display = "none";
	        });
	
	        phoneAuthenticationRadio.addEventListener("change", () => {
	            emailAuthenticationForm.style.display = "none";
	            phoneAuthenticationForm.style.display = "block";
	        });
	        
	        document.getElementById("findIdEmail").setAttribute("disabled", "true");
	        document.getElementById("findIdPhone").setAttribute("disabled", "true");	
	        
	        let emailVerificationCode = null;
	        let phoneVerificationCode = null;

	        function generateRandomCode() {
	            return Math.floor(1000 + Math.random() * 9000); 
	        }

	        // 이메일 인증 버튼 클릭 이벤트
			document.getElementById("verifyEmail")
					.addEventListener(
							"click",
							function() {
								const memberEmail = document
										.getElementById("memberEmail").value;
	
								$.ajax({
									url : "/confirmCORMail.do",
									type : "POST",
									data : {
										memberEmail : memberEmail
									},
									success : function() {
										// 이메일 발송 성공 시 모달 표시
										$("#emailVerificationModal").modal("show");
										alert("인증 이메일을 발송하였습니다.");
									},
									error : function() {
										alert("이메일 발송 중 오류가 발생했습니다.");
									}
								});
							});
	        
			document
			.getElementById("emailVerifyVerificationCode")
			.addEventListener(
					"click",
					function() {
						const enteredCode = document
								.getElementById("emailVerificationCode").value;
						const findIdByEmailButton = document.getElementById("findIdEmail");
						const verificationError = document
								.getElementById("emailVerificationError");

						$
								.ajax({
									url : "/verifyEmailCode.do",
									type : "POST",
									data : {
										enteredCode : enteredCode
									},
									success : function(response) {
										if (response === "success") {
											alert("이메일 인증이 완료되었습니다.");
											$("#emailVerificationModal")
													.modal("hide");
											 findIdByEmailButton.removeAttribute("disabled");
										} else {
											verificationError.textContent = "인증번호가 일치하지 않습니다.";
											findIdByEmailButton.setAttribute("disabled", "true");
										}
									},
									error : function() {
										alert("인증 코드 확인 중 오류가 발생했습니다.");
									}
								});
					});

			        // 핸드폰 인증 버튼 클릭 이벤트
			        document.getElementById("verifyPhone").addEventListener("click", function () {
			            // 핸드폰 인증번호 생성
			            phoneVerificationCode = generateRandomCode();

			            // 생성된 인증번호를 alert 창에 표시
			            alert("인증번호가 발송되었습니다. 인증번호: " + phoneVerificationCode);
			        });

			        <!-- 핸드폰 인증 확인 버튼 클릭 이벤트 -->
			        document.getElementById("findIdByPhone").addEventListener("click", function () {
			            const enteredCode = parseInt(document.getElementById("enterAuthenticationPhoneNo").value);
			            const phoneError = document.getElementById("phoneError");
			            const findIdByPhoneButton = document.getElementById("findIdPhone"); // 아이디 찾기 버튼

			            if (enteredCode === phoneVerificationCode) {
			                alert("핸드폰 인증이 완료되었습니다.");
			                // 아이디 찾기 버튼을 활성화
			                findIdByPhoneButton.removeAttribute("disabled");
			            } else {
			                phoneError.textContent = "인증번호가 일치하지 않습니다.";
			                // 아이디 찾기 버튼을 비활성화
			                findIdByPhoneButton.setAttribute("disabled", "true");
			            }
			        });
			        
			        
			    
		</script>
</body>
</html>