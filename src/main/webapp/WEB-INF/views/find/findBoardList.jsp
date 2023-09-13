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
        <!-- <link href="./resources/assets/css/main.css" rel="stylesheet"> -->

        <!-- CSS -->
        <link href="../resources/assets/css/find/findList.css" rel="stylesheet">
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
        <main id="main">
            <section id="title" class="section title" style="padding-top:100px;">
                <div class="container position-relative">
                    <div class="section-header">
                        <h2>주인을 찾아요</h2>
                        <p>물건을 잃어버리셨나요? 습득물 목록에서 잃어버린 물건이 있는지 찾아보세요!</p>
                    </div>
                </div>
            </section>

            <section id="section-button" class="d-flex me-5 mb-4">
                <div class="wrap">
                    <div class="insertBtn position-relative">
                        <div class="d-flex justify-content-end">
                            <h5>누군가 잃어버린 물건을 주우셨나요?</h5>
                        </div>
                        <div class="d-flex justify-content-end">
                            <div><input type="button" value="습득물 등록"></div>
                        </div>
                    </div>
                </div>
            </section>
    
            <!-- ======= 습득물 검색 ======= -->
            <div id="searchBox" class="section align-self-center m-auto mb-5 p-3">
        
                <div id="category_box" class="w-50 text-center">
                    <div data-filter="*" class="filter-active category_icon">
                        <a href="" ><div class="icon"><i class="bi bi-easel" style="color:black"></i></div>
                        <h4 class="title">의류</h4></a>
                    </div>
                    <div data-filter="*" class="filter-active category_icon">
                        <a href="" class=" "><div class="icon"><i class="bi bi-handbag" style="color:black"></i></div>
                        <h4 class="title">가방</h4></a>
                    </div>
                    <div data-filter="*" class="filter-active category_icon">
                        <a href="" ><div class="icon"><i class="bi bi-wallet2" style="color:black"></i></div>
                        <h4 class="title">지갑</h4></a>
                    </div>
                    <div data-filter="*" class="filter-active category_icon">
                        <a href="" class=" "><div class="icon"><i class="bi bi-phone" style="color:black"></i></div>
                        <h4 class="title">핸드폰</h4></a>
                    </div>
                    <div data-filter="*" class="filter-active category_icon">
                        <a href="" ><div class="icon"><i class="bi bi-smartwatch" style="color:black"></i></div>
                        <h4 class="title">그 외</h4></a>
                    </div>
                    <div data-filter="*" class="filter-active category_icon">
                        <a href="" class=" "><div class="icon"><i class="bi bi-bus-front" style="color:black"></i></div>
                        <h4 class="title">버스</h4></a>
                    </div>
                    <div data-filter="*" class="filter-active category_icon">
                        <a href="" ><div class="icon"><i class="bi bi-train-front" style="color:black"></i></div>
                        <h4 class="title">지하철</h4></a>
                    </div>
                    <div data-filter="*" class="filter-active category_icon">
                        <a href="" class=" "><div class="icon"><i class="bi bi-taxi-front" style="color:black"></i></div>
                        <h4 class="title">택시</h4></a>
                    </div>
                    <div data-filter="*" class="filter-active category_icon">
                        <a href="" ><div class="icon"><i class="bi bi-airplane" style="color:black"></i></div>
                        <h4 class="title">공항</h4></a>
                    </div>
                    <div data-filter="*" class="filter-active category_icon">
                        <a href="" class=" "><div class="icon"><i class="bi bi-building" style="color:black"></i></div>
                        <h4 class="title">그 외</h4></a>
                    </div>
                </div>
    
    
                <div id="search_content" class="w-50 m-2 me-5">
    
                    <div id="search_wrap" class="d-flex m-2 w-100 ">
                        <select name="find_searchCondition" class="w-25 border-end border-dark-subtle rounded-start text-center" style="height: 40px;">
                            <option value="find_title">제목</option>
                            <option value="find_content">내용</option>
                        </select>
                        <div class="d-flex w-75">
                            <input type="text" name="" class="w-100 border border-dark-subtle rounded-end " style="height: 40px;">
                        </div>
                    </div>
                    
                    <div id="find_date" class="d-flex m-2 w-100" >
                        <div class="w-50">
                            <input type="date" name=""  class="p-1 w-100 border border-dark-subtle rounded-start text-center" style="height: 40px;"> 
                        </div>
                        <div class="w-auto ms-2 me-2 d-flex align-items-center">
                            <h5 class="text-white " > ~ </h5>
                        </div>
                        <div class="w-50">
                            <input type="date" name="" class="p-1 w-100 border border-dark-subtle rounded-end text-center" style="height: 40px;">
                        </div>
                    </div>
    
                    <div class="d-flex m-2 w-100 justify-content-between">
                            
                        <div id="find_location" class="btn-group w-100 ">
                            <button type="button" class="btn dropdown-toggle text-center border-dark-subtle "  style="background-color: #fff; " data-bs-toggle="dropdown" aria-expanded="false">
                            시 / 도&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" >서울특별시</a></li>
                                <li><a class="dropdown-item" >부산광역시</a></li>
                                <li><a class="dropdown-item" >대구광역시</a></li>
                                <li><a class="dropdown-item" >인천광역시</a></li>
                                <li><a class="dropdown-item" >광주광역시</a></li>
                                <li><a class="dropdown-item" >대전광역시</a></li>
                                <li><a class="dropdown-item" >울산광역시</a></li>
                                <li><a class="dropdown-item" >세종특별자치시</a></li>
                                <li><a class="dropdown-item" >경기도</a></li>
                                <li><a class="dropdown-item" >강원도</a></li>
                                <li><a class="dropdown-item" >충청북도</a></li>
                                <li><a class="dropdown-item" >충청남도</a></li>
                                <li><a class="dropdown-item" >전라북도</a></li>
                                <li><a class="dropdown-item" >전라남도</a></li>
                                <li><a class="dropdown-item" >경상북도</a></li>
                                <li><a class="dropdown-item" >경상남도</a></li>
                                <li><a class="dropdown-item" >제주특별자치도</a></li>
                            </ul>
                        </div>
    
                    </div>
    
                    <div id="colorBrand" class="d-flex justify-content-between m-2 w-100 " >
                    
                        <div class="btn-group me-2 w-50 ">
                            <button type="button" class="w-100  btn dropdown-toggle border-dark-subtle"  style="background-color: #fff;" data-bs-toggle="dropdown" aria-expanded="true">
                            색상
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">흰색</a></li>
                                <li><a class="dropdown-item" href="#">검정</a></li>
                                <li><a class="dropdown-item" href="#">빨강</a></li>
                                <li><a class="dropdown-item" href="#">노랑</a></li>
                                <li><a class="dropdown-item" href="#">초록</a></li>
                                <li><a class="dropdown-item" href="#">파랑</a></li>
                                <li><a class="dropdown-item" href="#">보라</a></li>
                            </ul>
                        </div>
    
                        
                        <div id="find_brand" class="w-50 ">
                            <input type="text" name="" placeholder="브랜드" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                        </div>
                    </div>
    
                    <div class="d-flex position-relative">
                        <div class="blank w-75"></div>
                        <div id="searchBtn" class=" d-flex justify-content-end w-25 " >
                            <input type="submit" name="" value="검색" class="border rounded" style="background-color: aliceblue; color: #4365BC; height:50px;">
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
    
            <!-- ======= 습득물 목록 ======= -->
            <section id="findList" class="portfolio sections-bg">
                <div class="container" data-aos="fade-up">
    
                    <div class="portfolio-isotope" data-portfolio-filter="*" data-portfolio-layout="masonry"
                        data-portfolio-sort="original-order" data-aos="fade-up" data-aos-delay="100">
    
                        <!-- <div>
                            <ul class="portfolio-flters">
                                <li data-filter="*" class="filter-active">All</li>
                                <li data-filter=".filter-app">App</li>
                                <li data-filter=".filter-product">Product</li>
                                <li data-filter=".filter-branding">Branding</li>
                                <li data-filter=".filter-books">Books</li>
                            </ul> End Portfolio Filters -->
                        </div> 
    
                        <div class="row gy-4 portfolio-container">
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-app">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/app-1.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/app-1.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">핸드폰</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-product">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/product-1.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/product-1.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">시계 1</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-branding">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/branding-1.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/branding-1.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">화장품 1</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-books">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/books-1.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/books-1.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">책 1</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-app">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/app-2.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/app-2.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">핸드폰 2</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-product">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/product-2.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/product-2.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">카메라 2</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-branding">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/branding-2.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/branding-2.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">화장품 2</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-books">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/books-2.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/books-2.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">책 2</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-app">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/app-3.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/app-3.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">핸드폰 3</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-product">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/product-3.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/product-3.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">스탠드 3</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-branding">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/branding-3.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/branding-3.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">영양제 3</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                            <div class="col-xl-4 col-md-6 portfolio-item filter-books">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/books-3.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/books-3.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="../find/findBoardDetail.html" title="More Details">책 3</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->
    
                        </div><!-- End Portfolio Container -->
    
                    </div>
    
                    <div class="mt-5 d-flex justify-content-center">
                        <nav aria-label="Page navigation example r">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">Prev</a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                            </ul>
                        </nav>
                    </div>
            </section><!-- End Portfolio Section -->
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