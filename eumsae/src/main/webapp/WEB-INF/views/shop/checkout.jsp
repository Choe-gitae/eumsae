<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% String pjName = "/eumsae"; %>

<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="description" content="" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title -->
        <title>EUMSAE</title>

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
					<h2 class="mb-0 bread">Check Out</h2>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### 페이지 이름 끝 ######### -->

	<!-- 주문자 정보 시작 -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-10 ftco-animate">
					<form action="#" class="billing-form">
						<h3 class="mb-4 billing-heading">주문자 정보</h3>
						<div class="row align-items-end">
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">First Name</label> <input type="text"
										class="form-control" placeholder="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="lastname">Last Name</label> <input type="text"
										class="form-control" placeholder="">
								</div>
							</div>

							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="phone">Phone</label> <input type="text"
										class="form-control" placeholder="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="emailaddress">Email Address</label> <input
										type="text" class="form-control" placeholder="">
								</div>
							</div>
							<hr />
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- 주문자 정보 끝 -->


	<!-- 수령인 정보 시작 -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-10 ftco-animate">
					<form action="#" class="billing-form">
						<h3 class="mb-4 billing-heading">수령인 정보</h3>
						<div class="row align-items-end">
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">First Name</label> <input type="text"
										class="form-control" placeholder="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="lastname">Last Name</label> <input type="text"
										class="form-control" placeholder="">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="phone">Phone</label> <input type="text"
										class="form-control" placeholder="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="emailaddress">Email Address</label> <input
										type="text" class="form-control" placeholder="">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="country">State / Country</label>
									<div class="select-wrap">
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>
										<select name="" id="" class="form-control">
											<option value="">USA</option>
											<option value="">Canada</option>
											<option value="">France</option>
											<option value="">Italy</option>
											<option value="">Philippines</option>
											<option value="">South Korea</option>
											<option value="">Hongkong</option>
											<option value="">Japan</option>
										</select>
									</div>
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="streetaddress">Street Address</label> <input
										type="text" class="form-control"
										placeholder="House number and street name">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Appartment, suite, unit etc: (optional)">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="towncity">Town / City</label> <input type="text"
										class="form-control" placeholder="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="postcodezip">Postcode / ZIP *</label> <input
										type="text" class="form-control" placeholder="">
								</div>
							</div>
<!-- ######### 결제 목록 시작############# -->
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
																		class="quantity form-control input-number" value="2"
																		min="1" max="100">
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
																		class="quantity form-control input-number" value="1"
																		min="1" max="100">
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
																		class="quantity form-control input-number" value="1"
																		min="1" max="100">
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
<!-- ######### 결제 목록 끝############# -->

													</tbody>
												</table>
											</div>
										</div>
									</div>
					</form>
					<!-- END -->
					
					<!-- ############ cart total 시작 ##############-->
					<div class="row mt-5 pt-3 d-flex">
						<div class="col-md-6 d-flex">
							<div class="cart-detail cart-total p-3 p-md-4">
								<h3 class="billing-heading mb-4">Cart Total</h3>
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
						</div>
						<!-- ############ cart total 끝 ##############-->
						
						<!-- ############ Payment Method 시작 ############## -->
						<div class="col-md-6">
							<div class="cart-detail p-3 p-md-4">
								<h3 class="billing-heading mb-4">Payment Method</h3>
								<div class="form-group">
									<div class="col-md-12">
										<div class="radio">
											<label><input type="radio" name="optradio"
												class="mr-2"> Direct Bank Tranfer</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<div class="radio">
											<label><input type="radio" name="optradio"
												class="mr-2"> Check Payment</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<div class="radio">
											<label><input type="radio" name="optradio"
												class="mr-2"> Paypal</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<div class="checkbox">
											<label><input type="checkbox" value="" class="mr-2">
												I have read and accept the terms and conditions</label>
										</div>
									</div>
								</div>
								<p>
									<a href="#" class="btn btn-primary py-3 px-4">Place an
										order</a>
								</p>
							</div>
						</div>
						<!-- ############ Payment Method 끝 ############## -->
					
					</div>
				</div>
				<!-- .col-md-8 -->
			</div>
		</div>
	</section>
	<!-- 수령인 정보 끝 -->

        <jsp:include page="../include/shopFooter.jsp"></jsp:include>

</body>
</html>