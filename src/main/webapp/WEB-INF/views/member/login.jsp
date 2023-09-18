<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <link href="../resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

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
        <link href="../resources/assets/css/index.css" rel="stylesheet">
        <link href="../resources/assets/css/member/login.css" rel="stylesheet">
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
		       <form action="/member/login.do" method="post">
		
		       <h1 class="h3 mb-3 fw-normal text-center" style="color: #4365BC; font-size: 40px;">로그인
		           <img src="../resources/assets/img/light.png" alt="" style="width:10%; padding-bottom: 5px;"></h1>
		       <div class="form-floating">
		           <input type="text" class="form-control" id="memberID" name="memberId" placeholder="아이디 입력...">
		           <label for="id">아이디</label>
		       </div>
		       <div class="form-floating">
		           <input type="password" class="form-control" id="memberPw" name="memberPw" placeholder="Password">
		           <label for="pwd">비밀번호</label>
		       </div>
		       
		       <div class="checkbox mb-3">
		       </div>
		       <button class=" btn btn-lg login-button" type="submit">로그인</button>
		       <div class="links text-center">
		           <a href="memberId" class="login-bottm">아이디 찾기</a> | <a href="memberPw" class="login-bottm">비밀번호 찾기</a> | <a href="/member/insertMain.do" class="login-bottm">회원가입</a>
		       </div>
		       </form>
		       <br><br>
		       <div>
		           <a href="#"><img src="../resources/assets/img/member/kakao_login.png" alt="카카오톡 로그인" style="width: 200px; height: 50px;"></a>
		           <a href="#"><img src="../resources/assets/img/member/naver_login.png" alt="네이버 로그인" style="width: 200px; height: 50px;"></a>
		       </div>
		   </main>
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
		
		   <!-- End Header -->
		   <!-- End Header -->
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
		</body>
</html>