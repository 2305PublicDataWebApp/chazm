<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
        <link rel="stylesheet" href="../resources/assets/css/lost/searchLostBoard.css">
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
            <section id="mainTop" class="">
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
                                <button id="insertLostBtn" onclick="insertLostBoard();">분실물 등록</button>
<!--                                  -->
                            </div>
                        </div>
                    </div>      
                </div>
            </section>
            
 			<!-- ======= Portfolio Section ======= -->
            <section id="portfolio" class="portfolio ">
                <div class="container " data-aos="fade-up">

                    <div class="portfolio-isotope" data-portfolio-filter="*" data-portfolio-layout="masonry"
                        data-portfolio-sort="original-order" data-aos="fade-up" data-aos-delay="100">
                        
                        <!-- 상단서치박스 -->
                        <div id="searchBox" class="align-self-center m-auto mb-5 p-3">
                            <div id="categoryBox" class="portfolio-flters w-50 text-center">
	                            <ul class="portfolio-flters ">
	                                <li data-filter=".filter-지갑">
	                                    <div class="category-icon dd-category">
	                                        <a href="javascript:void(0)" ><div class="icon">
	                                        <img src="../resources/assets/img/wallet.png" class="testimonial-img flex-shrink-0" alt=""></div>
	                                        <h4 class="title">지갑</h4></a>
	                                    </div>
	                                </li>
	                                <li data-filter=".filter-가방">
	                                    <div class="category-icon dd-category">
	                                        <a href="javascript:void(0)" class=" "><div class="icon">
	                                        <img src="../resources/assets/img/bag.png"
                                                    class="testimonial-img flex-shrink-0" alt=""></div>
	                                        <h4 class="title">가방</h4></a>
	                                    </div>
	                                </li>
	                                <li data-filter=".filter-핸드폰">
	                                    <div class="category-icon dd-category">
	                                        <a href="javascript:void(0)" class=" "><div class="icon">
	                                        <img src="../resources/assets/img/phone.png"
                                                    class="testimonial-img flex-shrink-0" alt=""></div>
	                                        <h4 class="title">핸드폰</h4></a>
	                                    </div>
	                                </li>
	                                <li data-filter=".filter-의류" class="filter-active">
	                                    <div class="category-icon dd-category">
	                                        <a href="javascript:void(0)" ><div class="icon">
	                                        <img src="../resources/assets/img/clothes.png"
                                                    class="testimonial-img flex-shrink-0" alt=""></div>
	                                        <h4 class="title">의류</h4></a>
	                                    </div>
	                                </li>
	                                <li data-filter=".filter-기타">
	                                    <div class="category-icon dd-category">
	                                        <a href="javascript:void(0)" ><div class="icon">
	                                        <img src="../resources/assets/img/others.png"
                                                    class="testimonial-img flex-shrink-0" alt=""></div>
	                                        <h4 class="title">기타</h4></a>
	                                    </div>
	                                </li>
	        
	                                <li data-filter=".filter-버스">
	                                    <div class="category-icon dd-place">
	                                        <a href="javascript:void(0)" class=" "><div class="icon">
	                                        <img src="../resources/assets/img/bus.png"
                                                    class="testimonial-img flex-shrink-0" alt=""></div>
	                                        <h4 class="title">버스</h4></a>
	                                    </div>
	                                </li>
	                                <li data-filter=".filter-지하철">
	                                    <div class="category-icon dd-place">
	                                        <a href="javascript:void(0)" ><div class="icon">
	                                        <img src="../resources/assets/img/train.png"
                                                    class="testimonial-img flex-shrink-0" alt=""></div>
	                                        <h4 class="title">지하철</h4></a>
	                                    </div>
	                                </li>
	                                <li data-filter=".filter-택시">
	                                    <div class="category-icon dd-place">
	                                        <a href="javascript:void(0)" class=" "><div class="icon">
	                                        <img src="../resources/assets/img/taxi.png"
                                                    class="testimonial-img flex-shrink-0" alt=""></div>
	                                        <h4 class="title">택시</h4></a>
	                                    </div>
	                                </li>
	                                <li data-filter=".filter-공항">
	                                    <div class="category-icon dd-place">
	                                        <a href="javascript:void(0)" ><div class="icon">
	                                        <img src="../resources/assets/img/airplane.png"
                                                    class="testimonial-img flex-shrink-0" alt=""></div>
	                                        <h4 class="title">공항</h4></a>
	                                    </div>
	                                </li> 
	                                <li data-filter=".filter-기타">
	                                    <div class="category-icon dd-place">
	                                        <a href="javascript:void(0)" class=" "><div class="icon">
	                                        <img src="../resources/assets/img/restaurant.png"
                                                    class="testimonial-img flex-shrink-0" alt=""></div>
	                                        <h4 class="title">기타</h4></a>
	                                    </div>
	                                </li>
	                            </ul>
                           	</div>
                            
                            <div id="searchContent" class="w-50 m-2 me-5">
                            <form action="/lostBoard/search.do" method="get">
                                <div id="searchWrap" class="d-flex m-2 w-100 ">
                                    <select name="lostSearchCondition" class="w-25 border-end border-dark-subtle rounded-start text-center" style="height: 40px;">
                                        <option value="lostTitle" <c:if test="${lostSearchCondition eq 'lostTitle'}">selected</c:if>>제목</option>
                                        <option value="lostContent" <c:if test="${lostSearchCondition eq 'lostContent'}">selected</c:if>>내용</option>
                                    </select>
                                    <div class="d-flex w-75">
                                        <input type="text" name="lostSearchKeyword" class="w-100 border border-dark-subtle rounded-end " style="height: 40px;" value="${lostSearchKeyword }">
                                    </div>
                                </div>
                                
                                <div id="lostDate" class="d-flex m-2 w-100" >
                                    <div class="w-50">
                                        <input type="date" name="lostStartDate"  class="p-1 w-100 border border-dark-subtle rounded-start text-center" style="height: 40px;"> 
                                    </div>
                                    <div class="w-auto ms-2 me-2 d-flex align-items-center">
                                        <h5 class="text-white " > ~ </h5>
                                    </div>
                                    <div class="w-50">
                                        <input type="date" name="lostEndDate" class="p-1 w-100 border border-dark-subtle rounded-end text-center" style="height: 40px;">
                                    </div>
                                </div>
            
                                <div class="d-flex m-2 w-100 justify-content-between">  
                                    <div id="lostCounty" class="btn-group w-100 ">
                                        <button type="button" class="btn dropdown-toggle text-center border-dark-subtle "  style="background-color: #fff; " data-bs-toggle="dropdown" aria-expanded="false">
                                        <span id="selectedLocation">${lostLocation }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </button>
                                        <ul class="dropdown-menu w-75 text-center">
                                            <li class="dropdown-item dd-location" value="서울특별시">서울특별시</a></li>
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
											<input type="hidden" name="lostLocation" id="selectedLocationInput" value="${lostLocation }">
                                        </ul>
                                    </div>
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
                               
            
                                <div id="colorBrand" class="d-flex justify-content-between m-2 w-100 " >
                                
                                    <div class="btn-group me-2 w-50 ">
                                        <button type="button" class="w-100  btn dropdown-toggle border-dark-subtle"  style="background-color: #fff;" data-bs-toggle="dropdown" aria-expanded="true">
                                        <span id="selectedColor">${lostColor }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </button>
                                        <ul class="dropdown-menu">
	                                        <li class="dropdown-item dd-color" value="흰색">흰색</li>
											<li class="dropdown-item dd-color" value="검정">검정</li>
											<li class="dropdown-item dd-color" value="빨강">빨강</li>
											<li class="dropdown-item dd-color" value="노랑">노랑</li>
											<li class="dropdown-item dd-color" value="초록">초록</li>
											<li class="dropdown-item dd-color" value="파랑">파랑</li>
											<li class="dropdown-item dd-color" value="보라">보라</li>
											<input type="hidden" name="lostColor" id="selectedColorInput" value="${lostColor }">
                                        </ul>
                                    </div>
        
                                    <div id="lostBrand" class="w-50 ">
                                        <input type="text" name="lostBrand" value="${lostBrand }" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                                    </div>
                                </div>
        
                                <div class="d-flex position-relative justify-content-end  w-100" >
