<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <link href="../resources/assets/css/plusM/plusMdetail.css" rel="stylesheet">
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
            <h2 style="text-align: center; font-weight: bold;">포인트로 기부해요</h2>
        </div>
    </section>

    <main id="main">
        <canvas id="canvas"></canvas>
        <!-- ======= 기부 상세조회 ======= -->
        <section id="blog" class="blog">
            <div class="container" data-aos="fade-up">

                <div class="row g-5">

                    <div class="col-lg-8">

                        <article class="blog-details">

                            <h2 class="title">
                                ${plusMBoard.plusMTitle }
                            </h2>

                            <div class="meta-top">
                                <ul>
                                    <li class="d-flex align-items-center"><i class="bi bi-person"></i>${plusMBoard.plusMWriter }</li>
                                    <li class="d-flex align-items-center"><i class="bi bi-clock"></i><time
                                            datetime="2020-01-01">${plusMBoard.plusMCreateDate }</time>
                                    </li>
                                    <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i>12 Comments
                                    </li>
                                </ul>
                            </div><!-- End meta top -->

                            <div class="content">
                            	<div>
	                            	<img src="${plusMBoard.plusMFilepath }" alt="${plusMBoard.plusMFilename }" style="width:70%;">                            	
                            	</div>
                            	<div style="margin-top:30px;">
	                                ${plusMBoard.plusMContent }                            	
                            	</div>
                            </div><!-- End post content -->

                        </article><!-- End blog post -->

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
                                            <button type="submit" class="btn btn-primary"><i
                                                    class="bi bi-send"></i></button>
                                        </div>
                                    </div>

                                </form>

                            </div>
                            <div id="comment-1" class="comment">
                                <div class="d-flex">
                                    <div class="comment-img"></div>
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
                                    <div class="comment-img"></div>
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
                                        <div class="comment-img"></div>
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
                                            <div class="comment-img">
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
                                    <div class="comment-img"></div>
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
                                    <div class="comment-img"></div>
                                    <div>
                                        <h5>
                                            <a href="">Kay Duggan</a>
                                            <a href="#" class="reply">
                                                <i class="bi bi-eraser-fill"></i> 수정
                                            </a>
                                            <a href="#" class="reply">
                                                <i class="bi bi-x-circle"></i> 삭제
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

                    </div>
                    <!-- 기부 정보 -->
                    <div class="col-lg-4">

                        <div class="sidebar">
                            <div class="sidebar-item like">
                                <button class="heart-button">
                                    <i class="bi-suit-heart like-img"></i>
                                    <i class="bi-suit-heart-fill hover-image"></i>
                                </button>
                            </div>
                            <div class="sidebar-item donation-info">
                                <div class="cur-val">
                                	<fmt:parseNumber var="percent" value="${(plusMBoard.plusMCurAmount / plusMBoard.plusMGoalAmount) * 100 }" integerOnly="true" />
                                    <strong>${percent }%</strong>
                                </div>
                                <div class="graphBar">
                                    <span class="donationBar" style="width:${(plusMBoard.plusMCurAmount / plusMBoard.plusMGoalAmount) * 100 }%;"></span>
                                </div>
                                <div class="donationBottom row">
                                    <span>${plusMBoard.plusMStartDate } ~ ${plusMBoard.plusMEndDate }</span>
                                    <p>${plusMBoard.plusMCurAmount }P</p>
                                    <span>목표금액 ${plusMBoard.plusMGoalAmount }P</span>
                                </div>
                                <div class="donation-btn">
                                    <button class="btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#donationModal">포인트
                                        기부하기</button>
                                </div>
                                <div class="dnt-place">
                                    <span>모금 단체</span>
                                    <p>${plusMBoard.plusMDntPlace }</p>
                                </div>
                                <div class="row admin-btn-area">
                                    <button class="col admin-btn">수정</button>
                                    <button class="col admin-btn">삭제</button>
                                </div>
                            </div><!-- End sidebar search formn-->

                        </div><!-- End Blog Sidebar -->

                    </div>
                </div>

            </div>
        </section><!-- End Blog Details Section -->
        <!-- Modal -->
        <div class="modal fade" id="donationModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h5 class="modal-title" id="exampleModalLabel">포인트 기부하기</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="" method="">
                        <div class="modal-body justify-content-center">
                            <div class="mb-3">
                                <span>보유 포인트 : </span>
                                <span>1000P</span>
                            </div>
                            <div class="mb-3">
                                <input type="number" id="inputPoint" placeholder="기부할 포인트를 입력하세요" style="width:80%;">
                                <label for="inputPoint"> P </label>
                            </div>
                            <div class="mb-3">
                                <input type="checkbox" name="" id="dntAgree" required>
                                <label for="dntAgree">기부한 포인트는 취소할 수 없습니다.</label>
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <button type="button" id="close" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                            <button type="button" id="dntBtn" class="btn btn-primary">기부하기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
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
    <script src="../resources/assets/js/confetti_v2.js"></script>

</body>

</html>