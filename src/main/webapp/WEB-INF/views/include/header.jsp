<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<header id="header" class="header d-flex align-items-center">

            <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
                <a href="/index.jsp" class="logo d-flex align-items-center">
                    <!-- Uncomment the line below if you also wish to use an image logo -->
                    <!-- <img src="assets/img/logo.png" alt=""> -->
                    <h1>찾음</h1>
                    <img src="../resources/assets/img/light.png" alt="" style="width:30%;">
                </a>
                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a href="/chazmInfo/chazmInfo.do">찾음이란?</a></li>
                        <li><a href="/lost/list.do">찾아주세요</a></li>
                        <li><a href="/find/list.html">주인을 찾아요</a></li>
                        <li class="dropdown"><a href="#"><span>찾음+</span>  <i
                            class="bi bi-chevron-down dropdown-indicator"></i></a>
                            <ul>
                                <li><a href="/plusA/list.do">찾음이 기부해요</a></li>
                                <li><a href="/plusM/list.do">포인트로 기부해요</a></li>
                            </ul>
                        </li>
                        <li><a href="/member/login.do">로그인</a></li>
                        <li class="dropdown">
                            <a href="/member/myPage.do">마이페이지
                            <i class="bi bi-chevron-down dropdown-indicator"></i></a>
                            <ul>
                                <li><a href="#">회원 정보</a></li>
                                <li><a href="#">내가 쓴 글</a></li>
                                <li><a href="#">기부 내역</a></li>
                                <li><a href="#">포인트 내역</a></li>
                                <li><a href="#">로그아웃</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav><!-- .navbar -->

                <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
                <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

            </div>
        </header><!-- End Header -->
        <!-- End Header -->