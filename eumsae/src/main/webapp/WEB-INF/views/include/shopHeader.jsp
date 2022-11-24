<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName = "/eumsae"; %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shopHeader</title>
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
<<<<<<< HEAD
    
=======
>>>>>>> a01049e4a46b6eaab0b37b3cbefa80b54ff10557

   <!-- ##### Header Area Start ##### -->
   <header class="header-area">
      <!-- Navbar Area -->
      <div class="oneMusic-main-menu">
         <div class="classy-nav-container breakpoint-off">
            <div class="container">
               <!-- Menu -->
               <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                  <!-- Nav brand -->
                  <a href="<%=pjName%>/shop/main" class="nav-brand"><img
                     src="<%=pjName%>/resources/images/logo.png" alt=""></a>

                  <!-- Navbar Toggler -->
                  <div class="classy-navbar-toggler">
                     <span class="navbarToggler"><span></span><span></span><span></span></span>
                  </div>

                  <!-- Menu -->
                  <div class="classy-menu">

                     <!-- Close Button -->
                     <div class="classycloseIcon">
                        <div class="cross-wrap">
                           <span class="top"></span><span class="bottom"></span>
                        </div>
                     </div>
                     <!-- Nav Start -->
                     <div class="classynav">
                        <ul>
                           <li><a href="<%=pjName%>/shop/main">Home</a></li>
                           <li><a href="#">Category</a>
                              <ul class="dropdown">
                                 <li><a href="<%=pjName%>/shop/lpList?genre=POP">POP</a></li>
                                 <li><a href="<%=pjName%>/shop/lpList?genre=Rock">ROCK</a></li>
                                 <li><a href="<%=pjName%>/shop/lpList?genre=HipHop">HipHop</a></li>
                                 <li><a href="<%=pjName%>/shop/lpList?genre=Ballad">Ballad</a></li>
                                 <li><a href="<%=pjName%>/shop/lpList?genre=국내가요">국내가요</a></li>
                                 <li><a href="<%=pjName%>/shop/lpList?genre=Fork">Fork</a></li>
                                 <li><a href="<%=pjName%>/shop/lpList?genre=RnB">RnB</a></li>
                                 <li><a href="<%=pjName%>/shop/lpList?genre=Elec">일렉트로</a></li>
                                 <li><a href="<%=pjName%>/shop/lpList?genre=Ost">OST</a></li>
                                 <li><a href="<%=pjName%>/shop/lpList?genre=트로트">트로트</a></li>
                              </ul>
                           </li>
                           <li><a href="<%=pjName%>/board/requestBoard">Board</a></li>
                        </ul>

								<!-- Login/Register & Cart Button -->
								<div
									class="login-register-cart-button d-flex align-items-center">
									<!-- Login/Register -->
									<div class="login-register-btn mr-50">
<<<<<<< HEAD
									<c:if test="${login == null}">
										<a href="<%=pjName%>/user/loginPage" id="loginBtn">Login / Register</a>
									</c:if>
									<c:if test="${login != null}">
										<a href="<%=pjName%>/user/logout" id="loginBtn">LogOut</a>
									</c:if>
=======
										<c:if test="${login == null }">
										<a href="<%=pjName%>/user/loginPage" id="loginBtn">Login / Register</a>
										</c:if>
										<c:if test="${login != null }">
										<a href="<%=pjName%>/user/loginPage" id="loginBtn">Log Out</a>
										</c:if>
>>>>>>> 80e862cfe6b8a3e7369b7db565494695dd09775e
									</div>

                           <!-- Cart Button -->
                           <div class="cart-btn">
                                 <a href="<%=pjName%>/user/cart"><img src="<%=pjName%>/resources/images/shop/cart.png" style="height: 30px;width: 30px"/></a>
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