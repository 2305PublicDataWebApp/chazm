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
        <link rel="stylesheet" href="../resources/assets/css/lost/totalSearchNew.css">
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

        <header id="header" class="header d-flex align-items-center">

            <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
                <a href="index.html" class="logo d-flex align-items-center">
                    <!-- Uncomment the line below if you also wish to use an image logo -->
                    <!-- <img src="assets/img/logo.png" alt=""> -->
                    <h1>찾음<span><img src="../resources/assets/img/light.png" alt="" style="width:30%;"></span></h1>
                </a>
                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a href="#about">찾음이란?</a></li>
                        <li><a href="#clients">찾아주세요</a></li>
                        <li><a href="#services">주인을 찾아요</a></li>
                        <li class="dropdown"><a href="#portfolio"><span>찾음+</span>  <i
                            class="bi bi-chevron-down dropdown-indicator"></i></a>
                            <ul>
                                <li><a href="#">찾음이 기부해요</a></li>
                                <li><a href="#">포인트로 기부해요</a></li>
                            </ul>
                        </li>
                        <li><a href="#team">로그아웃</a></li>
                        <li><a href="blog.html">마이페이지</a></li>
                </nav><!-- .navbar -->

                <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
                <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

            </div>
        </header><!-- End Header -->
        <!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="hero">
            <div class="container position-relative">
                <div class="row gy-5" data-aos="fade-in" style="margin-top: 0px;">
                    <div class="col-lg-4 order-1 order-lg-2 d-flex justify-content-center align-items-center">
                        <img src="../resources/assets/img/main-search.png" class="img-fluid" alt="" data-aos="zoom-out"
                            data-aos-delay="100" style="width:40%;">
                    </div>
                    <div
                        class="col-lg-8 order-2 order-lg-2 d-flex flex-column justify-content-center text-center text-lg-start">
                        <h3>물건을 잃어버렸나요?</h3>
                        <h3>누군가가 잃어버린 물건을 습득하셨나요?</h3>
                        <div class="d-flex col-md-12 justify-content-center justify-content-lg-start">
                            <form action="/totalSearch/search.do" method="get">
                                <input type="text" name="totalSearchKeyword" value="${totalSearchKeyword }">
                                <button type="submit"><img src="../resources/assets/img/search.png" alt="" style="width:40%;"></button>
                            </form>
                        </div>
                    </div>
                </div>
                
            </div>
        </section>
        <!-- End Hero Section -->


<!-- *****MAIN************************************************************************************ -->
    <main id="main" class="sections-bg">
        <section id="portfolio" class="portfolio sections-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-header">
                    <h2>습득물</h2>
                </div>
                
                <div class="portfolio-isotope" data-portfolio-filter="*" data-portfolio-layout="masonry"
                    data-portfolio-sort="original-order" data-aos="fade-up" data-aos-delay="100">
                    <div class="row row-gy-5 gy-4 portfolio-container">
	                    <c:if test="${tSFindList eq null}">
			               	<div class="no-lost">
			              	<span>${msg}</span>
			               	</div>
	           			</c:if>
					
	                    <c:forEach var="totalFind" items="${tSFindList}">
	                        <div class="col-xl-3 col-md-6 portfolio-item filter-app">
	                            <div class="portfolio-wrap">
	                            	<c:url var="detailFindUrl" value="/findBoard/detail.do">
										  <c:param name="findNo" value="${totalFind.findNo}"></c:param>
									</c:url>
	                                <c:if test="${!empty totalFind.findFilerename }">  <!-- 첨부이미지가 있을때 -->
	                             		<a href="${detailFindUrl}" >
	                             			<img src="../resources/fuploadFiles/${findBoard.findFilerename }" class="img-fluid"  alt="#">
	                             		</a>
									</c:if>
									<c:if test="${empty totalFind.findFilerename }"> <!-- 첨부이미지가 없을때 -->
										<a href="${detailFindUrl}" >
											<img src="../resources/assets/img/noImage.jpg" class="img-fluid" alt="#">
										</a>
									</c:if>
	                                <div class="portfolio-info">
	                                    <div>
	                                        <h4><a href="${detailFindUrl}" title="More Details">${totalFind.findTitle}</a></h4>
	                                        <p>${totalFind.fCreateDate}</p>
	                                    </div>
	                                    <div class="donationBottom d-flex" style="justify-content: space-between;">
	                                        <strong>종류 : ${totalFind.findCategory}</strong>
	                                        <strong>색상 : ${totalFind.findColor}</strong>
	                                        <strong>브랜드 : ${totalFind.findBrand}</strong>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </c:forEach>

                       
                    </div>
                    <!-- End Portfolio Container -->
                    <div class="mt-5 d-flex justify-content-center">
                        <nav aria-label="Page navigation example r">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link"
                                    href="#"><i class="bi bi-chevron-left"></i></a></li>
                                
                                <li class="page-item"><a class="page-link"
                                        href="#">1</a></li>
                                <li class="page-item"><a class="page-link"
                                    href="#"><i class="bi bi-chevron-right"></i></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                
            </div>
        </section>