<!--                                     <div class="blank w-75"></div> -->
                                    <div id="searchBtn" class=" d-flex " >
                                        <input type="submit" value="검색" class="border rounded">
                                    </div>
                                </div>
                            </form>
                            </div>
                        </div>
                        <!-- 상단 서치박스 -->
                    </div>
                    
                    <div class="row gy-4 portfolio-container">

                        <c:if test="${searchLostList eq null}">
			               	<div class="no-lost">
			              	<span>${msg}</span>
			               	</div>
              			</c:if>

						<c:forEach var="searchLostOne" items="${searchLostList}">
	                         <div class="col-xl-4 col-md-6 portfolio-item filter-${searchLostOne.lostCategory} filter-${searchLostOne.lostPlace}">
	                             <div class="portfolio-wrap">
	                             	<c:url var="detailUrl" value="/lostBoard/detail.do">
										  <c:param name="lostNo" value="${searchLostOne.lostNo}"></c:param>
									</c:url>
									<c:if test="${!empty searchLostOne.lostFilerename }">  <!-- 첨부이미지가 있을때 -->
	                             		<a href="${detailUrl}" >
	                             			<img src="../resources/luploadFiles/${searchLostOne.lostFilerename}" class="img-fluid"  style="width:450px; height:350px;" alt="#">
	                             		</a>
									</c:if>
									<c:if test="${empty searchLostOne.lostFilerename }"> <!-- 첨부이미지가 없을때 -->
										<a href="${detailUrl}" >
											<img src="../resources/assets/img/noImage.jpg" class="img-fluid" style="width:450px; height:350px;" alt="#">
										</a>
									</c:if>
	                                  
	                                 <div class="portfolio-info">
	                                    <div class="d-flex justify-content-between">
	                                    <h4><a href="${detailUrl}" title="More Details">${lostOne.lostTitle}</a></h4>
	                                    <div class="d-flex ">
		                                    <i class="bi bi-chat-dots commentIcon"></i> ${lostOne.totalReplyCount}
	                                 	</div>
	                                 </div>
	                                    <p>${searchLostOne.lCreateDate}</p><p>${searchLostOne.lostWriter}</p>
	                                 </div>
	                             </div>
	                         </div>
	                         <!-- End Portfolio Item -->
                   		</c:forEach>
                    </div>
                    <!-- End Portfolio Container -->
               </div>
               
               
				<!-- 페이지 네비게이션 -->
                <div class="mt-5 d-flex justify-content-center">
                    <nav aria-label="Page navigation example r">
                        <ul class="pagination">
	                        <c:if test="${pInfo.startNavi != 1}">
								<c:url var="prevUrl" value="/lostBoard/search.do" >  
									<c:param name="page" value="${pInfo.startNavi -1 }"></c:param>
									<c:param name="lostSearchCondition" value="${lostSearchCondition}"></c:param>
									<c:param name="lostSearchKeyword" value="${lostSearchKeyword}"></c:param>
									<c:param name="lostBrand" value="${lostBrand}"></c:param>		 								
								</c:url>
								<li class="page-item"><a href="${prevUrl}" class="page-link">Prev</a></li>
							</c:if>
                            
                            <c:forEach begin="${pInfo.startNavi}" end="${pInfo.endNavi}"  var="p">
								<c:url var="pageUrl" value="/lostBoard/search.do" >  
									<c:param name="page" value="${p}"></c:param> 	
									<c:param name="lostSearchCondition" value="${lostSearchCondition}"></c:param>
									<c:param name="lostSearchKeyword" value="${lostSearchKeyword}"></c:param>				
									<c:param name="lostBrand" value="${lostBrand}"></c:param>
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

	                        <c:if test="${pInfo.endNavi != pInfo.naviTotalCount}">
								<c:url var="nextUrl" value="/lostBoard/search.do" >  
									<c:param name="page" value="${pInfo.endNavi + 1}"></c:param> 								
									<c:param name="lostSearchCondition" value="${lostSearchCondition}"></c:param>
									<c:param name="lostSearchKeyword" value="${lostSearchKeyword}"></c:param>	
									<c:param name="lostBrand" value="${lostBrand}"></c:param>
								</c:url>
								<li class="page-item"><a href="${nextUrl}" class="page-link">Next</a></li>
							</c:if>
                        </ul>
                    </nav>
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

        <!-- JS파일경로-->
        <!-- <script src="./resources/js/lostBoard.js"></script> -->
 
 
 
        
        <script>
 
   		
		<!--로그인 한 경우에만 글쓰기 진입 가능하도록  -->
		//분실물등록 페이지이동
			function insertLostBoard (memberId){
				if(memberId != null && memberId != ""){
					location.href = "/lostBoard/insert.do"
				}else {
					alert("로그인해야 글 등록이 가능합니다")
				}
			}

			//드롭다운 밸류값 삽입+DB전달
	        //지역
            let locations = document.querySelectorAll(".dd-location");
            const selectedLocation = document.querySelector("#selectedLocation");
            locations.forEach(location => {
            	location.addEventListener("click", function (event) {
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
		        
            //종류,장소
            let icons = document.querySelectorAll(".category-icon");            
            const container = document.querySelector(".category-icon-select");
            icons.forEach(icon => {
                icon.addEventListener("click", function (event) {
                	// Remove the 'selected' class from all icons
                    icons.forEach(otherIcon => {
                        otherIcon.classList.remove("selected");
                    });
                	
                 // Add the 'selected' class to the clicked icon
                    this.classList.add("selected");
                 
                 
                    const container = this.closest(".btn-group");                    
                    container.querySelector(".category-icon-select").innerHTML = this.innerText;
                });
            });  
            
			
		

        </script>
    </body>

</html>