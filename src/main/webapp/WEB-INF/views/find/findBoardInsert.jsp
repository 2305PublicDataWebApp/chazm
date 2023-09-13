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
        <!-- <link href="../resources/assets/css/main.css" rel="stylesheet"> -->

        <!-- CSS -->
        <link rel="stylesheet" href="../resources/assets/css/find/findInsert.css">
        <link rel="stylesheet" href="../resources/assets/css/common/header.css">
        <link rel="stylesheet" href="../resources/assets/css/common/footer.css">

        <!-- include libraries(jQuery, bootstrap) -->
        
        <!-- 이걸 두면 헤더 css가 망가짐 ㅠㅠ 수정할 방법 찾기 -->
        <!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet"> -->
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <!-- include summernote css/js -->
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
        <script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>


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
        <!-- <section id="title" class="title" style="margin-top:150px;">
            <div class="container position-relative">
                <div class="section-header">
                    <h2>주인을 찾아요</h2>
                </div>
            </div>
            <div>
                <h5 style="text-align: center; font-weight: bold; color:#949494;">습득물의 상세 내용을 확인하세요!</h5>
            </div>
        </section> -->
        
        
        
        <main id="main">
            <section id="title" class="sections-bg title" style="padding-top:100px;">
                <div class="container position-relative">
                    <div class="section-header">
                        <h2>주인을 찾아요</h2>
                        <p>주인을 찾아갈 수 있도록 습득물을 등록해주세요!</p>
                    </div>
                </div>
            </section>
            <!-- ======= 습득물 상세 조회 ======= -->
            <section id="blog" class="blog">
                <div class="container" data-aos="fade-up">
                    <div class="row g-5">
                        <div class="col-lg-12">
                            <article class="blog-details">
                    
                                <div class="content">
                                    <div id="main_part1" class="d-flex">
                                        <div id="picture_wrap">
                                            <div id="picture" >
                                                <!-- <input type="file" id="attachFile" style="display: none;" accept="image/*"> -->
                                                <i class="bi bi-camera" id="camera"></i>
                                                <img src="../resources/assets/img/fuploadFiles/product-1.jpg" alt="">
                                            </div>
                                        </div>
                                        
                                        <div id="find_info_wrap">
                                                <div id="find_title" class="">
                                                    <input type="text" name="" placeholder="시계 찾아요" class="w-100 m-2 p-3 border border-dark-subtle rounded text-md-start ">
                                                </div>
                
                                                <div id="find_category" class="">
                                                    <div class="btn-group w-100 m-2">
                                                        <button type="button" class="btn dropdown-toggle text-center border-dark-subtle " style="background-color: #fff;"  data-bs-toggle="dropdown" aria-expanded="false">
                                                            <span id="selectedCategory">습득물 종류</span>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <li><a class="dropdown-item dd-category" data-value="의류">의류</a></li>
                                                            <li><a class="dropdown-item dd-category" data-value="가방">가방</a></li>
                                                            <li><a class="dropdown-item dd-category" data-value="지갑">지갑</a></li>
                                                            <li><a class="dropdown-item dd-category" data-value="핸드폰">핸드폰</a></li>
                                                            <li><a class="dropdown-item dd-category" data-value="그 외">그 외</a></li>
                                                        </ul>
                                                    </div>
                                                    <input type="hidden" name="selectedCategory" id="selectedCategoryInput" value="">
                                                </div>
                
                                                <div id="find_location" class="">
                                                    <div class="d-flex m-2 w-100 justify-content-between">
                                            
                                                        <div id="find_location" class="btn-group w-100 ">
                                                            <button type="button" class="btn dropdown-toggle text-center border-dark-subtle "  style="background-color: #fff; " data-bs-toggle="dropdown" aria-expanded="false">
                                                                <span id="selectedLocation">습득지역(시 / 도)</span>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item dd-location" data-value="서울특별시">서울특별시</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="부산광역시">부산광역시</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="대구광역시">대구광역시</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="인천광역시">인천광역시</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="광주광역시">광주광역시</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="대전광역시">대전광역시</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="울산광역시">울산광역시</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="세종특별자치시">세종특별자치시</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="경기도">경기도</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="강원도">강원도</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="충청북도">충청북도</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="충청남도">충청남도</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="전라북도">전라북도</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="전라남도">전라남도</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="경상북도">경상북도</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="경상남도">경상남도</a></li>
                                                                <li><a class="dropdown-item dd-location" data-value="제주특별자치도">제주특별자치도</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <input type="hidden" name="selectedLocation" id="selectedLocationInput" value="">
                                                </div>
                
                                                <div id="find_place">
                                                    <div class="btn-group w-100 m-2">
                                                        <button type="button" class="btn dropdown-toggle border-dark-subtle" style="background-color: #fff;" data-bs-toggle="dropdown" aria-expanded="false">
                                                            <span id="selectedPlace">습득장소</span>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <li><a class="dropdown-item dd-place" data-value="버스">버스</a></li>
                                                            <li><a class="dropdown-item dd-place" data-value="지하철">지하철</a></li>
                                                            <li><a class="dropdown-item dd-place" data-value="택시">택시</a></li>
                                                            <li><a class="dropdown-item dd-place" data-value="공항">공항</a></li>
                                                            <li><a class="dropdown-item dd-place" data-value="그 외">그 외</a></li>
                                                        </ul>
                                                    </div>
                                                    <input type="hidden" name="selectedPlace" id="selectedPlaceInput" value="">
                                                </div>
                
                                                <div id="find_date" class="d-flex m-2 w-100" >
                                                    <input type="date" name="find_date" class="p-1 w-100 border border-dark-subtle rounded text-center" style="height: 48px;"> 
                                                </div>
                
                                                <div id="colorBrand" class="d-flex justify-content-between m-2 w-100 " >
                                                    <div class="btn-group me-2 w-50 ">
                                                        <button type="button" class="w-100  btn dropdown-toggle border-dark-subtle"  style="background-color: #fff;" data-bs-toggle="dropdown" aria-expanded="true">
                                                            <span id="selectedColor">색상</span>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <li><a class="dropdown-item dd-color" data-value="흰색">흰색</a></li>
                                                            <li><a class="dropdown-item dd-color" data-value="검정">검정</a></li>
                                                            <li><a class="dropdown-item dd-color" data-value="빨강">빨강</a></li>
                                                            <li><a class="dropdown-item dd-color" data-value="노랑">노랑</a></li>
                                                            <li><a class="dropdown-item dd-color" data-value="초록">초록</a></li>
                                                            <li><a class="dropdown-item dd-color" data-value="파랑">파랑</a></li>
                                                            <li><a class="dropdown-item dd-color" data-value="보라">보라</a></li>
                                                        </ul>
                                                    </div>
                                                    <input type="hidden" name="selectedColor" id="selectedColorInput" value="">
                                                    <div id="find_brand" class="w-50">
                                                        <input type="text" name="" placeholder="브랜드" class="w-100 p-3 border border-dark-subtle rounded" style="height:48px;">
                                                    </div>
                                                </div>
            
                                                <div class="input-group m-2 w-100">
                                                    <input type="file" class="form-control border-dark-subtle rounded" id="formFile">
                                                </div>
                                                
                                                
            
                                        </div>
                                    </div>
                                    
                                        
                                        
                                        
                                </div><!-- End post content -->
                                <hr>
                                <div id="container" class="d-flex justify-content-center flex-column">
                                    <textarea id="summernote" name="editordata" spellcheck="false"></textarea>
                                    <!-- <input type="text" id="hashtagInput" placeholder="키워드 입력 후 엔터 키 누르기"> -->
                                    <div id="hashtagContainer" class="hashtag-container"></div> 
                                </div>
                                <hr>
                                <div id="buttons" class="d-flex justify-content-end">   
                                    <div>
                                        <button type="button" class="btn" style="background-color: #4365BC; color:#fff">등록하기</button>
                                        <button type="button" class="btn" style="background-color: #818181; color:#fff">취소하기</button>
                                    </div>
                                </div>
                                
                            </article><!-- End blog post -->
                        </div>
                    </div> 
                </div>
            </section><!-- End Blog Details Section -->
            
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
        

        <!-- summernote -->
        <script>
            $(document).ready(function() {  
                //여기 아래 부분
                $('#summernote').summernote({
                    height: 200,                 // 에디터 높이
                    minHeight: null,             // 최소 높이
                    maxHeight: null,             // 최대 높이
                    focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
                    lang: "ko-KR",				// 한글 설정
                    placeholder: '습득물의 특징이나 추가 물품 등을 자세하게 적어주세요.',	//placeholder 설정
                    toolbar: [
                        // [groupName, [list of button]]
                        ['fontname', ['fontname']],
                        ['fontsize', ['fontsize']],
                        ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                        ['color', ['forecolor','color']],
                        ['table', ['table']],
                        ['para', ['ul', 'ol', 'paragraph']],
                        ['height', ['height']],
                        ['insert',['picture','link','video']],
                        ['view', ['fullscreen', 'help']]
                    ],
                    fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
                    fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
                });
            });
            $(document).ready(function () {
                $(".dd-category").click(function () {
                    var selectedCategory = $(this).data("value");
                    $("#selectedCategory").text(selectedCategory);
                    $("#selectedCategoryInput").val(selectedCategory);
                });
            });
            $(document).ready(function () {
                $(".dd-location").click(function () {
                    var selectedLocation = $(this).data("value");
                    $("#selectedLocation").text(selectedLocation);
                    $("#selectedLocationInput").val(selectedLocation);
                });
            });
            $(document).ready(function () {
                $(".dd-place").click(function () {
                    var selectedPlace = $(this).data("value");
                    $("#selectedPlace").text(selectedPlace);
                    $("#selectedPlaceInput").val(selectedPlace);
                });
            });
            $(document).ready(function () {
                $(".dd-color").click(function () {
                    var selectedColor = $(this).data("value");
                    $("#selectedColor").text(selectedColor);
                    $("#selectedColorInput").val(selectedColor);
                });
            });
        </script>

    </body>

</html>