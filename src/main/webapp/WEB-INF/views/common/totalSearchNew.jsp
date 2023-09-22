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
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

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
	                             			<img src="../resources/fuploadFiles/${totalFind.findFilerename }" class="img-fluid"  alt="#" style="width : 306px; height : 306px;">
	                             		</a>
									</c:if>
									<c:if test="${empty totalFind.findFilerename }"> <!-- 첨부이미지가 없을때 -->
										<a href="${detailFindUrl}" >
											<img src="../resources/assets/img/noImage.jpg" class="img-fluid" alt="#" style="width : 306px; height : 306px;">
										</a>
									</c:if>
	                                <div class="portfolio-info" style="width:306px; height:150px; font-size: 15px;">
	                                    <div>
	                                        <h4><a href="${detailFindUrl}" title="More Details">${totalFind.findTitle}</a></h4>
	                                        <p>${totalFind.fCreateDate}</p>
	                                    </div>
	                                    <div class="col donationBottom d-flex" style="justify-content: space-between;">
	                                    	<c:if test="${totalFind.findCategory ne null }">
		                                        <strong>종류 : ${totalFind.findCategory}</strong>	                                    	
	                                    	</c:if>
	                                    	<c:if test="${totalFind.findColor ne null }">
		                                        <strong>색상 : ${totalFind.findColor}</strong>	                                    	
	                                    	</c:if>
	                                    	<c:if test="${totalFind.findBrand ne null }">
		                                        <strong>브랜드 : ${totalFind.findBrand}</strong>	                                    	
	                                    	</c:if>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </c:forEach>

                       
                    </div>
                    <!-- End Portfolio Container -->
                    <!-- 페이지 네비게이션 -->
	                <div class="mt-5 d-flex justify-content-center">
	                    <nav aria-label="Page navigation example r">
	                        <ul class="pagination">
		                        <c:if test="${fPInfo.startNavi != 1}">
									<c:url var="prevUrl" value="/totalSearch/search.do" >  
										<c:param name="page" value="${fPInfo.startNavi -1 }"></c:param>
										<c:param name="totalSearchKeyword" value="${totalSearchKeyword}"></c:param>		 								
									</c:url>
									<li class="page-item"><a href="${prevUrl}" class="page-link"><i class="bi bi-chevron-left"></i></a></li>
								</c:if>
	                            
	                            <c:forEach begin="${fPInfo.startNavi}" end="${fPInfo.endNavi}"  var="p">
									<c:url var="pageUrl" value="/totalSearch/search.do" >  
										<c:param name="page" value="${p}"></c:param> 	
										<c:param name="totalSearchKeyword" value="${totalSearchKeyword}"></c:param>	
									</c:url>
									<c:choose>
					                   <c:when test="${p == fPInfo.currentPage}">
					                       <li class="page-item active" ><a href="${pageUrl}" class="page-link" style="background-color: #4365BC">${p}</a></li>
					                   </c:when>
					                   <c:otherwise>
					                       <li class="page-item"><a href="${pageUrl}" class="page-link">${p}</a></li>
					                   </c:otherwise>
					                </c:choose>
								</c:forEach>
	
		                        <c:if test="${fPInfo.endNavi != fPInfo.naviTotalCount}">
									<c:url var="nextUrl" value="/totalSearch/search.do" >  
										<c:param name="page" value="${lPInfo.endNavi + 1}"></c:param> 								
										<c:param name="totalSearchKeyword" value="${totalSearchKeyword}"></c:param>	
									</c:url>
									<li class="page-item"><a href="${nextUrl}" class="page-link"><i class="bi bi-chevron-right"></i></a></li>
								</c:if>
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
	                             			<img src="../resources/luploadFiles/${totalLost.lostFilerename}" class="img-fluid"  alt="#" style="width : 306px; height : 306px;">
	                             		</a>
									</c:if>
									<c:if test="${empty totalLost.lostFilerename }"> <!-- 첨부이미지가 없을때 -->
										<a href="${detailLostUrl}" >
											<img src="../resources/assets/img/noImage.jpg" class="img-fluid" alt="#" style="width : 306px; height : 306px;">
										</a>
									</c:if>
	                                <div class="portfolio-info" style="width:306px; height:150px; font-size: 15px;">
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
								<c:url var="prevUrl" value="/totalSearch/search.do" >  
									<c:param name="page" value="${lPInfo.startNavi -1 }"></c:param>
									<c:param name="totalSearchKeyword" value="${totalSearchKeyword}"></c:param>		 								
								</c:url>
								<li class="page-item"><a href="${prevUrl}" class="page-link"><i class="bi bi-chevron-left"></i></a></li>
							</c:if>
                            
                            <c:forEach begin="${lPInfo.startNavi}" end="${lPInfo.endNavi}"  var="p">
								<c:url var="pageUrl" value="/totalSearch/search.do" >  
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
								<c:url var="nextUrl" value="/totalSearch/search.do" >  
									<c:param name="page" value="${lPInfo.endNavi + 1}"></c:param> 								
									<c:param name="totalSearchKeyword" value="${totalSearchKeyword}"></c:param>	
								</c:url>
								<li class="page-item"><a href="${nextUrl}" class="page-link"><i class="bi bi-chevron-right"></i></a></li>
							</c:if>
                        </ul>
                    </nav>
                </div>
                
            </div>
        </section>
    </main><!-- End #main -->

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
</body>

</html>