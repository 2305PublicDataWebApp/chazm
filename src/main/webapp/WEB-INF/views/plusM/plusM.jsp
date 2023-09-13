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
    <link href="../resources/assets/css/plusM/plusM.css" rel="stylesheet">
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
    
    <section id="title" class="title" style="margin-top:150px;">
        <div class="container position-relative">
            <div class="section-header">
                <h2>찾음+</h2>
            </div>
        </div>
        <div>
            <h2 style="text-align: center; font-weight: bold;">포인트로 기부해요</h2>
        </div>
    </section>
    <!-- ======= Hero Section ======= -->
    <section id="" class="hero" style="margin-top: 100px;">
        <div class="sectionBg">

        </div>
        <div class="container position-relative">
            <div class="row gy-5" data-aos="fade-up" data-aos-delay="100">
                <div
                    class="col-lg-6 order-2 order-lg-2 d-flex flex-column justify-content-center text-center text-lg-start">
                    <h2>열심히 활동한 당신 기부하라!</h2>
                    <p>당신의 포인트로 사랑을 전하세요
                        <img src="../resources/assets/img/emojiHeart.png" alt="" style="width:8%;">
                    </p>
                </div>
                <div class="col-lg-6 order-1 order-lg-2 d-flex justify-content-center align-items-center">
                    <img src="../resources/assets/img/receive.png" class="" alt="" data-aos="zoom-out"
                        data-aos-delay="100" style="width:50%;">
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero Section -->

    <main id="main">

        <!-- =======  ======= -->
        <section id="portfolio" class="portfolio sections-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-header">
                    <h2>찾음 모금함</h2>
                </div>
                <div>
                    <div class="add-btn">
                        <button><i class="bi bi-pencil-square"></i></button>
                    </div>
                </div>
                <div class="portfolio-isotope" data-portfolio-filter="*" data-portfolio-layout="masonry"
                    data-portfolio-sort="original-order" data-aos="fade-up" data-aos-delay="100">
                    <div class="row row-gy-5 gy-4 portfolio-container">

                        <div class="col-xl-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-wrap">
                                <a href="../plusM/plusMdetail.html">
                                    <img src="../resources/assets/img/children1.jpg" class="img-fluid"
                                        alt=""></a>
                                <div class="portfolio-info">
                                    <div>
                                        <h4><a href="../plusM/plusMdetail.html" title="More Details">App 1</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                    <div class="graphBar">
                                        <span class="donationBar" style="width:8%;"></span>
                                    </div>
                                    <div class="donationBottom">
                                        <strong>8%</strong>
                                        <strong>414,500P</strong>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Portfolio Item -->

                        <div class="col-xl-4 col-md-6 portfolio-item filter-product">
                            <div class="portfolio-wrap">
                                <a href="../plusM/plusMdetail.html"><img src="../resources/assets/img/children2.jpg" class="img-fluid"
                                        alt=""></a>
                                <div class="portfolio-info">
                                    <div>
                                        <h4><a href="../plusM/plusMdetail.html" title="More Details">App 1</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                    <div class="graphBar">
                                        <span class="donationBar" style="width:8%;"></span>
                                    </div>
                                    <div class="donationBottom">
                                        <strong>8%</strong>
                                        <strong>414,500P</strong>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Portfolio Item -->

                        <div class="col-xl-4 col-md-6 portfolio-item filter-branding">
                            <div class="portfolio-wrap">
                                <a href="../plusM/plusMdetail.html"><img src="../resources/assets/img/plusM1.jpg" class="img-fluid"
                                        alt=""></a>
                                <div class="portfolio-info">
                                    <div>
                                        <h4><a href="../plusM/plusMdetail.html" title="More Details">App 1</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                    <div class="graphBar">
                                        <span class="donationBar" style="width:8%;"></span>
                                    </div>
                                    <div class="donationBottom">
                                        <strong>8%</strong>
                                        <strong>414,500P</strong>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Portfolio Item -->

                        <div class="col-xl-4 col-md-6 portfolio-item filter-books">
                            <div class="portfolio-wrap">
                                <a href="../plusM/plusMdetail.html"><img src="../resources/assets/img/plusM2.jpg" class="img-fluid"
                                        alt=""></a>
                                <div class="portfolio-info">
                                    <div>
                                        <h4><a href="../plusM/plusMdetail.html" title="More Details">App 1</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                    <div class="graphBar">
                                        <span class="donationBar" style="width:8%;"></span>
                                    </div>
                                    <div class="donationBottom">
                                        <strong>8%</strong>
                                        <strong>414,500P</strong>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Portfolio Item -->

                        <div class="col-xl-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-wrap">
                                <a href="../plusM/plusMdetail.html"><img src="../resources/assets/img/plusM3.jpg" class="img-fluid"
                                        alt=""></a>
                                <div class="portfolio-info">
                                    <div>
                                        <h4><a href="../plusM/plusMdetail.html" title="More Details">App 1</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                    <div class="graphBar">
                                        <span class="donationBar" style="width:8%;"></span>
                                    </div>
                                    <div class="donationBottom">
                                        <strong>8%</strong>
                                        <strong>414,500P</strong>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Portfolio Item -->

                        <div class="col-xl-4 col-md-6 portfolio-item filter-product">
                            <div class="portfolio-wrap">
                                <a href="../plusM/plusMdetail.html"><img src="../resources/assets/img/plusM4.jpg" class="img-fluid"
                                        alt=""></a>
                                <div class="portfolio-info">
                                    <div>
                                        <h4><a href="../plusM/plusMdetail.html" title="More Details">App 1</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                    <div class="graphBar">
                                        <span class="donationBar" style="width:8%;"></span>
                                    </div>
                                    <div class="donationBottom">
                                        <strong>8%</strong>
                                        <strong>414,500P</strong>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div><!-- End Portfolio Container -->
                </div>
                
            </div>
        </section><!-- End Portfolio Section -->

        <!-- 찾음+ 통계 -->
        <section id="stats-counter" class="stats-counter">
            <div class="container" data-aos="fade-up">
                <div class="row gy-4 align-items-center">
                    <div class="col-lg-6 inner">
                        <div class="innerUp">
                            누적 참여 현황
                        </div>
                        <div class="innerDown">
                            여러분의 응원이 이만큼 모였어요!
                        </div>
                    </div>

                    <div class="col-lg-6">

                        <div class="col stats-item d-flex align-items-center stats-align" style="margin-left:150px;">
                            <div class="col col-title">
                                기부 참여
                            </div>
                            <div class="col d-flex align-items-center">
                                <span data-purecounter-start="0" data-purecounter-end="5136" data-purecounter-duration="1"
                                    class="purecounter"></span>
                                <strong>명</strong>
                            </div>
                            

                        </div><!-- End Stats Item -->

                        <div class="col stats-item d-flex align-items-center stats-align" style="margin-left:150px;">
                            <div class="col col-title">
                                기부 포인트
                            </div>
                            <div class="col d-flex align-items-center">
                                <span data-purecounter-start="0" data-purecounter-end="5537" data-purecounter-duration="1"
                                    class="purecounter"></span>
                                <strong>P</strong>
                            </div>
                            

                        </div><!-- End Stats Item --><!-- End Stats Item -->

                    </div>

                </div>

            </div>
        </section>
        
    </main>
    
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

    <!-- Template Main JS File -->
    <script src="../resources/assets/js/main.js"></script>
</body>

</html>