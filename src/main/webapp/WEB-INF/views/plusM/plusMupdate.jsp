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
    <link href="../resources/assets/css/plusM/plusMinsert.css" rel="stylesheet">
    <link rel="stylesheet" href="../resources/assets/css/common/header.css">
    <link rel="stylesheet" href="../resources/assets/css/common/footer.css">
    <!-- 서머노트를 위해 추가해야할 부분 -->
    <!-- <script src="../resources/assets/vendor/summernote/summernote-lite.js"></script>
    <script src="../resources/assets/vendor/summernote/summernote-ko-KR.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="../resources/assets/vendor/summernote/summernote-lite.css"> -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
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

        <!-- ======= 모금함 수정 ======= -->
        <section id="donation-form" class="donation-form">
            <div class="container" data-aos="fade-up">
                <div class="row gy-5 gx-lg-5">
                    <div class="col-lg-12">
                        <form action="/plusMBoard/update.do" method="post" id="plusMUpdateForm" role="form" class="form text-left" enctype="multipart/form-data">
                        	<input type="hidden" value="${plusMBoard.plusMNo }" name="plusMNo">
                        	<input type="hidden" value="${plusMBoard.plusMFilename }" name="plusMFilename">
                        	<input type="hidden" value="${plusMBoard.plusMFilerename }" name="plusMFilerename">
                        	<input type="hidden" value="${plusMBoard.plusMFilepath }" name="plusMFilepath">
                            <div class="form-group col-md-12">
                                <label for="plusMTitle"><i class="bi bi-card-heading"></i></label>
                                <input type="text" class="form-control" name="plusMTitle" id="plusMTitle" value="${plusMBoard.plusMTitle }" placeholder="제목을 입력하세요." required>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <label for="plusMDntPlace"><i class="bi bi-house-heart"></i></label>
                                    <input type="text" class="form-control" name="plusMDntPlace" id="plusMDntPlace" value="${plusMBoard.plusMDntPlace }" placeholder="기부처를 입력하세요." required>
                                </div>
                                <div class="col-md-6">
                                    <label for="plusMGoalAmount"><i class="bi bi-cash-coin"></i></label>
                                    <input type="number" class="form-control" name="plusMGoalAmount" id="plusMGoalAmount" value="${plusMBoard.plusMGoalAmount }" placeholder="목표 금액" required>
                                </div>
                            </div>
                            <div class="row form-group">
	                            <div class="form-group col-md-6">
	                                <label for="uploadFile"><i class="bi bi-card-image"></i></label>
	                                <input type="file" id="uploadFile" name="uploadFile" class="form-control" placeholder="파일을 선택하세요.">
	                            </div>
	                            <div class="form-group col-md-6">
	                            	<label for="prevFile"><i class="bi bi-download"></i></label><br>
	                            	<button class="form-control">
		                            	<a href="../resources/puploadFiles/${plusMBoard.plusMFilerename }" download>${plusMBoard.plusMFilename }</a>	                            	
	                            	</button>
	                            </div>       
                            </div>
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <label for="plusMStartDate"><i class="bi bi-calendar"></i></label>
                                    <input type="date" class="form-control" name="plusMStartDate" id="plusMStartDate" placeholder="모금 시작일 :&nbsp;" value="${plusMBoard.plusMStartDate }" readonly>
                                </div>
                                <div class="col-md-6" style="margin-bottom: 40px;">
                                    <label for="plusMEndDate"><i class="bi bi-calendar-fill"></i></label>
                                    <input type="date" class="form-control" name="plusMEndDate" id="plusMEndDate" placeholder="모금 종료일 :&nbsp;" value="${plusMBoard.plusMEndDate }" required>
                                    <div id="validationMessage" style="color: red; font-size: 12px;"></div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <!-- <label for="plusMContent">내용</label> -->
                                <textarea class="form-control" id="summernote" name="plusMContent" cols="30" rows="10">${plusMBoard.plusMContent }</textarea>
                            </div>
                            <div class="row btn-area justify-content-center">
	                            <div class="d-flex justify-content-center" id="formMessage" style="color:red; font-size:20px" ></div>
                                <button type="submit">수정</button>
                            </div>
                        </form>
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
    <script src="../resources/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="../resources/assets/js/main.js"></script>
    <script>
        $(document).ready(function() {
        //여기 아래 부분
            $('#summernote').summernote({
                height: 700,                 // 에디터 높이
                minHeight: null,             // 최소 높이
                maxHeight: null,             // 최대 높이
                focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
                lang: "ko-KR",					// 한글 설정
                placeholder: '내용을 입력하세요.',	//placeholder 설정
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
        $('#plusMStartDate').val(new Date().toISOString().substring(0, 10));
        $("#plusMStartDate, #plusMEndDate").on("change", function() {
            var startDate = new Date($("#plusMStartDate").val());
            var endDate = new Date($("#plusMEndDate").val());

            // 종료일이 시작일보다 과거이거나 같은 경우 유효성 체크 메시지 표시
            if (endDate <= startDate) {
                $("#validationMessage").text("종료일은 시작일보다 미래 날짜여야 합니다.");
                $("#plusMEndDate").style.outline("red");
            } else {
                // 유효성 체크 메시지를 지움
                $("#validationMessage").text("");
            }
        });
        $(document).ready(function() {
            $("#plusMUpdateForm").submit(function(e) {
                const startDate = $("#plusMStartDate").val();
                const endDate = $("#plusMEndDate").val();
                let pmContent = $("#summernote");
                const msg = $("#validationMessage");
                let regContent = pmContent.val().replace(/<[^>]*>/g, '');
                const formMessage = $("#formMessage");
                if (endDate <= startDate) {
                    e.preventDefault();
                    alert("종료일은 시작일보다 미래날짜여야 합니다.");
                } else if (regContent === null || regContent.trim().length === 0) {
                    e.preventDefault();
                    alert("내용을 입력해주세요");
                } else {
                    submit(); // submit 함수 호출 (변경된 코드에는 없지만 필요한 경우 추가하세요)
                }
            });
        });
        /* document.querySelector("#plusMUpdateForm").addEventListener("submit", (e) => {
        	const startDate = document.querySelector("#plusMStartDate").value;
        	const endDate = document.querySelector("#plusMEndDate").value;
        	let pmContent = document.querySelector("#summernote").innerText;
        	const msg = document.querySelector("#validationMessage");
        	const formMessage = document.querySelector("#formMessage");
        	let regContent = pmContent.replace(/<[^>]*>/g, '');
        	if(endDate <= startDate) {
				e.preventDefault();
				formMessage.innerText = "종료일은 시작일보다 미래날짜여야 합니다.";
			}else if(regContent === null || regContent.trim.length == 0){
				e.preventDefault();
				formMessage.innerText = "내용을 입력해주세요.";
			}else {
				msg.innerText = "";
				submit();
			}
        }); */
    </script>
</body>

</html>