<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String pjName = "/eumsae"; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Eumsae detail page</title>

<!-- Favicon -->
<link rel="icon" href="<%=pjName%>/resources/images/favicon.ico" />


<!-- Stylesheet -->
<link rel="stylesheet" href="../resources/00-one-music-gh-pages/css/style.css" />
<link rel="stylesheet" href="../resources/00-one-music-gh-pages/css/bootstrap.min.css" />

<!-- Core Style CSS -->
<link rel="stylesheet" href="../resources/00-amado-master/css/core-style.css">

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- <script src="https://kit.fontawesome.com/def66b134a.js"></script> -->

<!-- Stylesheet --> 
<link rel="stylesheet" href="<%=pjName%>/resources/00-one-music-gh-pages/style.css" />
<link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/animate.css" />
<link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.carousel.min.css" />
<link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.theme.default.min.css" />
<link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/magnific-popup.css" />
<link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/flaticon.css" />
<link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/style.css" />


</head>


<body>

	<jsp:include page="../include/shopHeader.jsp" />

<!-- ##### 페이지 이름 ######### -->
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('<%=pjName%>/resources/images/img/bg-img/bg-0.gif');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div
            class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
               <p class="breadcrumbs mb-0">
               </p>
               <h2 class="mb-0 bread">Product Detail</h2>
            </div>
         </div>
      </div>
   </section>
   <!-- ##### 페이지 이름 끝 ######### -->



	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">


		<!-- Header Area Start (왼쪽 공백)-->
		<header class="header-area clearfix">
			
		</header>
		<!-- Header Area End -->

		<!-- Product Details Area Start -->
		<div class="single-product-area section-padding-100 clearfix">
			<div class="container-fluid">

				<div class="row">
					<div class="col-12">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mt-50">
								<li class="breadcrumb-item"><a href="#">Main</a></li>
								<li class="breadcrumb-item"><a href="#">LP List</a></li>
								<li class="breadcrumb-item"><a href="#">LP Detail</a></li>
								<li class="breadcrumb-item active" aria-current="page">${select.title}</li>
							</ol>
						</nav>
					</div>
				</div>

				<div class="row">
					<div class="col-12 col-lg-7">
						<div class="single_product_thumb">
							<div id="product_details_slider" class="carousel slide"
								data-ride="carousel">
								<ol class="carousel-indicators">

								</ol>
								<div class="carousel-inner">								
									<div class="carousel-item active">
										<a class="gallery_img"
											href="<%=pjName%>/resources/lpImg/${select.cjpg}.jpg">
											<img class="d-block w-100"
											src="<%=pjName%>/resources/lpImg/${select.cjpg}.jpg"
											alt="Select img">
										</a>
									</div>									 								
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-5">
						<div class="single_product_desc">
							<!-- Product Meta Data -->
							<div class="product-meta-data">
								<div class="line"></div>
								<p class="product-price"> ₩ ${select.price}</p>
								<a href="#"><h6>${select.title}</h6></a>                                
                            </div>
                            <hr>
                                    <p>${select.stitle}</p>
                                    <audio preload="auto" controls>
                                        <source src="<%=pjName%>/resources/lpMp3/${select.cmp3}.mp3" />
                                    </audio>
							<hr>

                            <div class="short_overview my-5">
                                <p>${select.content}</p>                             
                            </div>								
								
							<!-- Add to Cart Form -->
							<form class="cart clearfix" method="post">
								<div class="cart-btn d-flex mb-50">
									<p>Qty</p>
									<div class="quantity">
										<span class="qty-minus"
											onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i
											class="fa fa-caret-down" aria-hidden="true"></i></span> <input
											type="number" class="qty-text" id="qty" step="1" min="1"
											max="300" name="quantity" value="1"> <span
											class="qty-plus"
											onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i
											class="fa fa-caret-up" aria-hidden="true"></i></span>
									</div>
								</div>
								
								<button type="submit" name="checkout" class="btn btn-dark">check out</button>								
								
								<button type="submit" name="addtocart" value="5"
									class="btn btn-dark">Add to cart</button>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Product Details Area End -->
	</div>
	<!-- ##### Main Content Wrapper End ##### -->

 <jsp:include page="../include/shopFooter.jsp"></jsp:include>




	 <!-- ##### All Javascript Script ##### -->

<!--     jQuery-2.2.4 js -->
    
    <script src="resources/00-one-music-gh-pages/js/jquery/jquery-2.2.4.min.js"></script>
<!--     Popper js -->
    <script src="resources/00-one-music-gh-pages/js/bootstrap/popper.min.js"></script>
<!--     Bootstrap js -->
    <script src="resources/00-one-music-gh-pages/js/bootstrap/bootstrap.min.js"></script>
<!--     All Plugins js -->
    <script src="resources/00-one-music-gh-pages/js/plugins/plugins.js"></script>
<!--     Active js -->
    <script src="resources/00-one-music-gh-pages/js/active.js"></script>



</body>

</html>