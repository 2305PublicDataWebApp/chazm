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
        <link rel="stylesheet" href="../resources/assets/css/find/findDetail.css">
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
            <section id="title" class="sections-bg title" style="padding-top:100px;">
                <div class="container position-relative">
                    <div class="section-header">
                        <h2>주인을 찾아요</h2>
                        <p>습득물의 상세 내용을 확인하세요!</p>
                    </div>
                </div>
            </section>
            <!-- ======= 습득물 상세 조회 ======= -->
            <section id="blog" class="blog">
                <div class="container" data-aos="fade-up">
                    <div class="row g-5">
                        <div class="col-lg-12">
                            <article class="blog-details">
                                <div class="post-img">
                                    <img src="assets/img/blog/blog-1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="d-flex justify-content-between">
                                    <h2 class="title">
                                        ${findBoard.findTitle } 
                                    </h2>
                                    <div class="sidebar-item like">
                                        <button class="heart-button">
                                            <i class="bi-suit-heart like-img"></i>
                                            <i class="bi-suit-heart-fill hover-image"></i>
                                        </button>
                                    </div>
                                </div>


                                <div class="meta-top">
                                    <ul>
                                        <li class="d-flex align-items-center"><i class="bi bi-person"></i>${findBoard.findWriter }</li>
                                        <li class="d-flex align-items-center"><i class="bi bi-clock"></i><time datetime="2020-01-01">${findBoard.fCreateDate }</time>
                                        </li>
                                        <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i>12 Comments</li>
                                    </ul>
                                </div><!-- End meta top -->

                                <div class="content">
                                    <div class="content-img">
                                         <img src="../resources/fuploadFiles/${findBoard.findFilerename }">	
                                    </div>
                                    <div class="infoWrap">
                                        <div class="d-flex justify-content-start">
                                            <div id="category_box" class="d-flex justify-content-center text-center">
                                                <div class="filter-active category_icon">
                                                    <div class="icon"> <img src="../resources/assets/img/wallet.png"
                                                        style="width : 40px;
                                                        height : 40px;"></div>
                                                    <h5 class="icon-title">${findBoard.findCategory }</h5>
                                                </div>
                                                <div class="filter-active category_icon">
                                                    <div class="icon"><img src="../resources/assets/img/taxi.png"
                                                        style="width : 40px;
                                                        height : 40px;"></div>
                                                    <h5 class="icon-title">${findBoard.findPlace }</h5>
                                                </div>
                                            </div>
                                            <div class="find-info">
                                                <ul class="find-info">
                                                    <li><p class="find01">색상</p><p class="find02">${findBoard.findColor }</p></li>
                                                    <c:if test="${findBoard.findBrand ne null}">
	                                                    <li><p class="find01">브랜드</p><p class="find02">${findBoard.findBrand }</p></li>
                                                    </c:if>
                                                    <c:if test="${findBoard.findBrand eq null}">
	                                                    <li><p class="find01">브랜드</p><p class="find02">X</p></li>
                                                    </c:if>
                                                </ul>
                                            </div>
                                        </div>
                                        <div id="find_location" style="background-color: #f8f8f8; width:100%; height:200px;">
                                            지도 공간 
                                        </div>
                                        <div class="find-info">
                                            <ul class="find-info">
                                                <li><p class="find01">보관 장소</p><p class="find02">${findBoard.getPlace }</p></li>
                                                <li><p class="find01">습득일자</p><p class="find02">${findBoard.findDate }</p></li>
	                                                <li><p class="find01">유실물 상태</p><p class="find02">보관중</p></li>
