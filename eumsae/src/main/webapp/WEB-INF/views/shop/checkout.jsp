<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <% String pjName = "/eumsae"; %>

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
    <link
      href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/resources/css1/font-awesome.min.css"
    />
    <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/animate.css" />
    <link
      rel="stylesheet"
      href="<%=pjName%>/resources/00-liquorstore-master/css/owl.carousel.min.css"
    />
    <link
      rel="stylesheet"
      href="<%=pjName%>/resources/00-liquorstore-master/css/owl.theme.default.min.css"
    />
    <link
      rel="stylesheet"
      href="<%=pjName%>/resources/00-liquorstore-master/css/magnific-popup.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/resources/css1/bootstrap-select.min.css"
    />
    <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/flaticon.css" />
    <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/style.css" />
  </head>
  <body style="font-family: LINESeedKR-Bd">
    <jsp:include page="../include/shopHeader.jsp" />

    <!-- ##### 페이지 이름 ######### -->
    <section
      class="hero-wrap hero-wrap-2"
      style="background-image: url('../resources/images/bg_2.gif')"
      data-stellar-background-ratio="0.5"
    >
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
            <p class="breadcrumbs mb-0"></p>
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
									<label for="firstname">이름</label> <input type="text"
										class="form-control" id="buyer_name" placeholder="" value="${cinfo.name}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="phone">전화번호</label> <input type="text"
										class="form-control" id="buyer_pNum" placeholder="" value="${cinfo.tel}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="emailaddress">이메일</label> <input
										type="email" class="form-control" id="buyer_email" placeholder="" value="${cinfo.email}" style="width:920px;">
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
						<h3 class="mb-4 billing-heading">수령인 정보</h3>
						<div class="row align-items-end">
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">이름</label> <input type="text"
										class="form-control" id="re_name" placeholder="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="phone">전화번호</label> <input type="text"
										class="form-control" id="re_pNum" placeholder="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="emailaddress">이메일</label> <input
										type="email" class="form-control" id="re_email" placeholder="" style="width:920px;">
								</div>
								<input type="checkbox" class="re_info" id="re_info" />
                                    <label for="re_info" style="font-size: 13px;">주문자 정보와 동일하게</label>
							</div>
							<div class="col-md-6">
							</div>
							
							<div class="col-md-6">
								<div class="form-group">
									<label for="emailaddress">우편번호</label> <input id="sample6_postcode" 
										type="text" class="form-control" placeholder="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="button" id="postCode" value="우편번호 찾기" class="btn btn-primary py-3 px-4"><br>
								</div>
							</div>
							<div class="w-100"></div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="streetaddress">주소</label> <input id="sample6_address" 
										type="text" class="form-control"
										placeholder="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								<label for="">상세주소</label>
									<input id="sample6_detailAddress" type="text" class="form-control"
										placeholder="">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="postcodezip">배송시 요청사항</label> <input
										type="text" class="form-control" placeholder="" style="
    width: 920px;
">
								</div>
							</div>
							</div>
							
<!-- ######### 결제 목록 시작############# -->

							<section class="ftco-section">
								<div class="container" style="width: 1045px; margin-left: -69px;">
									<div class="row">
										<div class="col-12">
											<div class="table-wrap">
												<table class="table">
													<thead class="thead-primary">
														<tr>
															<th>&nbsp;</th>
															<th>상품</th>
															<th>가격</th>
															<th>수량</th>
															<th>총액</th>
															<th>&nbsp;</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>사진</td>
															<td>상품</td>
															<td>가격</td>
															<td>수량</td>
															<td>총액</td>															
														</tr>
														<!-- 한 블럭 시작 -->
														<c:forEach var="list" items="${checkOutVOList.checkOutVOList}">
														<c:if test="${list.state}">
														<input type="hidden" name="cnt" id="cnt" value="${list.cnt}">
														<tr class="alert" role="alert">
															<td>
																<div class="img" style="background-image: url(<%=pjName%>/resources/lpImg/${list.cjpg}.jpg);"></div>
															</td>
															<td>
																<div class="email">
																	<span>${list.singer}</span> <span>${list.title}</span>
																</div>
															</td>
															<td>₩<span class="price">${list.price}</span></td>
															<td class="quantity">
																<span class="input-group">
																	<button type="button"  class="Btn downBtn" style="margin-left: -4px;">◀</button>																														
																	<input class="amount" type="text" name="amount" value="${list.amount}" min="1" max="100" style="text-align-last: center;width: 30px;" readonly>
																	<button type="button"  class="Btn upBtn" style="margin-left: -4px;">▶</button>
																</span>
															</td>
															<td>₩<span class="subTp"></span></td>															
														</tr>
														<form action="paySuccess" name="paySuccess" id="paySuccess" class="billing-form" method="get">	
														<input type="hidden" name="lpno" id="lpno" value="${list.lpno}">
														<input type="hidden" name="cartno" id="cartno" value="${list.cartno}">
														</c:if>
														</c:forEach>														
														<input type="hidden" name="orderTotalPrice" id="orderTotalPrice" value="">
														<input type="hidden" name="id" id="id" value="${cinfo.id}">
														</form>
														<!-- 한 블럭 끝 -->
<!-- ######### 결제 목록 끝############# -->

													</tbody>
												</table>
											</div>
										</div>
									</div>
									</div>
									</section>
					<!-- END -->
					
					<!-- ############ cart total 시작 ##############-->
					
					<div class="row mt-5 pt-3 d-flex">
						<div class="col-md-6 d-flex">
							<div class="cart-detail cart-total p-3 p-md-4">
								<h3 class="billing-heading mb-4">결제하실 금액</h3>
								<p class="d-flex">
									<span>주문금액</span> <span class="subTp"></span>
								</p>
								<p class="d-flex">
									<span>배송비</span> <span id="dTax"></span>
								</p>
								<!-- <p class="d-flex">
									<span>할인</span> <span></span>
								</p> -->
								<hr>
								<p class="d-flex total-price">
									<span>결제하실 금액</span> <span id="tP"></span>
								</p>																
							</div>
						</div>
					
					
						<!-- ############ cart total 끝 ##############-->
						
						<!-- ############ Payment Method 시작 ############## -->
						<div class="col-md-6">
							<div class="cart-detail p-3 p-md-4">
								<h3 class="billing-heading mb-4">결제수단</h3>
								<div class="form-group">
									<div class="col-md-12">
											<button class="btn btn-primary py-3 px-4" id="kakaoPay"><img src="../resources/images/payment/payment_icon_yellow_medium.png"></button>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
											<button class="btn btn-primary py-3 px-4" id="tossPay"><img src="../resources/images/payment/tosspay.png"></button>
									</div>
								</div>
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
        
        
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <!-- jQuery -->
<!--         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
  <script src="<%=pjName%>/resources/js/checkOut.js"></script>  
  
</body>
</html>
