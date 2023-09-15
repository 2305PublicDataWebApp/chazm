<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>찾음 : 분실물 등록하기</title>
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
        <!-- <link href="../resources/assets/css/plusMdetail.css" rel="stylesheet"> -->
        <link rel="stylesheet" href="../resources/assets/css/lost/insertLostBoardForm.css">
        <link rel="stylesheet" href="../resources/assets/css/common/header.css">
        <link rel="stylesheet" href="../resources/assets/css/common/footer.css">
   
   		<!-- 썸머노트 -->
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

<!-- *****MAIN************************************************************************************ -->
        <main id="main" class="sections-bg">
            <section id="mainLayer1" class="">
                <div class="section-header ">
                    <h2>찾아주세요</h2>
                    <p>빠르게 찾을 수 있도록 분실물을 등록해주세요!</p>
                </div>
            </section>
                
            <section id="blog" class="blog title-wrap">
                <div class="container" data-aos="fade-up">
                    <div class="row g-5">
                        <div class="col-lg-12">
                            <div class="sidebar">
                            	<form action="/lostBoard/insert.do" method="post" enctype="multipart/form-data">
								<div id="mainPart1" class="d-flex">
									<!-- 사진 -->
									<div id="pictureWrap">
										<div id="picture" >
											<img src="../resources/assets/img/noImage.jpg" alt="">
										</div>
									</div>
									
									<div id="infoWrap">
										<!--제목 -->
										<div id="lostTitle" >
											<input type="text" name="lostTitle" placeholder="제목을 입력해주세요." class="w-100 m-2 p-3 border border-dark-subtle rounded text-md-start" style="height : 45px">
										</div>
										
										<!--분실물 종류 -->
										<div class="btn-group w-100">
											<button type="button" class="w-100 btn btn-danger dropdown-toggle filter-active category-icon-select" style="border: none; color:#fff;" data-bs-toggle="dropdown" aria-expanded="false">
												<h5 style="display: inline;">무엇을 잃어버렸나요?</h5>
											</button>
											<ul class="dropdown-menu ">
												<div class="d-flex">
													<li><div class="dropdown-item category-icon" id="clothes" >
														<div class="icon"><i class="bi bi-handbag" style="color:#fff"></i></div>
														<h4 id="titleClothes" class="title" style="color:#fff">의류</h4>
														</div>
													</li>
													<li><div class="dropdown-item category-icon" id="bag" >
														<div class="icon"><i class="bi bi-handbag" style="color:#fff"></i></div>
														<h4 id="titleBag" class="title" style="color:#fff">가방</h4>
														</div>
													</li>
													<li><div class="dropdown-item category-icon" >
														<div class="icon"><i class="bi bi-wallet2" style="color:#fff"></i></div>
														<h4 class="title" style="color:#fff">지갑</h4>
														</div>
													</li>
													<li><div class="dropdown-item category-icon" >
														<div class="icon"><i class="bi bi-phone" style="color:#fff"></i></div>
														<h4 class="title" style="color:#fff">핸드폰</h4>
														</div>
													</li>
													<li><div class="dropdown-item category-icon" >
														<div class="icon"><i class="bi bi-smartwatch" style="color:#fff"></i></div>
														<h4 class="title" style="color:#fff">그 외</h4>
														</div>
													</li>
												</div>
											</ul>
										</div>
										<!--분실장소-->                    
										<div class="btn-group w-100">
											<button type="button" class="w-100 btn btn-danger dropdown-toggle filter-active category-icon-select" style="border: none;" data-bs-toggle="dropdown" aria-expanded="false">
												<h5 style="display: inline;">어디서 잃어버렸나요?</h5>
											</button>
											<ul class="dropdown-menu ">
												<div class="d-flex">
													<li><a class="dropdown-item category-icon" >
														<div class="icon"><i class="bi bi-bus-front" style="color:#fff"></i></div>
														<h4 class="title" style="color:#fff">버스</h4>
													</a></li>
													<li><a class="dropdown-item category-icon" >
														<div class="icon"><i class="bi bi-train-front" style="color:#fff"></i></div>
														<h4 class="title" style="color:#fff">지하철</h4>
													</a></li>
													<li><div class="dropdown-item category-icon" >
														<div class="icon"><i class="bi bi-taxi-front" style="color:#fff"></i></div>
														<h4 class="title" style="color:#fff">택시</h4>
													</div></li>
													<li><div class="dropdown-item category-icon">
														<div class="icon"><i class="bi bi-airplane" style="color:#fff"></i></div>
														<h4 class="title" style="color:#fff">공항</h4>
													</div></li>
													<li><div class="dropdown-item category-icon" >
														<div class="icon"><i class="bi bi-building" style="color:#fff"></i></div>
														<h4 class="title" style="color:#fff">그 외</h4>
													</div></li>
												</div>
											</ul>
										</div>
										<input type="hidden" name="lostCategory" id="selectedCategoryInput" value="">
					
										<!--분실지역-->
										<div class="d-flex m-2 w-100 justify-content-between">
											<div id="lostLocation" class="btn-group w-100 ">
												<button type="button" class="btn dropdown-toggle text-center border-dark-subtle "  style="background-color: #fff; height : 40px;" data-bs-toggle="dropdown" aria-expanded="false">
													<span id="selectedLocation">분실지역(시 / 도)</span>
												</button>
												<ul class="dropdown-menu w-100">
	                                            	<li><a class="dropdown-item" data-value="seoul">서울특별시</a></li>
													<li><a class="dropdown-item" data-value="busan">부산광역시</a></li>
													<li><a class="dropdown-item" data-value="daegu">대구광역시</a></li>
													<li><a class="dropdown-item" data-value="incheon">인천광역시</a></li>
													<li><a class="dropdown-item" data-value="gwanju">광주광역시</a></li>
													<li><a class="dropdown-item" data-value="daejeon">대전광역시</a></li>
													<li><a class="dropdown-item" data-value="ulsan">울산광역시</a></li>
													<li><a class="dropdown-item" data-value="sejong">세종특별자치시</a></li>
													<li><a class="dropdown-item" data-value="gyeonggi">경기도</a></li>
													<li><a class="dropdown-item" data-value="gangwon">강원도</a></li>
													<li><a class="dropdown-item" data-value="chungbuk">충청북도</a></li>
													<li><a class="dropdown-item" data-value="chungnam">충청남도</a></li>
													<li><a class="dropdown-item" data-value="jeonbuk">전라북도</a></li>
													<li><a class="dropdown-item" data-value="jeonnam">전라남도</a></li>
													<li><a class="dropdown-item" data-value="gyeongbuk">경상북도</a></li>
													<li><a class="dropdown-item" data-value="gyeongnam">경상남도</a></li>
													<li><a class="dropdown-item" data-value="jeju">제주특별자치도</a></li>
												</ul>
											</div>
										</div>
										<input type="hidden" name="lostLocation" id="selectedLocationInput" value="">
					
										<!--분실일자-->
										<div id="lostDate" class="d-flex m-2 w-100" >
											<div class="w-50">
												<input type="date" name="lostDateStart" class="p-1 w-100 border border-dark-subtle rounded-start text-center" style="height: 40px;"> 
											</div>
											<div class="w-auto ms-2 me-2 d-flex align-items-center">
												<h5 class="text-black " > ~ </h5>
											</div>
											<div class="w-50">
												<input type="date" name="lostDateEnd" class="p-1 w-100 border border-dark-subtle rounded-end text-center" style="height: 40px;">
											</div>
										</div>
					
										<!--분실물 색, 브랜드-->
										<div class="d-flex justify-content-between m-2 w-100 " >
											<div class="btn-group me-2 w-50 ">
												<button type="button" class="w-100  btn dropdown-toggle border-dark-subtle"  style="background-color: #fff; height: 40px;" data-bs-toggle="dropdown" aria-expanded="true">
													<span id="selectedColor">색상</span>
												</button>
												<ul class="dropdown-menu">
													<li><a class="dropdown-item dd-color" data-value="white">흰색</a></li>
													<li><a class="dropdown-item dd-color" data-value="black">검정</a></li>
													<li><a class="dropdown-item dd-color" data-value="red">빨강</a></li>
													<li><a class="dropdown-item dd-color" data-value="yellow">노랑</a></li>
													<li><a class="dropdown-item dd-color" data-value="green">초록</a></li>
													<li><a class="dropdown-item dd-color" data-value="blue">파랑</a></li>
													<li><a class="dropdown-item dd-color" data-value="purple">보라</a></li>
												</ul>
											</div>
											<input type="hidden" name="lostColor" id="selectedColorInput" value="">
											
											<div id="lostBrand" class="w-50">
												<input type="text" name="lostBrand" placeholder="브랜드" class="w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
											</div>
										</div>
										<!--사진첨부-->
										<div class="input-group m-2 w-100">
											<input type="file" name="uploadFile" class="form-control border-dark-subtle rounded" id="formFile" >
										</div>
									</div>
								</div>	
                                    
                                <hr>
                                <div id="container" class="d-flex justify-content-center flex-column">
                                    <textarea id="summernote" name="lostContent" spellcheck="false"></textarea>
                                    <!-- <input type="text" id="hashtagInput" placeholder="키워드 입력 후 엔터 키 누르기"> -->
                                    <div id="hashtagContainer" class="hashtag-container"></div> 
                                </div>
                                <hr>
                                <div id="buttons" class="d-flex justify-content-end">   
                                    <div>
                                        <button type="submit" class="btn" style="background-color: #4365BC; color:#fff">등록하기</button>
                                        <button type="reset" class="btn" style="background-color: #818181; color:#fff">취소하기</button>
                                    </div>
                                </div>
                                </form>
                                <!-- End Blog Sidebar -->
                            </div>
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
        <script src="../resources/assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="../resources/assets/js/main.js"></script>

        <script>

        // document.querySelectorAll('.dropdown-item').forEach(function(item) {
        //         item.addEventListener('click', function() {
        //             const iconClass = this.getAttribute('data-icon');
        //             const iconElement = document.querySelector('.btn .icon i');
        //             iconElement.className = `bi ${iconClass}`;
        //         });
        //     });
        // </script>



        <script>

            let icons = document.querySelectorAll(".category-icon");            
            const container = document.querySelector(".category-icon-select");
            icons.forEach(icon => {
                icon.addEventListener("click", function (event) {
                    const container = this.closest(".btn-group");                    
                    container.querySelector(".category-icon-select").innerHTML = this.innerText;
                });
            });            

            <!-- summernote -->
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
            
            

  
			document.querySelector("form").addEventListener("submit", function(event) {
			    // 폼이 제출될 때 실행되는 함수
	
			    // 여기서 msg 변수를 가져와서 확인합니다.
			  	var msg = "${msg}";
	
			    if (msg !== null && msg !== "") {
			        alert(msg);
	
			    }
			});




        </script>
    </body>

</html>