<%--                                                 <c:if test="${findBoard.fStateYn == 'Y'}"}> --%>
<%--                                                 </c:if> --%>
<%--                                                 <c:if test="${findBoard.fStateYn == 'N'}"> --%>
<!-- 	                                                <li><p class="find01">유실물 상태</p><p class="find02">인계완료</p></li> -->
<%--                                                 </c:if> --%>
                                            </ul>
                                        </div>
                                        <!-- <div id="find_location" style="background-color: blue; width:100%; height:50px;">
                                            보관 장소
                                        </div>
                                        <div id="find_location" style="background-color: rgb(230, 230, 230); width:100%; height:50px;">
                                            <p>습득일 : 2023-09-11</p>
                                        </div>
                                        <div id="find_location">
                                            <p>유실물상태 : <b style="color:#4365BC;">보관중</b></p>
                                        </div> -->
                                    </div>
                                </div><!-- End post content -->
                                <hr>
                                <p class="" style="padding: 30px;">택시에서 잃어버린 빨간 스트랩 시계의 주인을 찾습니다. </p>
                                <hr>
                                <div id="buttons" class="d-flex justify-content-between">
                                    <div>
                                        <button type="button" class="btn" style="background-color: gold; color:#fff;">인계완료</button>
                                    </div>
                                    <div>
                                        <button type="button" class="btn" style="background-color: #4365BC; color:#fff" onclick="showUpdateFindBoardForm();">수정하기</button>
                                        <button type="button" class="btn" style="background-color: #818181; color:#fff" onclick="checkDelete();">삭제하기</button>
                                    </div>
                                </div>
                                <!-- 댓글창 -->
                            <div class="comments">

                                <h4 class="comments-count">댓글</h4>
                                <hr>
                                <div class="reply-form">
                                    <form action="" method="">
                                        <div class="row">
                                            <div class="col input-area align-items-center">
                                                <textarea name="comment" class="form-control"
                                                    placeholder="응원의 댓글을 남겨주세요."></textarea>
                                                    <button type="submit" class="btn btn-primary"><i class="bi bi-send"></i></button>
                                            </div>
                                        </div>

                                    </form>

                                </div>
                                <div id="comment-1" class="comment">
                                    <div class="d-flex">
                                        <div class="comment-img"><img src="assets/img/blog/comments-1.jpg" alt=""></div>
                                        <div>
                                            <h5><a href="">Georgia Reader</a> <a href="#" class="reply"><i
                                                        class="bi bi-reply-fill"></i> Reply</a></h5>
                                            <time datetime="2020-01-01">01 Jan,2022</time>
                                            <p>
                                                Et rerum totam nisi. Molestiae vel quam dolorum vel voluptatem et et. Est ad
                                                aut sapiente quis molestiae est qui cum soluta.
                                                Vero aut rerum vel. Rerum quos laboriosam placeat ex qui. Sint qui facilis
                                                et.
                                            </p>
                                        </div>
                                    </div>
                                </div><!-- End comment #1 -->

                                <div id="comment-2" class="comment">
                                    <div class="d-flex">
                                        <div class="comment-img"><img src="assets/img/blog/comments-2.jpg" alt=""></div>
                                        <div>
                                            <h5><a href="">Aron Alvarado</a> <a href="#" class="reply"><i
                                                        class="bi bi-reply-fill"></i> Reply</a></h5>
                                            <time datetime="2020-01-01">01 Jan,2022</time>
                                            <p>
                                                Ipsam tempora sequi voluptatem quis sapiente non. Autem itaque eveniet
                                                saepe. Officiis illo ut beatae.
                                            </p>
                                        </div>
                                    </div>

                                    <div id="comment-reply-1" class="comment comment-reply">
                                        <div class="d-flex">
                                            <div class="comment-img"><img src="assets/img/blog/comments-3.jpg" alt=""></div>
                                            <div>
                                                <h5><a href="">Lynda Small</a> <a href="#" class="reply"><i
                                                            class="bi bi-reply-fill"></i> Reply</a></h5>
                                                <time datetime="2020-01-01">01 Jan,2022</time>
                                                <p>
                                                    Enim ipsa eum fugiat fuga repellat. Commodi quo quo dicta. Est ullam
                                                    aspernatur ut vitae quia mollitia id non. Qui ad quas nostrum rerum sed
                                                    necessitatibus aut est. Eum officiis sed repellat maxime vero nisi
                                                    natus. Amet nesciunt nesciunt qui illum omnis est et dolor recusandae.

                                                    Recusandae sit ad aut impedit et. Ipsa labore dolor impedit et natus in
                                                    porro aut. Magnam qui cum. Illo similique occaecati nihil modi eligendi.
                                                    Pariatur distinctio labore omnis incidunt et illum. Expedita et
                                                    dignissimos distinctio laborum minima fugiat.

                                                    Libero corporis qui. Nam illo odio beatae enim ducimus. Harum reiciendis
                                                    error dolorum non autem quisquam vero rerum neque.
                                                </p>
                                            </div>
                                        </div>

                                        <div id="comment-reply-2" class="comment comment-reply">
                                            <div class="d-flex">
                                                <div class="comment-img"><img src="assets/img/blog/comments-4.jpg" alt="">
                                                </div>
                                                <div>
                                                    <h5><a href="">Sianna Ramsay</a> <a href="#" class="reply"><i
                                                                class="bi bi-reply-fill"></i> Reply</a></h5>
                                                    <time datetime="2020-01-01">01 Jan,2022</time>
                                                    <p>
                                                        Et dignissimos impedit nulla et quo distinctio ex nemo. Omnis quia
                                                        dolores cupiditate et. Ut unde qui eligendi sapiente omnis ullam.
                                                        Placeat porro est commodi est officiis voluptas repellat quisquam
                                                        possimus. Perferendis id consectetur necessitatibus.
                                                    </p>
                                                </div>
                                            </div>

                                        </div><!-- End comment reply #2-->

                                    </div><!-- End comment reply #1-->

                                </div><!-- End comment #2-->

                                <div id="comment-3" class="comment">
                                    <div class="d-flex">
                                        <div class="comment-img"><img src="assets/img/blog/comments-5.jpg" alt=""></div>
                                        <div>
                                            <h5><a href="">Nolan Davidson</a> <a href="#" class="reply"><i
                                                        class="bi bi-reply-fill"></i> Reply</a></h5>
                                            <time datetime="2020-01-01">01 Jan,2022</time>
                                            <p>
                                                Distinctio nesciunt rerum reprehenderit sed. Iste omnis eius repellendus
                                                quia nihil ut accusantium tempore. Nesciunt expedita id dolor exercitationem
                                                aspernatur aut quam ut. Voluptatem est accusamus iste at.
                                                Non aut et et esse qui sit modi neque. Exercitationem et eos aspernatur. Ea
                                                est consequuntur officia beatae ea aut eos soluta. Non qui dolorum
                                                voluptatibus et optio veniam. Quam officia sit nostrum dolorem.
                                            </p>
                                        </div>
                                    </div>

                                </div><!-- End comment #3 -->

                                <div id="comment-4" class="comment">
                                    <div class="d-flex">
                                        <div class="comment-img"><img src="assets/img/blog/comments-6.jpg" alt=""></div>
                                        <div>
                                            <h5>
                                                <a href="">Kay Duggan</a> 
                                                <a href="#" class="reply">
                                                    <i class="bi bi-eraser-fill"></i> 수정
                                                </a>
                                                <a href="#" class="reply">
                                                    <i class="bi bi-x-circle"></i>삭제
                                                </a>
                                            </h5>
                                            <time datetime="2020-01-01">01 Jan,2022</time>
                                            <p>
                                                Dolorem atque aut. Omnis doloremque blanditiis quia eum porro quis ut velit
                                                tempore. Cumque sed quia ut maxime. Est ad aut cum. Ut exercitationem non in
                                                fugiat.
                                            </p>
                                        </div>
                                    </div>
                                </div><!-- End comment #4 -->
                            </div><!-- End blog comments -->
                            </article><!-- End blog post -->
                            
                            
    
                        </div>
                        
                            
        
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
        <script>
        	function showUpdateFindBoardForm() {
        		const findNo = '${findBoard.findNo}';
        		location.href = "/findBoard/update.do?findNo=" + findNo;
        	}
	        function checkDelete() {
				const findNo = '${findBoard.findNo}';
				if(confirm("삭제하시겠습니까?")){
					location.href = "/findBoard/delete.do?findNo=" + findNo;
				}
			}
        </script>
    </body>

</html>