<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String pjName = "/eumsae"; %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>EUMSAE</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


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

	<jsp:include page="../include/shopHeader.jsp" />

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

	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="table-wrap">
						<table class="table" id="cartTable">
							<thead class="thead-primary">
								<tr>
									<th>&nbsp;</th>
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
								<c:forEach var="list" items="${list}" varStatus="status">									
								<tr class="alert" role="alert">
								<th scope="row">${status.count}</th>
									<td><label class="checkbox-wrap checkbox-primary">
											<input class="check" type="checkbox" checked> <span
											class="checkmark"></span>
									</label></td>
									<td>
										<div class="img"
											style="background-image: url(<%=pjName%>/resources/lpImg/${list.cjpg}.jpg);"></div>
									</td>
									<td>
										<div class="email">
											<span id="title">${list.singer}</span> 
											<span>${list.title}</span>
										</div>
									</td>
									<td class="price">${list.price}</td>
									<td class="quantity">
										<div class="input-group">										
											<input type="text" name="quantity" 
												class="amount form-control input-number" value="${list.amount}" min="1"
												max="100">												
										</div>
									</td>
									<td class="total"></td>
									<td>
										<button type="button" class="close" aria-label="Close" data-dismiss="alert">
											<span aria-hidden="true"><i class="fa fa-close"></i></span>
										</button>
									</td>
								</tr>																														
							</c:forEach>								
							</tbody>
						</table>						
					</div>
				</div>
				<div class="row justify-content-end">
<!--     			<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate"> -->
    				<div class="cart-total mb-3">
    					<h3>Cart Totals</h3>
    					<p class="d-flex">
    						<span>Subtotal</span>
    						<span id="subTp"></span>
    					</p>
    					<p class="d-flex">
    						<span>Delivery</span>
    						<span id="dTax">2500</span>
    					</p>
    					<!-- <p class="d-flex">
    						<span>Discount</span>
    						<span>$3.00</span>
    					</p> -->
    					<hr>
    					<p class="d-flex total-price">
    						<span>Total</span>
    						<span id="tP"></span>
    					</p>
    				</div>
    				<button type="button" class="btn btn-dark py-3 px-4">Proceed to Checkout</button>
    			</div>
    		</div>
    	</div>
    </section>


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<jsp:include page="../include/shopFooter.jsp"></jsp:include>
	<script src="<%=pjName%>/resources/js/calCart.js"></script>
	

</body>
</html>