<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>찾음 : 통합검색</title>
        <meta content="" name="description">
        <meta content="" name="keywords">
        <!-- 부트스트랩 CSS cdn-->
        <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->

        <!-- Favicons -->
        <!-- <link href=".../resources/assets/img/favicon.png" rel="icon">
        <link href=".../resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->
        <link href="../resources/assets/img/light.png" rel="icon">
        <link href="../resources/assets/img/c_original_logo_icon_146611.png" rel="apple-touch-icon">

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
        <!-- <link href="../resources/assets/css/main.css" rel="stylesheet"> -->

        <!-- CSS -->
        <link rel="stylesheet" href="../resources/assets/css/lost/totalSearch.css">
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
        </section> -->
        <!-- End Top Bar -->

        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="hero ">
        <div class="container position-relative">
            <div class="row gy-5" data-aos="fade-in">
                <div class="col-lg-4 order-1 order-lg-1"></div>
                
                <div id="searchInput" class="col-lg-4 order-2 order-lg-2 align-self-center justify-content-center">
                    <div class="m-1 d-flex justify-content-start" style="color:white;">통합검색</div>
                    <form class="">
                        <div class="">
                            <input class="form-control w-100 " type="search" aria-label="Search" style="width: 20rem;">
                            <div class="m-1 d-flex justify-content-end" style="color:white;">결과내 재검색</div>
                        </div>
                    </form>
                </div>

                <div class="col-lg-4 order-3 order-lg-3"></div>
            </div>
        </div>
        </section>
        <!-- End Hero Section -->


<!-- *****MAIN************************************************************************************ -->
    <main id="main" class="sections-bg">
        <section id="mainLayer1" >
            <div class="row gy-1 order-1 order-lg-1 mt-1 mb-2">
                <div class="blank d-none d-sm-block col-lg-3 order-1 order-lg-1"></div>

                <div id="find" class=" w-50 col-lg-6 order-2 order-lg-2" style="color:red">
                    <h5>습득물</h5>
                </div>

                <div class="blank d-sm-none d-md-block col-lg-3 order-3 order-lg-3"></div>
            </div>

            <div class="row gy-1 order-2 order-lg-2 mb-1">
                <div class="blank d-sm-none d-md-block col-lg-3 order-1 order-lg-1"></div>
                <div id="findList" class="col-lg-6 order-2 order-lg-2">
                    <div class="list-box d-flex w-100">
                        <div class="picture">
                            <div class="img"><img src=""></div>
                        </div>
                        <div class="content">
                            <p>습득물 #글번호</p>
                            <p>습득일자 : 23/09/04</p>
                            <p>종류 : 지갑, 색상 : 검정, 브랜드: </p>
                        </div>
                        <div class="select-one d-flex align-items-center justify-content-center">    
                            <button type="button" class="btn pe-3 ps-3"
                            style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem; background-color: #4365BC; color:#fff;">
                            상세보기
                            </button>
                        </div>
                    </div>

                </div>
                <div class="blank col-lg-3 order-3 order-lg-3"></div>
            </div>

            <div class="row gy-1 order-1 order-lg-1 m-2">
                <div class="blank col-lg-3 order-1 order-lg-1"></div>
                <div id="pageNavi" class="col-lg-6 order-2 order-lg-2 ">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination ">
                            <li class="page-item"><a class="page-link" href="#">Prev</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav>

                </div>
                <div class="blank col-lg-3 order-3 order-lg-3"></div>
            </div>
        </section>
<!--*****************************************************************************************************************-->
        <section id="mainLayer2" >
            <div class="row gy-1 order-1 order-lg-1 mt-1 mb-2">
                <div class="blank d-none d-sm-block col-lg-3 order-1 order-lg-1"></div>

                <div id="lost" class=" w-50 col-lg-6 order-2 order-lg-2" style="color:blue">
                    <h5>분실물</h5>
                </div>

                <div class="blank d-sm-none d-md-block col-lg-3 order-3 order-lg-3"></div>
            </div>

            <div class="row gy-1 order-2 order-lg-2 mb-1">
                <div class="blank d-sm-none d-md-block col-lg-3 order-1 order-lg-1"></div>
                <div id="lostList" class="col-lg-6 order-2 order-lg-2">
                    <div class="list-box d-flex w-100">
                        <div class="picture">
                            <div class="img"><img src=""></div>
                        </div>
                        <div class="content">
                            <p>분실물 #글번호</p>
                            <p>분실일자 : 23/09/04</p>
                            <p>종류 : 지갑, 색상 : 검정, 브랜드:페레가모 </p>
                        </div>
                        <div class="select-one d-flex align-items-center justify-content-center">    
                            <button type="button" class="btn pe-3 ps-3"
                            style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem; background-color: #4365BC; color:#fff;">
                            상세보기
                            </button>
                        </div>
                    </div>

                </div>
                <div class="blank col-lg-3 order-3 order-lg-3"></div>
            </div>

            <div class="row gy-1 order-1 order-lg-1 m-2">
                <div class="blank col-lg-3 order-1 order-lg-1"></div>
                <div id="pageNavi" class="col-lg-6 order-2 order-lg-2 ">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination ">
                            <li class="page-item"><a class="page-link" href="#">Prev</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav>

                </div>
                <div class="blank col-lg-3 order-3 order-lg-3"></div>
            </div>
        </section>

    </main><!-- End #main -->

	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>

    <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <div id="preloader"></div>

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