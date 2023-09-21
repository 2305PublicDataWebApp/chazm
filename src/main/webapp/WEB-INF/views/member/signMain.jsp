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

        <link href="../resources/assets/css/member/signMain.css" rel="stylesheet">
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
        <section id="title" class="title" style="margin-top:150px;">
            <div class="container position-relative">
                <div class="section-header">
                    <h2>회원가입 유형</h2>
                </div>
            </div>

        </section>
        <main id="main">      
            <div class="container text-center mt-5">
                <div class="row justify-content-center">
                    <div class="col-md-5 col-sm-6">
                        <a href="/member/insertIDN.do">
                            <button class="btn btn-light icon-button" style="width: 250px; height: 350px;">
                                <img src="../resources/assets/img/member/IDN_MEMBER.png" alt="개인회원" width="100" height="100">
                                <br><br><br>
                                <h4>개인회원</h4>
                            </button>
                        </a>
                        <br><br>
                        <p class="member-info">분실물 등록 희망하는 개인 회원 </p>    
                    </div>
                    <div class="col-md-5 col-sm-6">
                        <a href="/member/insertCOR.do">
                        <button class="btn btn-light icon-button" style="width: 250px; height: 350px;">
                                <svg width="100" height="100" viewBox="0 0 137 137" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <rect width="137" height="137" fill="url(#pattern0)"/>
                                    <defs>
                                    <pattern id="pattern0" patternContentUnits="objectBoundingBox" width="1" height="1">
                                    <use xlink:href="#image0_2_131" transform="scale(0.01)"/>
                                    </pattern>
                                    <image id="image0_2_131" width="100" height="100" xlink:href="data:image/png;base64,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"/>
                                    </defs>
                                    </svg>
                                <br><br><br>    
                                <h4>기업회원</h4>
                            </button>
                        </a>
                        <br><br>
                        <p class="member-info">승득물 등록을 희망하는 기업, 공공기관, 사업자 </p>    
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
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