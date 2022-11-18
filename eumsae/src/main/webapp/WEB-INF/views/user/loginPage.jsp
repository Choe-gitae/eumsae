<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% String pjName = "/eumsae"; %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Login Area Start ##### -->
    <section class="login-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-14 col-lg-8">
                    <div class="login-content">
                        <h3> </h3>
                        <!-- Login Form -->
                        <div class="login-form">
                            <form action="login" method="post">
                                <div class="form-group">
                                    <label for="login_id">아이디</label>
                                    <input type="text" class="form-control-my" id="login_id" placeholder="아이디를 입력하세요...">
                                </div>
                                <div class="form-group">
                                    <label for="login_pwd">비밀번호</label>
                                    <input type="password" class="form-control-my" id="login_pwd" placeholder="비밀번호를 입력하세요..."><br/><br/>
                                    <input type="checkbox" class="id_save" id="id_save">
                                    <label for="id_save">로그인 정보 저장</label>
                                </div>
                                <button type="submit" class="btn oneMusic-btn-login mt-30">로그인</button><br/>
                            </form>
                                <a href="#"><button class="btn oneMusic-btn mt-30" style="top: -20px;">비회원으로 주문하기</button></a>
                            <a href="registerPage" class="a_hg">회원가입</a>
                            <a href="findIdPw" class="a_gc">계정 / 비밀번호 찾기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Login Area End ##### -->

    <jsp:include page="../include/shopFooter.jsp"></jsp:include>
</body>

</html>