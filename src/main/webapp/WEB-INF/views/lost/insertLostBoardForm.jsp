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
        <main id="main" class="">
            <section id="mainLayer1" class="" style="padding-top:100px;">
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
                            	<form action="/lostBoard/insert.do" method="post" id="insertForm" enctype="multipart/form-data">
								<div id="mainPart1" class="d-flex">
									<!-- 사진 -->
									<div id="pictureWrap">
										<div id="picture" >
											<img src="../resources/assets/img/noImage.jpg" id="thumbnail">
										</div>
									</div>
									
									<div id="infoWrap">
										<!--제목 -->
										<div>
											<input type="text" name="lostTitle" id="lostTitle" placeholder="제목을 입력해주세요." class="w-100 p-3 border border-dark-subtle rounded text-md-start" style="height : 50px">
										</div>
										
										<div id="wrap" class="mt-2">
											<!--분실물 종류 -->
											<div class="btn-group w-100">
												<button type="button" 
												class="w-100 btn btn-danger dropdown-toggle filter-active category-icon-select" 
												style="border: none; color:#fff;" data-bs-toggle="dropdown" >
													<h5 style="display: inline;" id="selectedCategory">무엇을 잃어버렸나요?</h5>
												</button>
												<ul class="dropdown-menu ">
													<div class="d-flex">
														<li><div data-value="지갑" class="dropdown-item category-icon dd-category" >
															<div class="icon"><img src="../resources/assets/img/wallet.png" class="testimonial-img flex-shrink-0" alt=""></div>
															<h4 class="title" style="color:#fff">지갑</h4>
															</div>
														</li>
														<li><div data-value="가방" class="dropdown-item category-icon dd-category" id="bag" >
															<div class="icon"><img src="../resources/assets/img/bag.png"
                                                   								 class="testimonial-img flex-shrink-0" alt=""></div>
															<h4 id="titleBag" class="title" style="color:#fff">가방</h4>
															</div>
														</li>
														<li><div data-value="핸드폰" class="dropdown-item category-icon dd-category" >
															<div class="icon"><img src="../resources/assets/img/phone.png"
                                                    							class="testimonial-img flex-shrink-0" alt=""></div>
															<h4 class="title" style="color:#fff">핸드폰</h4>
															</div>
														</li>
														<li ><div data-value="의류" class="dropdown-item category-icon dd-category" id="clothes" >
															<div class="icon">
															<img src="../resources/assets/img/clothes.png"
                                                    			class="testimonial-img flex-shrink-0" alt="">
															</div>
															<h4 id="titleClothes" class="title" style="color:#fff">의류</h4>
															</div>
														</li>
														<li><div data-value="기타" class="dropdown-item category-icon dd-category" >
															<div class="icon">
															<img src="../resources/assets/img/others.png"
                                                    			class="testimonial-img flex-shrink-0" alt=""></div>
															<h4 class="title" style="color:#fff">기타</h4>
															</div>
														</li>
														<input type="hidden"  name="lostCategory" id="selectedCategoryInput" value="">
													</div>
												</ul>
											</div>
											
											<!--분실장소-->                    
											<div class="btn-group w-100">
												<button type="button"  
												class="w-100 btn btn-danger dropdown-toggle filter-active category-icon-select" 
												style="border: none;" data-bs-toggle="dropdown" aria-expanded="false">
													<h5 style="display: inline;">어디서 잃어버렸나요?</h5>
												</button>
												<ul class="dropdown-menu ">
													<div class="d-flex">
														<li ><div data-value="버스" class="dropdown-item category-icon dd-place" >
															<div class="icon">
															<img src="../resources/assets/img/bus.png"
                                                    			class="testimonial-img flex-shrink-0" alt=""></div>
															<h4 class="title" style="color:#fff">버스</h4>
														</div></li>
														<li><div data-value="지하철" class="dropdown-item category-icon dd-place" >
															<div class="icon">
															<img src="../resources/assets/img/train.png"
                                                    			class="testimonial-img flex-shrink-0" alt=""></div>
															<h4 class="title" style="color:#fff">지하철</h4>
														</div></li>
														<li><div data-value="택시" class="dropdown-item category-icon dd-place" >
															<div class="icon">
															<img src="../resources/assets/img/taxi.png"
                                                    			class="testimonial-img flex-shrink-0" alt=""></div>
															<h4 class="title" style="color:#fff">택시</h4>
														</div></li>
														<li><div data-value="공항" class="dropdown-item category-icon dd-place">
															<div class="icon">
															<img src="../resources/assets/img/airplane.png"
                                                    			class="testimonial-img flex-shrink-0" alt=""></div>
															<h4 class="title" style="color:#fff">공항</h4>
														</div></li>
														<li><div data-value="기타" class="dropdown-item category-icon dd-place" >
															<div class="icon">
															<img src="../resources/assets/img/restaurant.png"
                                                    			class="testimonial-img flex-shrink-0" alt=""></div>
															<h4 class="title" style="color:#fff">기타</h4>
														</div></li>
														<input type="hidden"  name="lostPlace1" id="selectedPlaceInput" value="">
													</div>
												</ul>
											</div>
										</div>
										
										
										<!--분실지역-->
										<div class="d-flex mt-2 w-100 justify-content-between">
											<div  class="btn-group w-100 ">
												<button id="selectedLocation" type="button" 
													class="btn dropdown-toggle text-center border-dark-subtle" 
													style="background-color: #fff; height : 40px;" data-bs-toggle="dropdown" aria-expanded="false">
													<span id="selectedLocation">분실지역(시 / 도)</span>
												</button>
												<ul class="dropdown-menu w-100">
	                                            	<li class="dropdown-item dd-location" value="서울특별시">서울특별시</li>
													<li class="dropdown-item dd-location" value="부산광역시">부산광역시</li>
													<li class="dropdown-item dd-location" value="대구광역시">대구광역시</li>
													<li class="dropdown-item dd-location" value="인천광역시">인천광역시</li>
													<li class="dropdown-item dd-location" value="광주광역시">광주광역시</li>
													<li class="dropdown-item dd-location" value="대전광역시">대전광역시</li>
													<li class="dropdown-item dd-location" value="울산광역시">울산광역시</li>
													<li class="dropdown-item dd-location" value="세종특별자치시">세종특별자치시</li>
													<li class="dropdown-item dd-location" value="경기도">경기도</li>
													<li class="dropdown-item dd-location" value="강원도">강원도</li>
													<li class="dropdown-item dd-location" value="충청북도">충청북도</li>
													<li class="dropdown-item dd-location" value="충청남도">충청남도</li>
													<li class="dropdown-item dd-location" value="전라북도">전라북도</li>
													<li class="dropdown-item dd-location" value="전라남도">전라남도</li>
													<li class="dropdown-item dd-location" value="경상북도">경상북도</li>
													<li class="dropdown-item dd-location" value="경상남도">경상남도</li>
													<li class="dropdown-item dd-location" value="제주특별자치도">제주특별자치도</li>
													<input type="hidden" name="lostLocation" id="selectedLocationInput" value="">
												</ul>
											</div>
										</div>
										
					
										<!--분실일자-->
										<div id="lost_date" class="d-flex mt-2 w-100">
											<input type="date" name="lostDate1" id="lostDate1" class="p-1 w-100 border border-dark-subtle rounded text-center"
												style="height: 40px;" placeholder="분실일자">
										</div>
					
										<!--분실물 색, 브랜드-->
										<div id="colorBrand" class="d-flex mt-2 w-100" >
											<div class="btn-group w-50 ">
												<button id="selectedColor" type="button" 
													class="btn dropdown-toggle border-dark-subtle"  
													style="background-color: #fff; height: 40px;" data-bs-toggle="dropdown" aria-expanded="true">
													<span >색상</span>
												</button>
												<ul class="dropdown-menu">
													<li class="dropdown-item dd-color" value="흰색">흰색</li>
													<li class="dropdown-item dd-color" value="검정">검정</li>
													<li class="dropdown-item dd-color" value="빨강">빨강</li>
													<li class="dropdown-item dd-color" value="주황">주황</li>
													<li class="dropdown-item dd-color" value="노랑">노랑</li>
													<li class="dropdown-item dd-color" value="초록">초록</li>
													<li class="dropdown-item dd-color" value="파랑">파랑</li>
													<li class="dropdown-item dd-color" value="보라">보라</li>
													<li class="dropdown-item dd-color" value="분홍">분홍</li>
													<li class="dropdown-item dd-color" value="갈색">갈색</li>
													<li class="dropdown-item dd-color" value="기타">기타</li>
													<input type="hidden" name="lostColor" id="selectedColorInput" value="">
												</ul>
											</div>
											
											
											<div id="lostBrand" class="w-50" >
												<input type="text" name="lostBrand1" placeholder="브랜드" class="w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
											</div>
										</div>
										
										<!-- 분실장소지도기록 -->
										<div class="d-flex"  style="margin-top : 10px;">
											<input type="text" id="sample6_address" name="lostMaybe1" value="" placeholder="분실추정되는 주소를 입력하세요" class="w-75 me-1 p-3 border border-dark-subtle rounded" style="height:40px;">
											<input type="button" onclick="sample6_execDaumPostcode()" value="주소 검색" class="w-25">
										</div>
											<input type="hidden" id="sample6_postcode" placeholder="우편번호" class="me-1 p-3 border border-dark-subtle rounded" style="height:40px;">
											<input type="hidden" id="sample6_extraAddress" class="w-25 p-3 border border-dark-subtle rounded" style="height:40px; ">

								
										<!--사진첨부-->
										<input type="file" name="uploadFile" class="mt-2 form-control border-dark-subtle" id="inputGroupFile02" style="margin-top : 10px;">
									</div>
								</div>	
                                    
                                <hr>
                                <div id="mainPart2" class="d-flex justify-content-center flex-column">
                                    <textarea id="summernote" name="lostContent" spellcheck="false"></textarea>
                                </div>
                                <hr>
                                 <div class="btn-wrap">  
	                                <button type="button" class="btn" style="background-color: #4365BC; color:#fff" id="insertBtn" onClick="insertCheck()">등록하기</button>
	                                <button type="reset" class="btn" style="background-color: #818181; color:#fff" id="resetBtn">취소하기</button>
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
		
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
		    function sample6_execDaumPostcode() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수
		
		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }
		
		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		                    document.getElementById("sample6_extraAddress").value = extraAddr;
		                
		                } else {
		                    document.getElementById("sample6_extraAddress").value = '';
		                }
		
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('sample6_postcode').value = data.zonecode;
		                document.getElementById("sample6_address").value = addr;
		                // 커서를 상세주소 필드로 이동한다.
