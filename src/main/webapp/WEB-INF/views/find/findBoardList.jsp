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
		
		<!-- JQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        
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
                            <div><input type="button" value="습득물 등록" onClick="location.href='/findBoard/insert.do'"></div>
                        </div>
                    </div>
                </div>
            </section>
    
            <!-- ======= 습득물 검색 ======= -->
            <form action="/findBoard/search.do" method="get">
	            <div id="searchBox" class="section align-self-center m-auto mb-5 p-3">
	                <div id="category_box" class="w-50 text-center">
	                
	                	<input type="hidden" name="findCategory" id="selectedCategoryInput" value="">
	                    <div data-filter="*" class="filter-active category_icon findCategory" data-value="지갑">
	                        <a href="javascript:void(0)"><div class="icon"><img src="../resources/assets/img/wallet.png"
	   	                                                    style="width : 40px;
	                                                        height : 40px;"></div>
	                        <h4 class="title">지갑</h4></a>
	                    </div>
	                    <div data-filter="*" class="filter-active category_icon findCategory" data-value="가방">
	                        <a href="javascript:void(0)"><div class="icon"><img src="../resources/assets/img/bag.png"
	   	                                                    style="width : 40px;
	                                                        height : 40px;"></div>
	                        <h4 class="title">가방</h4></a>
	                    </div>
	                    <div data-filter="*" class="filter-active category_icon findCategory" data-value="핸드폰">
	                        <a href="javascript:void(0)"><div class="icon"><img src="../resources/assets/img/phone.png"
	   	                                                    style="width : 40px;
	                                                        height : 40px;"></div>
	                        <h4 class="title">핸드폰</h4></a>
	                    </div>
	                    <div data-filter="*" class="filter-active category_icon findCategory" data-value="의류">
	                        <a href="javascript:void(0)"><div class="icon"><img src="../resources/assets/img/clothes.png"
	   	                                                    style="width : 40px;
	                                                        height : 40px;"></div>
	                        <h4 class="title">의류</h4></a>
	                    </div>
	                    <div data-filter="*" class="filter-active category_icon findCategory" data-value="기타">
	                        <a href="javascript:void(0)"><div class="icon"><img src="../resources/assets/img/others.png"
	   	                                                    style="width : 40px;
	                                                        height : 40px;"></div>
	                        <h4 class="title">기타</h4></a>
	                    </div>
	                    
	                    <input type="hidden" name="findPlace" id="selectedPlaceInput" value="">
	                    <div data-filter="*" class="filter-active category_icon findPlace" data-value="버스">
	                        <a href="javascript:void(0)"><div class="icon"><img src="../resources/assets/img/bus.png"
    	                                                    style="width : 40px;
	                                                        height : 40px;"></div>
	                        <h4 class="title">버스</h4></a>
	                    </div>
	                    <div data-filter="*" class="filter-active category_icon findPlace" data-value="지하철">
	                        <a href="javascript:void(0)"><div class="icon"><img src="../resources/assets/img/train.png"
    	                                                    style="width : 40px;
	                                                        height : 40px;"></i></div>
	                        <h4 class="title">지하철</h4></a>
	                    </div>
	                    <div data-filter="*" class="filter-active category_icon findPlace" data-value="택시">
	                        <a href="javascript:void(0)"><div class="icon"><img src="../resources/assets/img/taxi.png"
    	                                                    style="width : 40px;
	                                                        height : 40px;"></div>
	                        <h4 class="title">택시</h4></a>
	                    </div>
	                    <div data-filter="*" class="filter-active category_icon findPlace" data-value="공항">
	                        <a href="javascript:void(0)"><div class="icon"><img src="../resources/assets/img/airplane.png"
    	                                                    style="width : 40px;
	                                                        height : 40px;"></div>
	                        <h4 class="title">공항</h4></a>
	                    </div>
	                    <div data-filter="*" class="filter-active category_icon findPlace" data-value="기타">
	                        <a href="javascript:void(0)"><div class="icon"><img src="../resources/assets/img/restaurant.png"
    	                                                    style="width : 40px;
	                                                        height : 40px;"></div>
	                        <h4 class="title">기타</h4></a>
	                    </div>
	                </div>
	    
	    
	                <div id="search_content" class="w-50 m-2 me-5">
	    
	                    <div id="search_wrap" class="d-flex m-2 w-100 ">
	                        <select name="findSearchCondition" class="w-25 border-end border-dark-subtle rounded-start text-center" style="height: 40px;">
	                            <option value="title">제목</option>
	                            <option value="content">내용</option>
	                        </select>
	                        <div class="d-flex w-75">
	                            <input type="text" name="findSearchKeyword" class="w-100 border border-dark-subtle rounded-end " style="height: 40px;">
	                        </div>
	                    </div>
	                    
	                    <div id="find_date" class="d-flex m-2 w-100" >
	                        <div class="w-50">
	                            <input type="date" name="findDateStart" id="findDateStart" class="p-1 w-100 border border-dark-subtle rounded-start text-center" style="height: 40px;"> 
	                        </div>
	                        <div class="w-auto ms-2 me-2 d-flex align-items-center">
	                            <h5 class="text-white " > ~ </h5>
	                        </div>
	                        <div class="w-50">
	                            <input type="date" name="findDateEnd" id="findDateEnd" class="p-1 w-100 border border-dark-subtle rounded-end text-center" style="height: 40px;">
	                        </div>
	                    </div>
	    
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
	    					<input type="hidden" name="findLocation" id="selectedLocationInput" value="">
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
                                    <li><a class="dropdown-item dd-color" data-value="주황">주황</a></li>
                                    <li><a class="dropdown-item dd-color" data-value="노랑">노랑</a></li>
                                    <li><a class="dropdown-item dd-color" data-value="초록">초록</a></li>
                                    <li><a class="dropdown-item dd-color" data-value="파랑">파랑</a></li>
                                    <li><a class="dropdown-item dd-color" data-value="보라">보라</a></li>
                                    <li><a class="dropdown-item dd-color" data-value="분홍">분홍</a></li>
                                    <li><a class="dropdown-item dd-color" data-value="갈색">갈색</a></li>
                                    <li><a class="dropdown-item dd-color" data-value="기타">기타</a></li>
                                </ul>
	                        </div>
	    					<input type="hidden" name="findColor" id="selectedColorInput" value="">
	                        <div id="find_brand" class="w-50 ">
	                            <input type="text" name="findBrand" placeholder="브랜드" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
	                        </div>
	                    </div>
	    
	                    <div class="d-flex position-relative">
	                        <div class="blank w-75"></div>
	                        <div id="searchBtn" class=" d-flex justify-content-end w-25 " >
	                            <button type="submit" name="search" id="search" class="border rounded" 
	                            style="background-color: aliceblue; color: #4365BC; font-weight:bold; width: 150px; height:50px;"
	                            onClick="return dateCheck()">검색</button>
	                        </div>
	                    </div>
	                </div>
	            </div>
            </form>
    
    
            <!-- ======= 습득물 목록 ======= -->
            <section id="findList" class="portfolio sections-bg">
                <div class="container" data-aos="fade-up">
    
                    <div class="portfolio-isotope" data-portfolio-filter="*" data-portfolio-layout="masonry"
                        data-portfolio-sort="original-order" data-aos="fade-up" data-aos-delay="100">
                   	</div> 
    
                        <div class="row gy-4 portfolio-container">
                            <c:forEach var="findBoard" items="${ fBList }" varStatus="i">
	                           <div class="col-xl-4 col-md-6 portfolio-item filter-books">
	                                <div class="portfolio-wrap">
	                                    <a href="/findBoard/detail.do?findNo=${findBoard.findNo }" >
	                                        <img src="../resources/fuploadFiles/${findBoard.findFilerename }" 
	                                        onerror="this.src='../resources/assets/img/no-image.jpg'" 
	                                        class="img-fluid" style="width:450px; height:350px;"></a>
	                                    <div class="portfolio-info">
	                                        <h4><a href="/findBoard/detail.do?findNo=${findBoard.findNo }" title="More Details">${findBoard.findTitle }</a></h4>
	                                        <p>${findBoard.memberName }</p>
