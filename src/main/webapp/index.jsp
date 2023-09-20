<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <link href="./resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="./resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="./resources/assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="./resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="./resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="./resources/assets/css/index.css" rel="stylesheet">
        <link rel="stylesheet" href="./resources/assets/css/common/header.css">
        <link rel="stylesheet" href="./resources/assets/css/common/footer.css">

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

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="hero">
            <div class="container position-relative">
                <div class="row gy-5" data-aos="fade-in" style="margin-top: 0px;">
                    <div class="col-lg-6 order-1 order-lg-2 d-flex justify-content-center align-items-center">
                        <img src="./resources/assets/img/main-search.png" class="img-fluid" alt="" data-aos="zoom-out"
                            data-aos-delay="100" style="width:50%;">
                    </div>
                    <div
                        class="col-lg-6 order-2 order-lg-2 d-flex flex-column justify-content-center text-center text-lg-start">
                        <h3>물건을 잃어버렸나요?</h3>
                        <h3>누군가가 잃어버린 물건을 습득하셨나요?</h3>
                        <div class="d-flex col-md-12 justify-content-center justify-content-lg-start">
                            <form action="/totalSearch/search.do" method="get">
                                <input type="text" name="totalSearchKeyword" id="">
                                <button type="submit"><img src="./resources/assets/img/search.png" alt="" style="width:40%;"></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Hero Section -->

        <main id="main">

            <!-- ======= About Us Section ======= -->
            <section id="testimonials" class="testimonials">
                <div class="container" data-aos="fade-up" style="margin-top : 30px;">

                    <div class="section-header">
                        <h2>찾는 물건이 무엇인가요?</h2>
                    </div>

                    <div class="slides-3 swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <a href="#">
                                            <div class="d-flex align-items-center">
                                                <img src="./resources/assets/img/wallet.png"
                                                    class="testimonial-img flex-shrink-0" alt="">
                                                <h3 class="hover_text">
                                                    지갑
                                                </h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <a href="#">
                                            <div class="d-flex align-items-center">
                                                <img src="./resources/assets/img/bag.png"
                                                    class="testimonial-img flex-shrink-0" alt="">
                                                <h3 class="hover_text">
                                                    가방
                                                </h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <a href="#">
                                            <div class="d-flex align-items-center">
                                                <img src="./resources/assets/img/phone.png"
                                                    class="testimonial-img flex-shrink-0" alt="">
                                                <h3 class="hover_text">
                                                    핸드폰
                                                </h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <a href="#">
                                            <div class="d-flex align-items-center">
                                                <img src="./resources/assets/img/clothes.png"
                                                    class="testimonial-img flex-shrink-0" alt="">
                                                <h3 class="hover_text">
                                                    의류
                                                </h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <a href="#">
                                            <div class="d-flex align-items-center">
                                                <img src="./resources/assets/img/others.png"
                                                    class="testimonial-img flex-shrink-0" alt="">
                                                <h3 class="hover_text">
                                                    기타
                                                </h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </section><!-- End About Us Section -->

            <!-- ======= 어디에서 잃어버리셨나요? ======= -->
            <section id="testimonials" class="testimonials">
                <div class="container" data-aos="fade-up">

                    <div class="section-header">
                        <h2>어디에서 잃어버리셨나요?</h2>
                    </div>

                    <div class="slides-3 swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <a href="#">
                                            <div class="d-flex align-items-center">
                                                <img src="./resources/assets/img/bus.png"
                                                    class="testimonial-img flex-shrink-0" alt="">
                                                <h3 class="hover_text">
                                                    버스
                                                </h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <a href="#">
                                            <div class="d-flex align-items-center">
                                                <img src="./resources/assets/img/train.png"
                                                    class="testimonial-img flex-shrink-0" alt="">
                                                <h3 class="hover_text">
                                                    지하철
                                                </h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <a href="#">
                                            <div class="d-flex align-items-center">
                                                <img src="./resources/assets/img/taxi.png"
                                                    class="testimonial-img flex-shrink-0" alt="">
                                                <h3 class="hover_text">
                                                    택시
                                                </h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <a href="#">
                                            <div class="d-flex align-items-center">
                                                <img src="./resources/assets/img/airplane.png"
                                                    class="testimonial-img flex-shrink-0" alt="">
                                                <h3 class="hover_text">
                                                    공항
                                                </h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <a href="#">
                                            <div class="d-flex align-items-center">
                                                <img src="./resources/assets/img/restaurant.png"
                                                    class="testimonial-img flex-shrink-0" alt="">
                                                <h3 class="hover_text">
                                                    음식점
                                                </h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </section>

            <!-- ======= Stats Counter Section ======= -->
            <section id="stats-counter" class="stats-counter">
                <div class="container" data-aos="fade-up">
                    <div class="section-header">
                        <h2>찾음이 해냈어요!</h2>
                    </div>
                    <div class="row gy-4 align-items-center">

                        <div class="col-lg-6">
                            <img src="./resources/assets/img/stats-img.svg" alt="" class="img-fluid">
                        </div>

                        <div class="col-lg-6">

                            <div class="stats-item d-flex align-items-center">
                                <span data-purecounter-start="0" data-purecounter-end="12258" data-purecounter-duration="1"
                                    class="purecounter"></span>
                                <p><strong>가입자</strong>가 찾음과 함께해요.</p>
                            </div><!-- End Stats Item -->

                            <div class="stats-item d-flex align-items-center">
                                <span data-purecounter-start="0" data-purecounter-end="5537" data-purecounter-duration="1"
                                    class="purecounter"></span>
                                <p><strong>건</strong>의 글이 등록됐어요.</p>
                            </div><!-- End Stats Item -->

                            <div class="stats-item d-flex align-items-center">
                                <span data-purecounter-start="0" data-purecounter-end="1025" data-purecounter-duration="1"
                                    class="purecounter"></span>
                                <p><strong>개</strong>의 물건들이 주인을 찾아갔어요.</p>
                            </div><!-- End Stats Item -->

                        </div>

                    </div>

                </div>
            </section><!-- End Stats Counter Section -->
        
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>

        <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i
                class="bi bi-arrow-up-short"></i></a>

        <div id="preloader"></div>

        <!-- Vendor JS Files -->
        <script src="./resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="./resources/assets/vendor/aos/aos.js"></script>
        <script src="./resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="./resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="./resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="./resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>

        <!-- Template Main JS File -->
        <script src="./resources/assets/js/main.js"></script>
    </body>

</html>