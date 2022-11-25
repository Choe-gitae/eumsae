<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <% String pjName = "/eumsae"; %> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>shopHeader</title>
        <!-- Favicon -->
        <link rel="icon" href="<%=pjName%>/resources/images/favicon.ico" />

        <!-- Stylesheet -->
        <link rel="stylesheet" href="<%=pjName%>/resources/00-one-music-gh-pages/style.css" />

        <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet" />

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/resources/css1/font-awesome.min.css" />

        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/animate.css" />

        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.carousel.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.theme.default.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/magnific-popup.css" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/resources/css1/bootstrap-select.min.css" />

        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/flaticon.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/style.css" />
    </head>
    <body>
        <!-- Preloader -->
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="lds-ellipsis">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>

        <!-- ##### Header Area Start ##### -->
        <header class="header-area">
            <!-- Navbar Area -->
            <div class="oneMusic-main-menu">
                <div class="classy-nav-container breakpoint-off">
                    <div class="container">
                        <!-- Menu -->
                        <nav class="classy-navbar justify-content-between" id="oneMusicNav">
                            <!-- Nav brand -->
                            <a href="<%=pjName%>/shop/main" class="nav-brand"><img src="<%=pjName%>/resources/images/logo.png" alt="" /></a>

                            <!-- Navbar Toggler -->
                            <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>

                            <!-- Menu -->
                            <div class="classy-menu">
                                <!-- Close Button -->
                                <div class="classycloseIcon">
                                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                </div>
                                <!-- Nav Start -->
                                <div class="classynav">
                                    <ul>
                                        <li><a href="<%=pjName%>/shop/main">Home</a></li>
                                        <li>
                                            <a href="#">Category</a>
                                            <ul class="dropdown">
                                                <li><a href="<%=pjName%>/shop/searchLp?searchCon=genre&searchKey=POP">POP</a></li>
                                                <li><a href="<%=pjName%>/shop/searchLp?searchCon=genre&searchKey=Rock">ROCK</a></li>
                                                <li><a href="<%=pjName%>/shop/searchLp?searchCon=genre&searchKey=HipHop">HipHop</a></li>
                                                <li><a href="<%=pjName%>/shop/searchLp?searchCon=genre&searchKey=Ballad">Ballad</a></li>
                                                <li><a href="<%=pjName%>/shop/searchLp?searchCon=genre&searchKey=국내가요">국내가요</a></li>
                                                <li><a href="<%=pjName%>/shop/searchLp?searchCon=genre&searchKey=Fork">Fork</a></li>
                                                <li><a href="<%=pjName%>/shop/searchLp?searchCon=genre&searchKey=RnB">RnB</a></li>
                                                <li><a href="<%=pjName%>/shop/searchLp?searchCon=genre&searchKey=Elec">일렉트로</a></li>
                                                <li><a href="<%=pjName%>/shop/searchLp?searchCon=genre&searchKey=Ost">OST</a></li>
                                                <li><a href="<%=pjName%>/shop/searchLp?searchCon=genre&searchKey=트로트">트로트</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="<%=pjName%>/board/requestBoard">Board</a></li>
                                    </ul>

                                    <!-- Login/Register & Cart Button -->
                                    <div class="login-register-cart-button d-flex align-items-center">
                                        <!-- Login/Register -->
                                        <div class="login-register-btn mr-50">
                                            <c:if test="${login == null }">
                                                <a href="<%=pjName%>/user/login&RegisterPage" id="loginBtn">Login / Register</a>
                                            </c:if>
                                            <c:if test="${login != null }">
                                                <a href="<%=pjName%>/user/logout" id="logOutBtn">Log Out</a>
                                            </c:if>
                                        </div>

                                        <!-- Cart Button -->
                                        <div class="cart-btn">
                                            <a href="<%=pjName%>/user/cart?id=${login}"><img src="<%=pjName%>/resources/images/shop/cart.png" style="height: 30px; width: 30px" /></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Nav End -->
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ##### Header Area End ##### -->
    </body>
</html>
