<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName = "/eumsae"; %>
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
											<li><a href="<%=pjName%>/shop/lpList">장르1</a></li>
											<li><a href="<%=pjName%>/shop/lpList">장르2</a></li>
											<li><a href="<%=pjName%>/shop/lpList">장르3</a></li>
											<li><a href="<%=pjName%>/shop/lpList">장르4</a></li>
											<li><a href="<%=pjName%>/shop/lpList">장르5</a></li>
											<li><a href="<%=pjName%>/shop/lpList">장르6</a></li>
											<li><a href="<%=pjName%>/shop/lpList">장르7</a></li>
											<li><a href="#">장르8</a>
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
														</ul></li>
													<li><a href="#">Even Dropdown</a></li>
												</ul></li>
										</ul></li>
									<li><a href="<%=pjName%>/board/requestBoard">Board</a></li>


								</ul>



								<!-- Login/Register & Cart Button -->
								<div
									class="login-register-cart-button d-flex align-items-center">
									<!-- Login/Register -->
									<div class="login-register-btn mr-50">
										<a href="<%=pjName%>/user/loginPage" id="loginBtn">Login / Register</a>
									</div>

									<!-- Cart Button -->
									<div class="cart-btn">
											<a href="<%=pjName%>/user/cart"><img src="<%=pjName%>/resources/images/cart.png" style="height: 30px;width: 30px"/></a>
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