<!-- *****************************************분실물***************************************** -->
        <section id="portfolio" class="portfolio sections-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-header">
                    <h2>분실물</h2>
                </div>
                
                <div class="portfolio-isotope" data-portfolio-filter="*" data-portfolio-layout="masonry"
                    data-portfolio-sort="original-order" data-aos="fade-up" data-aos-delay="100">
                    <div class="row row-gy-5 gy-4 portfolio-container">
                    
                    	<c:if test="${tSLostList eq null}">
			               	<div class="no-lost">
			              	<span>${msg}</span>
			               	</div>
              			</c:if>
					
						<c:forEach var="totalLost" items="${tSLostList}">
	                        <div class="col-xl-3 col-md-6 portfolio-item filter-app">
	                            <div class="portfolio-wrap">
	                            	<c:url var="detailLostUrl" value="/lostBoard/detail.do">
										  <c:param name="lostNo" value="${totalLost.lostNo}"></c:param>
									</c:url>
	                                <c:if test="${!empty totalLost.lostFilerename }">  <!-- 첨부이미지가 있을때 -->
	                             		<a href="${detailLostUrl}" >
	                             			<img src="../resources/assets/img/luploadFiles/${totalLost.lostFilerename}" class="img-fluid"  alt="#">
	                             		</a>
									</c:if>
									<c:if test="${empty totalLost.lostFilerename }"> <!-- 첨부이미지가 없을때 -->
										<a href="${detailLostUrl}" >
											<img src="../resources/assets/img/noImage.jpg" class="img-fluid" alt="#">
										</a>
									</c:if>
	                                <div class="portfolio-info">
	                                    <div>
	                                        <h4><a href="${detailLostUrl}" title="More Details">${totalLost.lostTitle}</a></h4>
	                                        <p>${totalLost.lCreateDate}</p>
	                                    </div>
	                                    <div class="donationBottom d-flex" style="justify-content: space-between;">
	                                        <strong>종류 : ${totalLost.lostCategory}</strong>
	                                        <strong>색상 : ${totalLost.lostColor}</strong>
	                                        <strong>브랜드 : ${totalLost.lostBrand}</strong>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </c:forEach>
                    </div>
                    <!-- End Portfolio Container -->
                </div>
                
                <!-- 페이지 네비게이션 -->
                <div class="mt-5 d-flex justify-content-center">
                    <nav aria-label="Page navigation example r">
                        <ul class="pagination">
	                        <c:if test="${lPInfo.startNavi != 1}">
								<c:url var="prevUrl" value="/lostBoard/search.do" >  
									<c:param name="page" value="${lPInfo.startNavi -1 }"></c:param>
									<c:param name="totalSearchKeyword" value="${totalSearchKeyword}"></c:param>		 								
								</c:url>
								<li class="page-item"><a href="${prevUrl}" class="page-link">Prev</a></li>
							</c:if>
                            
                            <c:forEach begin="${lPInfo.startNavi}" end="${lPInfo.endNavi}"  var="p">
								<c:url var="pageUrl" value="/lostBoard/search.do" >  
									<c:param name="page" value="${p}"></c:param> 	
									<c:param name="totalSearchKeyword" value="${totalSearchKeyword}"></c:param>	
								</c:url>
								<c:choose>
				                   <c:when test="${p == lPInfo.currentPage}">
				                       <li class="page-item active" ><a href="${pageUrl}" class="page-link" style="background-color: #4365BC">${p}</a></li>
				                   </c:when>
				                   <c:otherwise>
				                       <li class="page-item"><a href="${pageUrl}" class="page-link">${p}</a></li>
				                   </c:otherwise>
				                </c:choose>
							</c:forEach>

	                        <c:if test="${lPInfo.endNavi != lPInfo.naviTotalCount}">
								<c:url var="nextUrl" value="/lostBoard/search.do" >  
									<c:param name="page" value="${lPInfo.endNavi + 1}"></c:param> 								
									<c:param name="totalSearchKeyword" value="${totalSearchKeyword}"></c:param>	
								</c:url>
								<li class="page-item"><a href="${nextUrl}" class="page-link">Next</a></li>
							</c:if>
                        </ul>
                    </nav>
                </div>
                
            </div>
        </section>
    </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer" >

            <div class="container">
                <div class="row gy-4">
                    <div class="col-lg-5 col-md-12 footer-info">
                        <a href="index.html" class="logo d-flex align-items-center">
                            <h2>찾음</h2>
                            <img src="../resources/assets/img/light.png" alt="">
                        </a>
                        <p style="font-size:18px;">분실물 관리 통합 포털</p>
                        <div class="social-links d-flex mt-4">
                            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-2 col-6 col-md-3 footer-links">
                        <h4>찾음</h4>
                        <ul>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">채용</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">기부</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-6 col-md-3 footer-links">
                        <h4>서비스</h4>
                        <ul>
                            <li><a href="#">찾음이란?</a></li>
                            <li><a href="#">찾아주세요</a></li>
                            <li><a href="#">주인을 찾아요</a></li>
                            <li><a href="#">찾음+</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-3 footer-contact text-center text-md-start">
                        <h4>Contact Us</h4>
                        <p>
                            3F, 120, Namdaemun-ro <br>
                            Jung-gu, Seoul<br>
                            Republic of Korea <br><br>
                            <strong>Phone:</strong> 02 2345 5678<br>
                            <strong>Email:</strong> info@chazm.com<br>
                        </p>

                    </div>

                </div>
            </div>

            <div class="container mt-4">
                <div class="copyright">
                    &copy; Copyright <strong><span>Chazm</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/impact-bootstrap-business-website-template/ -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>

        </footer><!-- End Footer -->
        <!-- End Footer -->

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