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
        <link href="../resources/assets/css/member/signMember.css" rel="stylesheet">
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
        
        <main>
            <div class="container mt-5">
                <div class="row justify-content-center">
                    <div class="col-md-6 col-sm-12">
                        <div class="card">
                            <div class="card-header" style="background: #fff; color: #4365BC;">
                                <h1>기업 회원가입</h1>
                            </div>
                            <div class="card-body">
                                <form class="sign-form">
                                    <div class="mb-3">
                                        <label for="username" class="form-label">아이디</label>
                                        <input type="text" class="form-control" id="username" name="username" required placeholder="아이디를 입력해 주세요">
                                        <div class="invalid-feedback">
                                            아이디가 유효하지 않습니다.
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="password" class="form-label">비밀번호</label>
                                        <input type="password" class="form-control" id="password" name="password" required placeholder="비밀번호를 입력해 주세요">
                                        <div class="invalid-feedback">
                                            비밀번호가 유효하지 않습니다.
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="confirmPassword" class="form-label">비밀번호 확인</label>
                                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required placeholder="비밀번호를 한번 더 입력해 주세요">
                                        <div class="invalid-feedback">
                                            비밀번호가 일치하지 않습니다.   
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="name" class="form-label">기업 명</label>
                                        <input type="text" class="form-control" id="name" name="name" required placeholder="기업(기관,상호)명을 입력해 주세요">
                                    </div>
                                    <div class="mb-3">
                                        <label for="name" class="form-label">담당자 이름</label>
                                        <input type="text" class="form-control" id="name" name="name" required placeholder="이름을 입력해 주세요">
                                    </div>
                                    <!-- 핸드폰번호 입력 폼 -->
                                    <div class="mb-3 custom-input">
                                        <label for="phone" class="form-label">담당자 번호</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="phone" name="phone" required placeholder="핸드폰 번호를 입력해 주세요">
                                            <button class="btn btn-outline-secondary" type="button" id="verifyPhone">인증</button>
                                        </div>
                                    </div>
                                    <!-- 이메일 입력 폼 -->
                                    <div class="mb-3 custom-input">
                                        <label for="email" class="form-label">이메일</label>
                                        <div class="input-group">
                                            <input type="email" class="form-control" id="email" name="email" required placeholder="이메일을 입력해 주세요">
                                            <button class="btn btn-outline-secondary" type="button" id="verifyEmail">인증</button>
                                        </div>
                                    </div>
                                    <div class="mb-3 custom-input">
                                        <label for="email" class="form-label">사업자 등록 번호</label>
                                        <div class="input-group">
                                            <input type="email" class="form-control" id="business" name="business" required placeholder="사업자 등록번호 - 포함">
                                            <button class="btn btn-outline-secondary" type="button" id="verifyEmail">인증</button>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="postalCode" class="form-label">주소</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="postalCode" name="postalCode" required placeholder="우편 번호">
                                            <button class="btn btn-outline-secondary" type="button" id="searchPostalCode">우편번호 검색</button>
                                        </div>
                                        <input type="text" class="form-control" id="address" name="address" required placeholder="주소 (우편 번호 검색 시 자동 입력됩니다.)">
                                        <input type="text" class="form-control" id="detailAddress" name="detailAddress" placeholder="상세주소를 입력해 주세요">
                                    </div>
                                    <button type="submit" class="btn sign-button">회원가입</button>
                                </form>
                            </div>
                        </div>
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