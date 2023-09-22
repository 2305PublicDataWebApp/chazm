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
        <link href="../resources/assets/css/plusA/plusA.css" rel="stylesheet">
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
        
        <section id="title" class="title" style="margin-top:150px;">
            <div class="container position-relative">
                <div class="section-header">
                    <h2>찾음+</h2>
                </div>
            </div>
            <div>
                <h2 style="text-align: center; font-weight: bold;">찾음이 기부해요</h2>
            </div>
        </section>
        <!-- ======= Hero Section ======= -->
        <section id="" class="hero" style="margin-top: 100px;">
            <div class="container position-relative">
                <div class="row gy-5" data-aos="fade-in">
                    <div class="col-lg-6 order-1 order-lg-2 d-flex justify-content-center align-items-center">
                        <img src="../resources/assets/img/plusA.png" class="" alt="" data-aos="zoom-out" data-aos-delay="100">
                    </div>
                    <div
                        class="col-lg-6 order-2 order-lg-2 d-flex flex-column justify-content-center text-center text-lg-start">
                        <h2>주인잃은 의류들</h2>
                        <h2>소외된 이웃의 옷장으로!</h2>
                        <p>찾음과 함께 <br>
                            환경을 보호하고 사랑도 나눠요</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Hero Section -->
        
        <main id="main">
        
            <!-- ======= 함께 만든 변화 ======= -->
            <section id="testimonials" class="testimonials section-bg" style="margin-top:150px;">
                <div class="container" data-aos="fade-up">
        
                    <div class="section-header">
                        <h2>함께 만든 변화</h2>
                    </div>
        
                    <div class="slides-1 swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">
        
                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <div class="row gy-4 justify-content-center">
                                        <div class="col-lg-6 testimonial-wrap" style="background-color: #E8EAEF;">
                                            <div class="col-lg-2 text-center">
                                                <img src="../resources/assets/img/seniorwoman.jpg"
                                                    class="img-fluid testimonial-img" alt="">
                                            </div>
                                            <div class="testimonial-content">
                                                <p>
                                                    <i class="bi bi-quote quote-icon-left"></i>
                                                    찾음를 통해 우리는 많은 기부자분들의 따뜻한 성원을 받았습니다. 
                                                    여러분의 관심과 지원으로 우리 노인들의 삶이 더 풍요로워지고 행복한 순간들을 경험할 수 있게 되었습니다. 
                                                    여러분의 무한한 선의와 도움에 감사드립니다. 이 소중한 지원은 우리 모두에게 큰 힘이 됩니다.
                                                    기부자분들의 선한 마음에 항상 감사드리며, 우리는 항상 여러분을 기억하고 함께 하고자 노력할 것입니다. 다시 한 번 감사 인사를 드립니다.
                                                    <i class="bi bi-quote quote-icon-right"></i>
                                                </p>
                                                <h3>김말자</h3>
                                                <h4>대표 | KH 노인복지회</h4>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->
        
                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <div class="row gy-4 justify-content-center">
                                        <div class="col-lg-6 testimonial-wrap" style="background-color: #E8EAEF;">
                                            <div class="col-lg-2 text-center">
                                                <img src="../resources/assets/img/student.jpg"
                                                    class="img-fluid testimonial-img" alt="">
                                            </div>
                                            <div class="testimonial-content">
                                                <p>
                                                    <i class="bi bi-quote quote-icon-left"></i>
                                                    찾음를 통해 우리는 많은 기부자분들의 따뜻한 성원을 받았습니다. 
                                                    여러분의 관심과 성원 덕분에 우리 아이들은 안전하고 행복한 환경에서 성장할 수 있게 되었습니다. 
                                                    여러분의 큰 사랑에 감사드립니다. 찾음과 함께하는 모든 분들께 우리의 감사를 전합니다. 
                                                    여러분의 선한 마음으로 인해 우리 아이들의 미래는 더 밝아질 것입니다. 
                                                    앞으로도 지속적인 관심과 사랑 부탁드립니다. 
                                                    <i class="bi bi-quote quote-icon-right"></i>
                                                </p>
                                                <h3>이순재</h3>
                                                <h4>대표 | KH 아동복지회</h4>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
        
                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <div class="row gy-4 justify-content-center">
                                        <div class="col-lg-6 testimonial-wrap" style="background-color: #E8EAEF;">
                                            <div class="col-lg-2 text-center">
                                                <img src="../resources/assets/img/grandmother.jpg"
                                                    class="img-fluid testimonial-img" alt="">
                                            </div>
                                            <div class="testimonial-content">
                                                <p>
                                                    <i class="bi bi-quote quote-icon-left"></i>
                                                    찾음를 통해 우리는 많은 기부자분들의 따뜻한 성원을 받았습니다. 
                                                    여러분의 관심과 지원으로 우리 아이들의 삶이 더 풍요로워지고 행복한 순간들을 경험할 수 있게 되었습니다. 
                                                    여러분의 무한한 선의와 도움에 감사드립니다. 이 소중한 지원은 우리 모두에게 큰 힘이 됩니다.
                                                    기부자분들의 선한 마음에 항상 감사드리며, 우리는 항상 여러분을 기억하고 함께 하고자 노력할 것입니다. 다시 한 번 감사 인사를 드립니다.
                                                    <i class="bi bi-quote quote-icon-right"></i>
                                                </p>
                                                <h3>나문희</h3>
                                                <h4>대표 | KH 시니어 IT 센터</h4>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
        
        
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
        
                </div>
            </section><!-- End Testimonials Section -->

            <section id="table-area" class="tableArea section-bg" style="margin-top:150px;">
                <div class="container" data-aos="fade-up">
                    
                    <div class="section-header">
                        <h2>이렇게 나눴어요!</h2>
                    </div>
                    <div>
                        <table class="table accordion accordion-flush text-center" id="plusAlist" data-aos="fade-up" data-aos-delay="100">
                            <colgroup>
                                <col width="10%" />
                                <col width="55%" />
                                <col width="10%" />
                                <col width="15%" />
                                <col width="10%" />
                            </colgroup>
                            <tr>
                                <th>#</th>
                                <th>제목</th>
                                <th>등록자</th>
                                <th>등록일</th>
                                <th> </th>
                            </tr>
                            <c:forEach items="${pAList }" var="plusABoard">
	                            <tr>
	                                <td>${plusABoard.plusANo }</td>
	                                <td>
	                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#plusA-content-${plusABoard.plusANo }">
	                                        ${plusABoard.plusATitle }
	                                    </button>
	                                </td>
	                                <td><c:if test="${plusABoard.plusAWriter eq 'admin' }">관리자</c:if></td>
	                                <td>${plusABoard.plusACreateDate }</td>
	                                <td><input class="form-check-input" type="radio" name="checkBoard" id="" value=${plusABoard.plusANo }></td>
	                            </tr> 
	                            <tr id="plusA-content-${plusABoard.plusANo }" class="accordion-collapse collapse" data-bs-parent="#plusAlist" data-aos="fade-up">
	                                <td colspan="4" class="accordion-body">
	                                	<div>
		                                    ${plusABoard.plusAContent }
	                                	</div>
	                                </td>
	                            </tr>
                            </c:forEach>
                        </table>
                           <div class="mt-5 d-flex justify-content-center">
		                    <nav aria-label="Page navigation example r">
		                        <ul class="pagination">
		                            <c:url var="prevUrl" value="/plusABoard/list.do">
		                            	<c:param name="page" value="${pInfo.startNavi - 1 }"></c:param>
		                            </c:url>
		                            <li class="page-item">
			                            	<a class="page-link" href="${prevUrl }"><i class="bi bi-chevron-left"></i></a>
			                        </li>
		                            <c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }" var="p">
		                            	<c:url var="pageUrl" value="/plusABoard/list.do">
		                            		<c:param name="page" value="${p }"></c:param>
		                            	</c:url>
			                            <li class="page-item page-number"><a class="page-link" href="${pageUrl }">${p }</a></li>
		                            </c:forEach>
		                            <c:url var="nextUrl" value="/plusABoard/list.do">
		                            	<c:param name="page" value="${pInfo.endNavi + 1 }"></c:param>
		                            </c:url>
		                            <li class="page-item"><a class="page-link" href="${nextUrl }"><i class="bi bi-chevron-right"></i></a></li>
		                        </ul>
		                    </nav>
		                </div>
		                <c:if test="${memberGrade == 3 }">
	                        <div class="btnArea justify-content-center text-center">
	                            <button class="writeBtn btn" onclick="showInsertForm();">글쓰기</button>
	                            <button class="modifyBtn btn" onclick="showUpdateForm();">수정</button>
	                            <button class="deleteBtn btn" onclick="deletePlusABoard();">삭제</button>
	                        </div>		                
		                </c:if>
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

        <!-- Template Main JS File -->
        <script src="../resources/assets/js/main.js"></script>
        <script type="text/javascript">
        	function showInsertForm() {
        		location.href="/plusABoard/insert.do";
        	}
        	function showUpdateForm() {
        		let checked = document.getElementsByName("checkBoard");
        		let checkedNo;
        		let isChecked = false;
       			for(let i = 0; i < checked.length; i++){
       				if(checked[i].checked){
       					isChecked = true;
       				}
       			}
 				if(!isChecked) {
 					alert("수정할 글을 선택해주세요.");
 				}else {
	        		for(let i = 0; i < checked.length; i++){
	        			if(checked[i].checked){
	        				checkedNo = checked[i].value;
	        			}
	        		} 					
	        		location.href = "/plusABoard/update.do?plusANo=" + checkedNo;
 				}       			
        	}
        	function deletePlusABoard() {
        		let checked = document.getElementsByName("checkBoard");
        		let checkedNo;
        		let isChecked = false;
       			for(let i = 0; i < checked.length; i++){
       				if(checked[i].checked){
       					isChecked = true;
       				}
       			}
 				if(!isChecked) {
 					alert("삭제할 글을 선택해주세요.");
 				}else {
	        		for(let i = 0; i < checked.length; i++){
	        			if(checked[i].checked){
	        				checkedNo = checked[i].value;
	        			}
	        		}
	        		if(confirm("정말 삭제하시겠습니까?")){
		        		location.href = "/plusABoard/delete.do?plusANo=" + checkedNo;	        			
	        		}
 				}
 				
        	}
            // page active
            var urlParams = new URLSearchParams(window.location.search);
    		var pageUrl = urlParams.get("page");
    		
        	window.addEventListener('load', function() {
                var scrollPosition = sessionStorage.getItem('scrollPosition');
                if(pageUrl !== null) {
	                if (scrollPosition !== null) {
	                    window.scrollTo(0, parseInt(scrollPosition));
	                    sessionStorage.removeItem('scrollPosition'); // 스크롤 위치 정보를 삭제합니다.
	                }                	
                }
            });

            // 페이지 이동할 때 스크롤 위치 저장
            window.addEventListener('beforeunload', function() {
                var currentScrollPosition = window.scrollY;
                sessionStorage.setItem('scrollPosition', currentScrollPosition);
            });
            

    		// 모든 li 요소를 가져옵니다.
    		var liElements = document.querySelectorAll('.page-number');
    		// 각 li 요소에 클릭 이벤트 리스너를 추가하고, orderBy 값을 비교하여 active 클래스를 추가합니다.
    		liElements.forEach(function(li) {
    			var link = li.querySelector('a');
    			var linkPage = link.innerText;
    			if(pageUrl === linkPage) {
    				console.log(linkPage);
    				link.style.backgroundColor = "var(--color-primary)";
    				link.style.color = "#fff";
    			}
    		})
        </script>
    </body>

</html>