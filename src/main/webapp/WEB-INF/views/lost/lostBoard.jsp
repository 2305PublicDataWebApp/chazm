<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>찾음 : 찾아주세요</title>
        <meta content="" name="description">
        <meta content="" name="keywords">
        <!-- 부트스트랩 CSS cdn-->
        <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->

        <!-- Favicons -->
        <!-- <link href="../resources/assets/img/favicon.png" rel="icon">
        <link href="../resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->
        <link href="../resources/assets/img/light.png" rel="icon">
        <link href="../resources/assets/img/light.png" rel="apple-touch-icon">

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
        <link rel="stylesheet" href="../resources/assets/css/lost/lostBoard.css">
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
<!-- *****MAIN************************************************************************************ -->
        <main id="main">
            <section id="mainTop" class="sections-bg">
                <div class="section-header ">
                    <h2>찾아주세요</h2>
                    <p>물건을 습득하셨나요? 분실물 목록에서 주운 물건이 있는지 찾아보세요!</p>
                </div>
    
                <div class="d-flex me-5 mb-4"> 
                    <div class="wrap">
                        <div class="blank w-75"></div>
                        <div id="insertBtn" class="" >
                            <div class="d-flex justify-content-end w-25">
                                <h5>소중한물건을 잃어버리셨나요? </h5>
                            </div>
                            <div>
                                <input type="button" value="분실물 등록">
                            </div>
                        </div>
                    </div> 
                        
                </div>
    
                <div id="searchBox" class="align-self-center m-auto mb-5 p-3">
    
                    <div id="categoryBox" class="w-50 text-center">
                        <div data-filter="*" class="filter-active category-icon">
                            <a href="" ><div class="icon"><i class="bi bi-easel" style="color:black"></i></div>
                            <h4 class="title">의류</h4></a>
                        </div>
                        <div data-filter="*" class="filter-active category-icon">
                            <a href="" class=" "><div class="icon"><i class="bi bi-handbag" style="color:black"></i></div>
                            <h4 class="title">가방</h4></a>
                        </div>
                        <div data-filter="*" class="filter-active category-icon">
                            <a href="" ><div class="icon"><i class="bi bi-wallet2" style="color:black"></i></div>
                            <h4 class="title">지갑</h4></a>
                        </div>
                        <div data-filter="*" class="filter-active category-icon">
                            <a href="" class=" "><div class="icon"><i class="bi bi-phone" style="color:black"></i></div>
                            <h4 class="title">핸드폰</h4></a>
                        </div>
                        <div data-filter="*" class="filter-active category-icon">
                            <a href="" ><div class="icon"><i class="bi bi-smartwatch" style="color:black"></i></div>
                            <h4 class="title">그 외</h4></a>
                        </div>
                        <div data-filter="*" class="filter-active category-icon">
                            <a href="" class=" "><div class="icon"><i class="bi bi-bus-front" style="color:black"></i></div>
                            <h4 class="title">버스</h4></a>
                        </div>
                        <div data-filter="*" class="filter-active category-icon">
                            <a href="" ><div class="icon"><i class="bi bi-train-front" style="color:black"></i></div>
                            <h4 class="title">지하철</h4></a>
                        </div>
                        <div data-filter="*" class="filter-active category-icon">
                            <a href="" class=" "><div class="icon"><i class="bi bi-taxi-front" style="color:black"></i></div>
                            <h4 class="title">택시</h4></a>
                        </div>
                        <div data-filter="*" class="filter-active category-icon">
                            <a href="" ><div class="icon"><i class="bi bi-airplane" style="color:black"></i></div>
                            <h4 class="title">공항</h4></a>
                        </div>
                        <div data-filter="*" class="filter-active category-icon">
                            <a href="" class=" "><div class="icon"><i class="bi bi-building" style="color:black"></i></div>
                            <h4 class="title">그 외</h4></a>
                        </div>
                    </div>
    
                    <div id="searchContent" class="w-50 m-2 me-5">
                        <div id="searchWrap" class="d-flex m-2 w-100 ">
                            <select name="lostSearchCondition" class="w-25 border-end border-dark-subtle rounded-start text-center" style="height: 40px;">
                                <option value="lost_title">제목</option>
                                <option value="lost_content">내용</option>
                            </select>
                            <div class="d-flex w-75">
                                <input type="text" name="" class="w-100 border border-dark-subtle rounded-end " style="height: 40px;">
                            </div>
                        </div>
                        
                        <div id="lostDate" class="d-flex m-2 w-100" >
                            <div class="w-50">
                                <input type="date" name="lostDate"  class="p-1 w-100 border border-dark-subtle rounded-start text-center" style="height: 40px;"> 
                            </div>
                            <div class="w-auto ms-2 me-2 d-flex align-items-center">
                                <h5 class="text-white " > ~ </h5>
                            </div>
                            <div class="w-50">
                                <input type="date" name="lostDate" class="p-1 w-100 border border-dark-subtle rounded-end text-center" style="height: 40px;">
                            </div>
                        </div>
    
                        <div class="d-flex m-2 w-100 justify-content-between">
                                
                            <div id="lostCounty" class="btn-group w-100 ">
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

                            <!-- <div id="lost_city" class="btn-group me-3">
                                <button type="button" class="btn dropdown-toggle text-center"  style="background-color: #fff; width: 180px; height: 40px;" data-bs-toggle="dropdown" aria-expanded="false">
                                    시 / 군 / 구&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">서울특별시</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </div>
                            <div id="lost_village" class="btn-group">
                                <button type="button" class="btn dropdown-toggle text-center"  style="background-color: #fff; width: 180px; height: 40px;" data-bs-toggle="dropdown" aria-expanded="false">
                                    읍 / 면 / 동&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">서울특별시</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </div> -->
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

                            
                            <div id="lostBrand" class="w-50 ">
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


            <!-- ======= Portfolio Section ======= -->
            <section id="portfolio" class="portfolio sections-bg">
                <div class="container " data-aos="fade-up">

                    <div class="portfolio-isotope" data-portfolio-filter="*" data-portfolio-layout="masonry"
                        data-portfolio-sort="original-order" data-aos="fade-up" data-aos-delay="100">
                        <!-- <div>
                            <ul class="portfolio-flters">
                                <li data-filter="*" >All</li>
                                <li data-filter=".filter-app">App</li>
                                <li data-filter=".filter-product">Product</li>
                                <li data-filter=".filter-branding">Branding</li>
                                <li data-filter=".filter-books" class="filter-active">Books</li>
                            </ul>
                        </div> -->

                        <div class="row gy-4 portfolio-container">

                            <div class="col-xl-4 col-md-6 portfolio-item filter-app">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/app-1.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/app-1.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="portfolio-details.html" title="More Details">아이폰 14 찾아요</a></h4>
                                        <p>2023.09.10</p><p>이*헌</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->


                            <div class="col-xl-4 col-md-6 portfolio-item filter-product">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/product-1.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/product-1.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="portfolio-details.html" title="More Details">애플워치 분실했어요ㅠㅠ</a></h4>
                                        <p>2023.09.09</p><p>정*성</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->

                            
                            <div class="col-xl-4 col-md-6 portfolio-item filter-branding">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/branding-1.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/branding-1.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="portfolio-details.html" title="More Details">화장품 파우치</a></h4>
                                        <p>2023.09.09</p><p>채*연</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->

                            <div class="col-xl-4 col-md-6 portfolio-item filter-books">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/books-1.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/books-1.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="portfolio-details.html" title="More Details">Books 1</a></h4>
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
                                        <h4><a href="portfolio-details.html" title="More Details">App 2</a></h4>
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
                                        <h4><a href="portfolio-details.html" title="More Details">Product 2</a></h4>
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
                                        <h4><a href="portfolio-details.html" title="More Details">Branding 2</a></h4>
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
                                        <h4><a href="portfolio-details.html" title="More Details">Books 2</a></h4>
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
                                        <h4><a href="portfolio-details.html" title="More Details">App 3</a></h4>
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
                                        <h4><a href="portfolio-details.html" title="More Details">Product 3</a></h4>
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
                                        <h4><a href="portfolio-details.html" title="More Details">Branding 3</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div><!-- End Portfolio Item -->

                            <!-- <div class="col-xl-4 col-md-6 portfolio-item filter-books">
                                <div class="portfolio-wrap">
                                    <a href="../resources/assets/img/fuploadFiles/books-3.jpg" data-gallery="portfolio-gallery-app"
                                        class="glightbox"><img src="../resources/assets/img/fuploadFiles/books-3.jpg" class="img-fluid"
                                            alt=""></a>
                                    <div class="portfolio-info">
                                        <h4><a href="portfolio-details.html" title="More Details">Books 3</a></h4>
                                        <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    </div>
                                </div>
                            </div> -->
                            <!-- End Portfolio Item -->
                        </div><!-- End Portfolio Container -->
                    </div>
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
        <script src="../resources/assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="../resources/assets/js/main.js"></script>

        <!-- JS파일경로-->
        <!-- <script src="./resources/js/lostBoard.js"></script> -->
    </body>

</html>