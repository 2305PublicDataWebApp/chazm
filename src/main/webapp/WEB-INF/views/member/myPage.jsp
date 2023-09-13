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
    <link rel="stylesheet" href="../resources/assets/css/common/header.css">
    <link rel="stylesheet" href="../resources/assets/css/common/footer.css">
    <link href="../resources/assets/css/member/myPage.css" rel="stylesheet">

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

        <!-- ======= 기부 상세조회 ======= -->
        <section id="blog" class="blog">
            <div class="container" data-aos="fade-up">
                <div class="row g-5">
                    <div class="col-lg-4">
                        <div class="sidebar">
                            <div class="sidebar-item donation-info">
                                <div class="cur-val">
                                    <strong>Khuser01</strong>
                                </div>
                                <div class="donationBottom row">
                                    <span>일용자님</span>
                                    <p>3,000P</p>
                                </div>
                                <div class="donation-btn">
                                    <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal"
                                        data-bs-whatever="@updatemember">회원정보 수정</button>
                                </div>
                                <div>

                                </div>
                            </div><!-- End sidebar search formn-->
                        </div><!-- End Blog Sidebar -->
                    </div>
                    <div class="col-lg-8">
                        <article class="blog-details">
                            <a id="about" name="about"></a>
                            <h2 class="title">
                                회원정보
                            </h2>
                            <div class="meta-top">
                            </div><!-- End meta top -->
                            <!-- 우측 내용 -->
                            <div class="content">
                                <div class="card">
                                    <div class="row g-0">
                                        <div class="col-md-4 gradient-custom text-center text-white"
                                            style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
                                            <img src="../resources/assets/img/member/IDN_MEMBER.png" alt="member"
                                                class="img-fluid my-5" style="width: 80px;" />
                                            <h5>개인회원</h5>
                                            <i class="far fa-edit mb-5"></i>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body p-4">
                                                <div class="row pt-1">
                                                    <div class="col-6 mb-3">
                                                        <h6>이름</h6>
                                                        <p class="text-muted">일용자</p>
                                                    </div>
                                                    <div class="col-6 mb-3">
                                                        <h6>핸드폰번호</h6>
                                                        <p class="text-muted">123-456-789</p>
                                                    </div>
                                                </div>
                                                <div>
                                                    <hr class="mt-0 mb-4">
                                                    <h6>업체명</h6>
                                                    <p class="text-muted">KH정보교육원</p>
                                                </div>

                                                <div class="row pt-1">
                                                    <div class="col-6 mb-3">
                                                        <h6>주소</h6>
                                                        <p class="text-muted">서울시 중구</p>
                                                    </div>
                                                    <div class="col-6 mb-3">
                                                        <h6>이메일</h6>
                                                        <p class="text-muted">khuser01@gmail.com</p>
                                                    </div>
                                                </div>
                                                <div class="d-flex justify-content-start">
                                                    <a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                                                    <a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
                                                    <a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="donation-btn">
                                    <button type="button" class="btn btn-primary"
                                        style="width: 100px; height: 30px; font-size: 6px; float: right;">회원 탈퇴</button>
                                </div>
                                <br>
                            </div><!-- End post content -->
                        </article><!-- End blog post -->

                        <article class="blog-details">
                            <h2 class="title">
                                내가 쓴 글
                            </h2>
                            <div class="stats-item d-flex align-items-center">
                                <div class="container">
                                    <div class="row">
                                        <div class="four col-md-3">
                                            <div class="counter-box colored">
                                                <i class="bi bi-pencil-fill"></i>
                                                <span data-purecounter-start="0" data-purecounter-end="15"
                                                    data-purecounter-duration="1" class="purecounter counter"></span>
                                                <p>작성한 글</p>
                                            </div>
                                        </div>
                                        <div class="four col-md-3">
                                            <div class="counter-box">
                                                <i class="bi bi-chat-dots"></i>
                                                <span data-purecounter-start="0" data-purecounter-end="5"
                                                    data-purecounter-duration="1" class="purecounter counter"></span>
                                                <p>분실물 게시판</p>
                                            </div>
                                        </div>
                                        <!-- 기업일경우 -->
                                        <div class="four col-md-3">
                                            <div class="counter-box">
                                                <i class="bi bi-box2-heart"></i>
                                                <span data-purecounter-start="0" data-purecounter-end="10"
                                                    data-purecounter-duration="1" class="purecounter counter"></span>
                                                <p>습득물 게시판</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="blog-details">
                            <h2 class="title">
                                기부 내역
                            </h2>
                            <div class="container">
                                <div class="row">
                                    <div class="four col-md-3">
                                        <div class="counter-box colored">
                                            <i class="bi bi-piggy-bank"></i>
                                            <span data-purecounter-start="0" data-purecounter-end="15000"
                                                data-purecounter-duration="1" class="purecounter counter"></span>
                                            <p>총 기부 금액</p>
                                        </div>
                                    </div>
                                    <div class="four col-md-3">
                                        <div class="counter-box">
                                            <i class="bi bi-envelope-paper-heart"></i>
                                            <span data-purecounter-start="0" data-purecounter-end="10"
                                                data-purecounter-duration="1" class="purecounter counter"></span>
                                            <p>총 기부 횟수</p>
                                        </div>
                                    </div>
                                    <!-- 기업일경우 -->
                                    <div class="four col-md-3">
                                        <div class="counter-box">
                                            <i class="bi bi-bag-heart"></i>
                                            <span data-purecounter-start="0" data-purecounter-end="1000"
                                                data-purecounter-duration="1" class="purecounter counter"></span>
                                            <p>최근 기부 금액</p>
                                        </div>
                                    </div>
                                </div>
                            </div>                            
                        </article>

                        <article class="blog-details">
                            <h2 class="title">
                                포인트 내역
                            </h2>
                            <div class="container">
                                <div class="row">
                                    <div class="four col-md-3">
                                        <div class="counter-box colored">
                                            <i class="bi bi-piggy-bank"></i>
                                            <span data-purecounter-start="0" data-purecounter-end="15000"
                                                data-purecounter-duration="1" class="purecounter counter"></span>
                                            <p>보유 포인트</p>
                                        </div>
                                    </div>
                                    <div class="four col-md-3">
                                        <div class="counter-box">
                                            <i class="bi bi-envelope-paper-heart"></i>
                                            <span data-purecounter-start="0" data-purecounter-end="30000"
                                                data-purecounter-duration="1" class="purecounter counter"></span>
                                            <p>누적 포인트</p>
                                        </div>
                                    </div>
                                    <!-- 기업일경우 -->
                                    <div class="four col-md-3">
                                        <div class="counter-box">
                                            <i class="bi bi-bag-heart"></i>
                                            <span data-purecounter-start="0" data-purecounter-end="1000"
                                                data-purecounter-duration="1" class="purecounter counter"></span>
                                            <p>사용한 포인트</p>
                                        </div>
                                    </div>
                                </div>
                            </div>                                          
                        </article>
                    </div>

                </div>
        </section><!-- End Blog Details Section -->
    </main>

    <!-- 회원정보 수정 모달 -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">회원 정보 수정</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- <p>수정 하고 싶은 항목을 선택하세요</p>
                    <button class="btn btn-primary">비밀번호 변경</button>
                    <button class="btn btn-primary">핸드폰번호 변경</button>
                    <button class="btn btn-primary">주소 변경</button>
                    <br><br>
                    <button class="btn btn-primary">이메일 변경</button> -->
                    <!-- 기업일 경우 -->
                    <!-- <button class="btn btn-primary">담당자 이름 변경</button>
                    <button class="btn btn-primary">기업명 변경</button> -->
                    <form class="sign-form">
                        <div class="mb-3">
                            <label for="username" class="form-label">아이디</label>
                            <input type="text" class="form-control" id="username" name="username" required
                                placeholder="아이디를 입력해 주세요">
                            <div class="invalid-feedback">
                                아이디가 유효하지 않습니다.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">비밀번호</label>
                            <input type="password" class="form-control" id="password" name="password" required
                                placeholder="비밀번호를 입력해 주세요">
                            <div class="invalid-feedback">
                                비밀번호가 유효하지 않습니다.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="confirmPassword" class="form-label">비밀번호 확인</label>
                            <input type="password" class="form-control" id="confirmPassword" name="confirmPassword"
                                required placeholder="비밀번호를 한번 더 입력해 주세요">
                            <div class="invalid-feedback">
                                비밀번호가 일치하지 않습니다.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="name" class="form-label">이름</label>
                            <input type="text" class="form-control" id="name" name="name" required
                                placeholder="이름을 입력해 주세요">
                        </div>
                        <div class="mb-3 custom-input">
                            <label for="phone" class="form-label">핸드폰번호</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="phone" name="phone" required
                                    placeholder="핸드폰 번호를 입력해 주세요">
                                <button class="btn btn-outline-secondary" type="button" id="verifyPhone">인증</button>
                            </div>
                        </div>
                        <!-- 이메일 입력 폼 -->
                        <div class="mb-3 custom-input">
                            <label for="email" class="form-label">이메일</label>
                            <div class="input-group">
                                <input type="email" class="form-control" id="email" name="email" required
                                    placeholder="이메일을 입력해 주세요">
                                <button class="btn btn-outline-secondary" type="button" id="verifyEmail">인증</button>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="postalCode" class="form-label">주소</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="postalCode" name="postalCode" required
                                    placeholder="우편 번호">
                                <button class="btn btn-outline-secondary" type="button" id="searchPostalCode">우편번호
                                    검색</button>
                            </div>
                            <input type="text" class="form-control" id="address" name="address" required
                                placeholder="주소(우편 번호 검색 시 자동 입력됩니다.)">
                            <input type="text" class="form-control" id="detailAddress" name="detailAddress"
                                placeholder="상세주소를 입력해 주세요">
                        </div>
                    </form>
                    <!--2안  -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary">수정완료</button>
                </div>
            </div>
        </div>
    </div>
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