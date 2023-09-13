<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>찾음 : 디테일</title>
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
        <link rel="stylesheet" href="../resources/assets/css/lost/lostBoardDetail.css">
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
        <main id="main" class="sections-bg">
            <section id="mainLayer1" class="">
                <div class="section-header ">
                    <h2>찾아주세요</h2>
                </div>
            </section>
                
            <section id="blog" class="blog ">
                <div class="container" data-aos="fade-up">
                    <div class="row g-5">
                        <div class="col-lg-12">
                            <div class="sidebar">
                                <div class="sidebar-item title-wrap">
                                    <div class="sidebar-item like">
                                        <!-- <button class="heart-button">
                                            <i class="bi-suit-heart like-img"></i>
                                            <i class="bi-suit-heart-fill hover-image"></i>
                                        </button> -->
                                        <div class="lost-title"><strong>애플워치 찾아요ㅠㅠsksksks니니니ㅏ나난나</strong></div>
                                        <button class="heart-button">
                                            <i class="bi-suit-heart like-img"></i>
                                            <i class="bi-suit-heart-fill hover-image"></i>
                                        </button>
                                    </div>
                                    <div class="write-info meta-top">
                                        <ul>
                                            <li class="d-flex align-items-center"><i class="bi bi-person"></i>관리자</li>
                                            <li class="d-flex align-items-center"><i class="bi bi-clock"></i><time datetime="2020-01-01">Jan 1, 2022</time>
                                            </li>
                                            <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i>12 Comments</li>
                                        </ul>
                                    </div>
                                </div>

                                <div id="mainPart1" class="d-flex">
                                    <div id="pictureWrap" class="">
                                        <div id="picture" >
                                            <img src="../resources/assets/img/noImage.jpg" alt="">
                                        </div>
                                    </div>
                                    
                                    <div id="infoWrap">
                                        <div class="d-flex">
                                            <div id="categoryBox" class="d-flex text-center">
                                                <div data-filter="*" class="filter-active category-icon">
                                                    <a href="" ><div class="icon"><i class="bi bi-easel" style="color:#fff"></i></div>
                                                    <h4 class="title" style="color:#fff">의류</h4></a>
                                                </div>
                                                <div data-filter="*" class="filter-active category-icon">
                                                    <a href="" class=" "><div class="icon"><i class="bi bi-taxi-front" style="color:#fff"></i></div>
                                                    <h4 class="title" style="color:#fff">택시</h4></a>
                                                </div>
                                            </div>
                                            <div class="m-2 w-50 " >
                                                <div id="lostColor" class=" ">색상 : </div>
                                                <div id="lostBrand" class=" ">브랜드 : </div>
                                            </div>

                                        </div>
                                        
                                        <!-- <div id="lostLocation" class="">
                                            <div class="d-flex m-2 ">
                                    
                                                <div id="lostCounty" class=" me-3  ">
                                                    <input type="text" name="lostCounty" placeholder="시/도" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                                                </div>
                    
                                                <div id="lostCity" class="btn-group me-3">
                                                    <input type="text" name="" placeholder="시 / 군 / 구" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                                                </div>
        
                                                <div id="lostVillage" class="btn-group">
                                                    <input type="text" name="" placeholder="읍 / 면 / 동 " class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                                                </div>
                                            </div>
                                        </div> -->
        
                                        <div id="lostDate" class="d-flex m-2 w-100" >
                                            <div class="w-50">
                                                <input type="date" name="lostDate"  class="p-1 w-100 border border-dark-subtle rounded-start text-center" style="height: 40px;"> 
                                            </div>
                                            <div class="w-auto ms-2 me-2 d-flex align-items-center">
                                                <h5 class="text-black " > ~ </h5>
                                            </div>
                                            <div class="w-50">
                                                <input type="date" name="" class="p-1 w-100 border border-dark-subtle rounded-end text-center" style="height: 40px;">
                                            </div>
                                        </div>
        
                                        <!-- <div class="d-flex justify-content-between m-2 w-100 " >
                                            <div class=" me-2 w-50">
                                                <input type="text" name="" placeholder="색상" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                                            </div>
                                            <div class="w-50 ">
                                                <input type="text" name="" placeholder="브랜드" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                                            </div>
                                        </div> -->

                                        <div class="map">

                                            지도들어갈자리
                                        </div>
                                    </div>
                                </div>

                                <div id="mainPart2" class="">
                                    <div id="textarea" placeholder="내용" spellcheck="false"></div>
                                </div>
            
                                <div id="mainPart3" class="d-flex">
                                    <div id="hashtagContainer" class="hashtag-container w-75"></div>
                                    <div class="btn-wrap w-25">
                                        <button id="updateBtn" type="button" class="btn " style="background-color: #4365BC; color:#fff">수정하기</button>
                                        <button id="deleteBtn" type="button" class="btn " style="background-color: gray; color:#fff">삭제하기</button>
                                    </div>
                                </div>

        

<!-- *******************************댓글창************************************* -->
                            <div class="comments">
                                <h4 class="comments-count">댓글</h4>
                                <hr>
                                <!--댓글 입력 폼-->
                                <div class="reply-form">
                                    <form action="" method="">
                                        <div class="row">
                                            <div class="col input-area align-items-center">
                                                <textarea name="comment" class="form-control"
                                                    placeholder="응원의 댓글을 남겨주세요."></textarea>
                                                <button id="insertReplyBtn" type="submit" class="btn btn-primary"><i class="bi bi-send"></i></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <!-- 댓글목록-->
                                <div id="comment-1" class="comment reply-border">
                                    <div class="d-flex">
                                        <div class="comment-img"><img src="assets/img/blog/comments-1.jpg" alt=""></div>
                                        <div>
                                            <h5><a href="">Georgia Reader</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
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

                                <div id="comment-2" class="comment reply-border">
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
                                                <div class="comment-img"><img src="assets/img/blog/comments-4.jpg" alt=""></div>
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
                                        </div>
                                        <!-- End comment reply #2-->

                                    </div><!-- End comment reply #1-->
                                </div><!-- End comment #2-->
                            </div>
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

        <!-- JS파일경로-->
        <!-- <script src="./resources/js/lostBoardDetail.js"></script> -->


    </body>

</html>