<%-- 	                                        <p>${findBoard.fCreateDate }</p> --%>
	                                    </div>
	                                </div>
	                            </div>
                            </c:forEach>
                        </div><!-- End Portfolio Container -->
    
                    </div>
    
                    <div class="mt-5 d-flex justify-content-center">
                        <nav aria-label="Page navigation exampler">
                            <ul class="pagination">
	                        	<c:if test="${pInfo.startNavi ne '1' }">
	                        		<li class="page-item"><a class="page-link" href="/findBoard/list.do?page=${pInfo.startNavi-1 }" class="first"><i class="bi bi-chevron-left"></i></a></li>
			                    </c:if>
			                    
			                    
			                    <c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }" var="p">
									<c:url var="pageUrl" value="/findBoard/list.do">
										<c:param name="page" value="${p }"></c:param>
									</c:url>
									<c:choose>
					                    <c:when test="${p == pInfo.currentPage}">
					                        <li class="page-item active" ><a href="${pageUrl}" class="page-link" style="background-color: #4365BC">${p}</a></li>
					                    </c:when>
					                    <c:otherwise>
					                        <li class="page-item"><a href="${pageUrl}" class="page-link">${p}</a></li>
					                    </c:otherwise>
					                </c:choose>
								</c:forEach>
								
								
								
								<c:if test="${pInfo.endNavi ne pInfo.naviTotalCount }">
									<li class="page-item"><a class="page-link" href="/findBoard/list.do?page=${pInfo.endNavi+1 }" class="last"><i class="bi bi-chevron-right"></i></a></li>
								</c:if>
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
        
        <script>
	        <!-- 습득일자 오늘 날짜 이후로는 선택되지 않도록 하기  -->
	    	var date = new Date(); 
			var year = date.getFullYear(); 
			var month = ('0' + (date.getMonth() + 1)).slice(-2);
			var day = ('0' + date.getDate()).slice(-2);
			var today = year + '-' + month  + '-' + day; 
			document.getElementById("findDateStart").setAttribute("max", today);
			document.getElementById("findDateEnd").setAttribute("max", today);
			<!-- 습득일자 유효성 체크 -->
			function dateCheck() {
                const findDateStart = document.querySelector("#findDateStart").value;
                const findDateEnd = document.querySelector("#findDateEnd").value;
                if ((findDateStart === "" && findDateEnd != "") || (findDateStart != "" && findDateEnd === "")) {
                    alert("시작일자와 끝일자를 모두 선택하거나 비워주세요.");
                    return false;
                } else if(findDateStart > findDateEnd) {
                	alert("시작일자는 끝일자보다 이전 날짜여야 합니다.");
                    return false;
                } else {
                    return true;
                }
			};
	        <!-- 드롭다운 값 입력 -->
	        $(document).ready(function () {
	            $(".dd-location").click(function () {
	                var selectedLocation = $(this).data("value");
	                $("#selectedLocation").text(selectedLocation);
	                $("#selectedLocationInput").val(selectedLocation);
	            });
	        });
	        $(document).ready(function () {
	            $(".dd-color").click(function () {
	                var selectedColor = $(this).data("value");
	                $("#selectedColor").text(selectedColor);
	                $("#selectedColorInput").val(selectedColor);
	            });
	        });
	        <!-- 종류, 장소 클릭 시 그 div의 backgroud-color변경과 input hidden에 값 담기, -->
	        <!-- 재클릭 시 background-color 원래대로 돌리고 input 값 빼기 -->
	        $(document).ready(function () {
	            $(".findCategory").click(function () {
	                var selectedCategory = $(this).data("value");
	                var $selectedElement = $(this);
	                if(!$selectedElement.hasClass("selected")) {
	                	$(".findCategory").removeClass("selected").css("background-color", "aliceblue");
	                    $selectedElement.addClass("selected").css("background-color", "#ffd94d");
	                    $("#selectedCategoryInput").val(selectedCategory);
	                    console.log($("#selectedCategoryInput").val());
	                } else {
	                	$selectedElement.removeClass("selected").css("background-color", "aliceblue");
	                    $("#selectedCategoryInput").val(""); 
	                    console.log($("#selectedCategoryInput").val());
	                }
	            });
	        });
	        $(document).ready(function () {
	            $(".findPlace").click(function () {
	                var selectedPlace = $(this).data("value");
	                var $selectedElement = $(this);
	                if(!$selectedElement.hasClass("selected")) {
	                	$(".findPlace").removeClass("selected").css("background-color", "aliceblue");
	                	$selectedElement.addClass("selected").css("background-color", "#ffd94d");
		                $("#selectedPlaceInput").val(selectedPlace);
		                console.log($("#selectedPlaceInput").val());
	                } else {
	                	$selectedElement.removeClass("selected").css("background-color", "aliceblue");
	                    $("#selectedPlaceInput").val(""); 
		                console.log($("#selectedPlaceInput").val());
	                }
	            });
	        });
        </script>
        
    </body>

</html>