<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>One Music - Modern Music HTML5 Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="resources/00-one-music-gh-pages/style.css">

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
                        <a href="index.html" class="nav-brand"><img src="resources/00-one-music-gh-pages/img/core-img/logo.png" alt=""></a>

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
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="albums-store.html">Albums</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="albums-store.html">Albums</a></li>
                                            <li><a href="event.html">Events</a></li>
                                            <li><a href="blog.html">News</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="elements.html">Elements</a></li>
                                            <li><a href="login.html">Login</a></li>
                                            <li><a href="#">Dropdown</a>
                                                <ul class="dropdown">
                                                    <li><a href="#">Even Dropdown</a></li>
                                                    <li><a href="#">Even Dropdown</a></li>
                                                    <li><a href="#">Even Dropdown</a></li>
                                                    <li><a href="#">Even Dropdown</a>
                                                        <ul class="dropdown">
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Even Dropdown</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="event.html">Events</a></li>
                                    <li><a href="blog.html">News</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>

                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <!-- Login/Register -->
                                    <div class="login-register-btn mr-50">
                                        <a href="login.html" id="loginBtn">Login / Register</a>
                                    </div>

                                    <!-- Cart Button -->
                                    <div class="cart-btn">
                                        <p><span class="icon-shopping-cart"></span> <span class="quantity">1</span></p>
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

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(resources/00-one-music-gh-pages/img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <h2>상품 요청 게시판</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Login Area Start ##### -->
    <section class="login-area section-padding-100">
        <div class="container" style="positon:absolute; width:1600px;">
            <div class="row justify-content-center" style="
            width: 1709px;
            margin-left: -289px;
        ">
                <div class="col-12 col-lg-8" style="
                padding-left: 0px;
                width: 1571px;
                padding-right: 0px;
            ">
                    <div class="login-content" style="
                    padding-left: 50px;
                    padding-right: 50px;
                    padding-top: 40px;
                    padding-bottom: 40px;
                ">
                        <!-- Login Form -->
                        <div class="requestBoard-form">
                            <form action="requestBoardWrite.jsp" method="post">
                            	<div class="container" >
                            		<table class="table table-striped">
                            			<thead>
                            			<tr>
                            				<th>글번호</th>
                            				<th>글작성자</th>
                            				<th>요청LP & 하고싶은말</th>
                            				<th>작성 시간</th>
                            			</tr>
                            			</thead>
                            			<tbody>
                            			<tr>
                            				<td>156</td>
                            				<td>최기태</td>
                            				<td>마이클잭슨-빌리진 부탁드려용~</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			<tr>
                            				<td>155</td>
                            				<td>전병욱</td>
                            				<td>블랍블라-부탁드려용</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			<tr>
                            				<td>154</td>
                            				<td>이지효</td>
                            				<td>블라블라-부탁드려용~</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			<tr>
                            				<td>153</td>
                            				<td>변정환</td>
                            				<td>집 가게-부탁드려용~ddddddddddddddddddddddddddddddddddddddddddddd</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			<tr>
                            				<td>153</td>
                            				<td>변정환</td>
                            				<td>집 가게-부탁드려용~ddddddddddddddddddddddddddddddddddddddddddddd</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			<tr>
                            				<td>153</td>
                            				<td>변정환</td>
                            				<td>집 가게-부탁드려용~ddddddddddddddddddddddddddddddddddddddddddddd</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			</tbody>
                            		</table>
                            		<hr/>
                            		
                            	</div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">
                                      <li class="page-item">
                                        <a class="btn oneMusic-btn-page mt-15" href="#" aria-label="Previous">
                                          <span aria-hidden="true">&laquo;</span>
                                        </a>
                                      </li>
                                      <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="#">1</a></li>
                                      <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="#">2</a></li>
                                      <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="#">3</a></li>
                                      <li class="page-item">
                                        <a class="btn oneMusic-btn-page mt-15" href="#" aria-label="Next">
                                          <span aria-hidden="true">&raquo;</span>
                                        </a>
                                      </li>
                                    </ul>
                                  </nav>
                                <a href="requestBoardWrite.jsp"><button type="submit" class="btn oneMusic-btn mt-15" style="left: 450px;">글쓰기</button></a><br/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Login Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row d-flex flex-wrap align-items-center">
                <div class="col-12 col-md-6">
                    <a href="#"><img src="img/core-img/logo.png" alt=""></a>
                    <p class="copywrite-text"><a href="#"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>

                <div class="col-12 col-md-6">
                    <div class="footer-nav">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Albums</a></li>
                            <li><a href="#">Events</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="resources/js/active.js"></script>
</body>

</html>