// 		                document.getElementById("sample6_detailAddress").focus();
		            }
		        }).open();
		    }
		</script>
		
        <script>
        
	        <!--첨부파일 미리보기-->
			inputGroupFile02.addEventListener('change', (event) => {
	            const file = event.target.files[0];
	            if (file) {
	                const reader = new FileReader();
	                reader.onload = (e) => {
	                    thumbnail.src = e.target.result;
	                };
	                reader.readAsDataURL(file);
	            }
	        });

			 <!--유효성-->
	         function insertCheck() {
	      		const lostTitle = document.querySelector("#lostTitle");
	      		const lostContent = document.querySelector("#summernote");
	      		const lostCategory = document.querySelector("#selectedCategoryInput");
	      		const lostLocation = document.querySelector("#selectedLocationInput");
	      		const lostColor = document.querySelector("#selectedColorInput");
	      		
	      		if (lostTitle.value.trim() == "") {
	      			alert('제목(분실물)을 입력하세요');
	      			lostTitle.focus();
	      			return false;
	   	        } 
				if (lostCategory.value == "") {
	      			alert('분실물 종류를 선택하세요');
	      			document.querySelector("#selectedCategory").focus;
	      			return false;
				}
	   	        if (lostLocation.value == "") {
	    			alert('분실지역을 선택하세요');
	    			document.querySelector("#selectedLocation").focus;
	    			return false;
	   	        } 
	   	        if (lostColor.value == "") {
	    			alert('분실물 색상을 선택하세요');
	    			document.querySelector("#selectedColor").focus;
	    			return false;
	   	        } 
	   	        if (lostContent.value == "") {
	    			alert('내용을 입력하세요');
	    			lostContent.focus();
	    			return false;
	   	        } 
	  	        document.querySelector("#insertForm").submit();
	      	}
	          
	      
       		<!--종류,장소 선택하기-->
            let icons = document.querySelectorAll(".category-icon");            
            const container = document.querySelector(".category-icon-select");
            icons.forEach(icon => {
                icon.addEventListener("click", function (event) {
                    const container = this.closest(".btn-group");                    
                    container.querySelector(".category-icon-select").innerHTML = this.innerText;
                });
            });  
            
		 	<!-- 드롭다운 값 db전달 -->
		 	//종류
	        $(document).ready(function () {
                $(".dd-category").click(function () {
                    var selectedCategory = $(this).data("value");
                    $("#selectedCategory").text(selectedCategory);
                    $("#selectedCategoryInput").val(selectedCategory);
                });
            });
	        
	        //장소
	        $(document).ready(function () {
                $(".dd-place").click(function () {
                    var selectedPlace = $(this).data("value");
                    $("#selectedPlace").text(selectedPlace);
                    $("#selectedPlaceInput").val(selectedPlace);
                });
            });
	        
	        //지역
            let locations = document.querySelectorAll(".dd-location");
            const selectedLocation = document.querySelector("#selectedLocation");
            locations.forEach(color => {
            	color.addEventListener("click", function (event) {
                    const selectedLocation = this.closest(".btn-group");  
                    selectedLocation.querySelector("#selectedLocation").innerHTML = this.innerText;
                    document.getElementById("selectedLocationInput").value = this.getAttribute("value"); //인풋히든 밸류에 값 넣기 
                });
            });

			 //색상
			let colors = document.querySelectorAll(".dd-color");
            const selectedColor = document.querySelector("#selectedColor");
            colors.forEach(color => {
            	color.addEventListener("click", function (event) {
                    const selectedColor = this.closest(".btn-group");  
                    selectedColor.querySelector("#selectedColor").innerHTML = this.innerText;
                    document.getElementById("selectedColorInput").value = this.getAttribute("value"); //인풋히든 밸류에 값 넣기 
                });
            });
		        

   		  <!-- summernote -->
          $(document).ready(function() {  
              //여기 아래 부분
              $('#summernote').summernote({
//             	  width : 100%;
                  height: 200,                 // 에디터 높이
                  minHeight: 200,             // 최소 높이
                  maxHeight: 200,             // 최대 높이
                  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
                  lang: "ko-KR",				// 한글 설정
                  placeholder: '분실물의 사진과 함께 특징이나 내용물, 동선을 적어주시면 더 빨리 찾을 수 있어요!',	//placeholder 설정
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
            
          
         
          
        </script>
    </body>

</html>