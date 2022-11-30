<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <body  style="font-family:LINESeedKR-Bd;">


        <jsp:include page="../include/shopHeader.jsp" />

	<!-- ##### 페이지 이름 ######### -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('../resources/images/bg_2.gif');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate mb-5 text-center">
					<p class="breadcrumbs mb-0">
					</p>
					<h2 class="mb-0 bread">Fail..</h2>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### 페이지 이름 끝 ######### -->

	<!-- 주문완료 내용 시작 -->
	<section style="text-align:center;">
	<br/>
	<h2>주문에 실패하셨습니다.</h2><br/>
	<h4>취소하셨거나, 결제오류입니다. 관리자에게 문의하세요.</h4>
	<a href="checkout"><button type="button" class="btn btn-success">주문 화면으로</button></a>
	<a href="main"><button type="button" class="btn btn-success">메인 화면으로</button></a>
	</section>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	
	<!-- 주문완료 끝 -->

        <jsp:include page="../include/shopFooter.jsp"></jsp:include>
        
        
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>
