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
                
            <section id="blog" class="blog ">
                <div class="container" data-aos="fade-up">
                    <div class="row g-5">
                        <div class="col-lg-12">
                            <div class="sidebar">

                                <div class="sidebar-item title d-flex justify-content-center">
                                    <input type="text" name="lostTitle" class="lost-title" placeholder="제목을 입력하세요">
                                    <div class="heart-button"></div>
                                </div>
                                    

                                <div id="mainPart1" class="d-flex">
                                    <div id="pictureWrap" class="">
                                        <div id="picture" >
                                            <img src="../resources/assets/img/noImage.jpg" alt="">
                                        </div>
                                        <div class="input-group mt-1" >
                                            <input type="file" class="form-control" id="inputGroupFile02" >
                                        </div>
                                    </div>
                                    
                                    <div id="infoWrap">
                                        <div class="btn-group">
                                            <button type="button" class=" btn btn-danger dropdown-toggle filter-active category-icon-select" style="border: none; color:#fff;" data-bs-toggle="dropdown" aria-expanded="false">
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

                                        <div class="btn-group">
                                            <button type="button" class="btn btn-danger dropdown-toggle filter-active category-icon-select" style="border: none;" data-bs-toggle="dropdown" aria-expanded="false">
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
        
                                        <div class="d-flex justify-content-between m-2 w-100 " >
                                            <div class=" me-2 w-50">
                                                <input type="text" name="" placeholder="색상" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                                            </div>
                                            <div class="w-50 ">
                                                <input type="text" name="" placeholder="브랜드" class=" w-100 p-3 border border-dark-subtle rounded" style="height:40px;">
                                            </div>
                                        </div>

                                        <div class="map">지도 </div>
                                    </div>
                                </div>

                                <div id="mainPart2" class="d-flex justify-content-center flex-column w-175">
                                    <textarea id="summernote" name="editordata" spellcheck="false"></textarea>
                                    <!-- <input type="text" id="hashtagInput" placeholder="키워드 입력 후 엔터 키 누르기">
                                    <div id="hashtagContainer" class="hashtag-container"></div> -->
                                </div>
            
                                <div id="mainPart3" class="d-flex justify-content-center">
                                    <input class="btn btn-lg p-2 " type="button" value="등록하기" style="background-color: #4365BC; color:#fff">
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
        <script src="../resources/js/lostBoardDetail.js"></script>

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

            // let clothes = document.querySelector("#clothes")
            // let titleClothes = document.querySelector("#titleClothes")
            // let bag = document.querySelector("#bag")
            // let titleBag = document.querySelector("#titleBag")
            // const container = document.querySelector(".category-icon-select");
            // clothes.addEventListener("click", function () {
            //     container.innerHTML = titleClothes.innerHTML;
            // });
            // bag.addEventListener("click", function () {
            //     container.innerHTML = titleBag.innerHTML;
            // });
            
            




        </script>
    </body>

</html>