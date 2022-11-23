<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Title -->
<title>LP Store - EUMSAE(Cart page)</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/favicon.ico">

<!-- 두번째 템플릿 Stylesheet -->
<link
	href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/resources/css1/font-awesome.min.css">
<link rel="stylesheet" href="resources/css1/animate.css">
<link rel="stylesheet" href="resources/css1/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css1/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/css1/magnific-popup.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/resources/css1/bootstrap-select.min.css">
<link rel="stylesheet" href="resources/css1/flaticon.css">
<link rel="stylesheet" href="resources/css1/style.css">

<!-- 첫번째 템플릿 Stylesheet -->
<link rel="stylesheet" href="resources/css/onemusic-main-style.css">
<link rel="stylesheet" href="resources/css/helios-main.css" />

</head>
<body>


	<!-- ##### Header Area Start ##### -->
	<header class="header-area">
		<!-- Navbar Area -->
		<div class="oneMusic-main-menu">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Menu -->
					<nav class="classy-navbar justify-content-between" id="oneMusicNav">

						<!-- Nav brand -->
						<a href="index.html" class="nav-brand"><img
							src="resources/img/core-img/logo.png" alt=""></a>

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
														</ul></li>
													<li><a href="#">Even Dropdown</a></li>
												</ul></li>
										</ul></li>
									<li><a href="event.html">Events</a></li>
									<li><a href="blog.html">News</a></li>
									<li><a href="contact.html">Contact</a></li>


								</ul>



								<!-- Login/Register & Cart Button -->
								<div
									class="login-register-cart-button d-flex align-items-center">
									<!-- Login/Register -->
									<div class="login-register-btn mr-50">
										<a href="login.html" id="loginBtn">Login / Register</a>
									</div>

									<!-- Cart Button -->
									<div class="cart-btn">
										<p>
											<span class="icon-shopping-cart"></span> <span
												class="quantity">1</span>
										</p>
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
	
	<!-- ##### 페이지 이름 ######### -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_2.gif');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate mb-5 text-center">
					<p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="index.html">Home <i
								class="fa fa-chevron-right"></i></a></span> <span>Cart <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">My Cart</h2>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### 페이지 이름 끝 ######### -->
	
	<!-- ###### 장바구니 물품 리스트 시작 ###### -->
	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="table-wrap">
						<table class="table">
							<thead class="thead-primary">
								<tr>
									<th>&nbsp;</th>
									<th>&nbsp;</th>
									<th>Product</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>total</th>
									<th>&nbsp;</th>
								</tr>
							</thead>
							<tbody>								
								<tr class="alert" role="alert">
									<td><label class="checkbox-wrap checkbox-primary">
											<input type="checkbox" checked> <span
											class="checkmark"></span>
									</label></td>
									<td>
										<div class="img"
											style="background-image: url(resources/img/bg-img/a1.jpg);"></div>
									</td>
									<td>
										<div class="email">
											<span>Jim Beam Kentucky Straight</span> <span>Fugiat
												voluptates quasi nemo, ipsa perferendis</span>
										</div>
									</td>
									<td>$44.99</td>
									<td class="quantity">
										<div class="input-group">
											<input type="text" name="quantity"
												class="quantity form-control input-number" value="2" min="1"
												max="100">
										</div>
									</td>
									<td>$89.98</td>
									<td>
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
											<span aria-hidden="true"><i class="fa fa-close"></i></span>
										</button>
									</td>
								</tr>

								<tr class="alert" role="alert">
									<td><label class="checkbox-wrap checkbox-primary">
											<input type="checkbox"> <span class="checkmark"></span>
									</label></td>
									<td>
										<div class="img"
											style="background-image: url(resources/img/bg-img/a2.jpg);"></div>
									</td>
									<td>
										<div class="email">
											<span>Jim Beam Kentucky Straight</span> <span>Fugiat
												voluptates quasi nemo, ipsa perferendis</span>
										</div>
									</td>
									<td>$30.99</td>
									<td class="quantity">
										<div class="input-group">
											<input type="text" name="quantity"
												class="quantity form-control input-number" value="1" min="1"
												max="100">
										</div>
									</td>
									<td>$30.99</td>
									<td>
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
											<span aria-hidden="true"><i class="fa fa-close"></i></span>
										</button>
									</td>
								</tr>

								<tr class="alert" role="alert">
									<td><label class="checkbox-wrap checkbox-primary">
											<input type="checkbox"> <span class="checkmark"></span>
									</label></td>
									<td>
										<div class="img"
											style="background-image: url(resources/img/bg-img/a3.jpg);"></div>
									</td>
									<td>
										<div class="email">
											<span>Jim Beam Kentucky Straight</span> <span>Fugiat
												voluptates quasi nemo, ipsa perferendis</span>
										</div>
									</td>
									<td>$35.50</td>
									<td class="quantity">
										<div class="input-group">
											<input type="text" name="quantity"
												class="quantity form-control input-number" value="1" min="1"
												max="100">
										</div>
									</td>
									<td>$35.50</td>
									<td>
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
											<span aria-hidden="true"><i class="fa fa-close"></i></span>
										</button>
									</td>
								</tr>

								<tr class="alert" role="alert">
									<td><label class="checkbox-wrap checkbox-primary">
											<input type="checkbox"> <span class="checkmark"></span>
									</label></td>
									<td>
										<div class="img"
											style="background-image: url(resources/img/bg-img/a4.jpg);"></div>
									</td>
									<td>
										<div class="email">
											<span>Jim Beam Kentucky Straight</span> <span>Fugiat
												voluptates quasi nemo, ipsa perferendis</span>
										</div>
									</td>
									<td>$76.99</td>
									<td class="quantity">
										<div class="input-group">
											<input type="text" name="quantity"
												class="quantity form-control input-number" value="1" min="1"
												max="100">
										</div>
									</td>
									<td>$76.99</td>
									<td>
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
											<span aria-hidden="true"><i class="fa fa-close"></i></span>
										</button>
									</td>
								</tr>

								<tr class="alert" role="alert">
									<td class="border-bottom-0"><label
										class="checkbox-wrap checkbox-primary"> <input
											type="checkbox"> <span class="checkmark"></span>
									</label></td>
									<td class="border-bottom-0">
										<div class="img"
											style="background-image: url(resources/img/bg-img/a5.jpg);"></div>
									</td>
									<td class="border-bottom-0">
										<div class="email">
											<span>Jim Beam Kentucky Straight</span> <span>Fugiat
												voluptates quasi nemo, ipsa perferendis</span>
										</div>
									</td>
									<td class="border-bottom-0">$40.00</td>
									<td class="quantity border-bottom-0">
										<div class="input-group">
											<input type="text" name="quantity"
												class="quantity form-control input-number" value="1" min="1"
												max="100">
										</div>
									</td>
									<td class="border-bottom-0">$40.00</td>
									<td class="border-bottom-0">
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
											<span aria-hidden="true"><i class="fa fa-close"></i></span>
										</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- ###### 장바구니 물품 리스트 끝 ###### -->

				<!-- #### cart total 시작 ####-->
				<div class="row justify-content-end">
					<!--     			<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate"> -->
					<div class="cart-total mb-3">
						<h3>Cart Totals</h3>
						<p class="d-flex">
							<span>Subtotal</span> <span>$20.60</span>
						</p>
						<p class="d-flex">
							<span>Delivery</span> <span>$0.00</span>
						</p>
						<p class="d-flex">
							<span>Discount</span> <span>$3.00</span>
						</p>
						<hr>
						<p class="d-flex total-price">
							<span>Total</span> <span>$17.60</span>
						</p>
					</div>
					<p class="text-center">
						<a href="checkout.html" class="btn btn-primary-btn py-3 px-4">Proceed
							to Checkout</a>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!--#### cart total 끝 ####-->

	<!--#### footer 시작 ####-->
	<footer class="ftco-footer">
		<div class="container">
			<div class="row mb-5">
				<div class="col-sm-12 col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2 logo">
							<a href="#">LP <span>Store</span></a>
						</h2>
						<p>Far far away, behind the word mountains, far from the
							countries.</p>
						<ul class="ftco-footer-social list-unstyled mt-2">
							<li class="ftco-animate"><a href="#"><span
									class="fa fa-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="fa fa-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="fa fa-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-12 col-md">
					<div class="ftco-footer-widget mb-4 ml-md-4">
						<h2 class="ftco-heading-2">My Accounts</h2>
						<ul class="list-unstyled">
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>My
									Account</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Register</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Log
									In</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>My
									Order</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-12 col-md">
					<div class="ftco-footer-widget mb-4 ml-md-4">
						<h2 class="ftco-heading-2">Information</h2>
						<ul class="list-unstyled">
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About
									us</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Catalog</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Contact
									us</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Term
									&amp; Conditions</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-12 col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Quick Link</h2>
						<ul class="list-unstyled">
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>New
									User</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Help
									Center</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Report
									Spam</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Faq's</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-12 col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Have a Questions?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon fa fa-map marker"></span><span
									class="text">203 Fake St. Mountain View, San Francisco,
										California, USA</span></li>
								<li><a href="#"><span class="icon fa fa-phone"></span><span
										class="text">+2 392 3929 210</span></a></li>
								<li><a href="#"><span
										class="icon fa fa-paper-plane pr-4"></span><span class="text">info@yourdomain.com</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid px-0 py-5 bg-black">
			<div class="container">
				<div class="row">
					<div class="col-md-12">

						<p class="mb-0" style="color: rgba(255, 255, 255, .5);">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart color-danger" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib.com</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--#### footer 시작 ####-->


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<!-- ##### 첫번째 템플릿 All Javascript Script ##### -->
	<script src="resources/js1/jquery.min.js"></script>
	<script src="resources/js1/jquery-migrate-3.0.1.min.js"></script>
	<script src="resources/js1/popper.min.js"></script>
	<script src="resources/js1/bootstrap.min.js"></script>
	<script src="resources/js1/jquery.easing.1.3.js"></script>
	<script src="resources/js1/jquery.waypoints.min.js"></script>
	<script src="resources/js1/jquery.stellar.min.js"></script>
	<script src="resources/js1/owl.carousel.min.js"></script>
	<script src="resources/js1/jquery.magnific-popup.min.js"></script>
	<script src="resources/js1/jquery.animateNumber.min.js"></script>
	<script src="resources/js1/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="resources/js1/google-map.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/resources/js1/bootstrap-select.min.js"></script>
	<script src="resources/js1/main.js"></script>

	<!-- ##### 두번째 템플릿 All Javascript Script ##### -->
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