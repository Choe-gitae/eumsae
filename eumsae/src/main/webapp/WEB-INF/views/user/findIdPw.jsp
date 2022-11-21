<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String pjName = "/eumsae"; %>
    
<!DOCTYPE html>
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
    <section class="login-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-14 col-lg-8">
                    <div class="login-content">
                    <ul class="nav nav-pills" style="margin-left: 133px;">
						  <li class="nav-item">
						    <a class="nav-link active" data-toggle="tab" href="#find_id">아이디 찾기</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" data-toggle="tab" href="#find_Pw">비밀번호 찾기</a>
						  </li>
						</ul>
                        <h3> </h3>
                        <div class="tab-content">
                        <div class="tab-pane fade show active" id="find_id">
                            <form action="#" method="post">
                                <div class="form-group">
                                    <label for="find_id-name">이름</label>
                                    <input type="text" class="form-control-my" id="find_id-name" placeholder="이름을 입력하세요...">
                                </div>
                                <div class="form-group">
                                    <label for="find_id_pNum">전화번호</label>
                                    <input type="text" class="form-control-my" id="find_id_pNum" placeholder="전화번호를 입력하세요..."><br/><br/>
                                </div>
                                <button type="submit" class="btn oneMusic-btn-login mt-30">찾기</button><br/>
                            </form>
                            </div>
                        <div class="tab-pane fade" id="find_Pw">
                            <form action="#" method="post">
                                <div class="form-group">
                                    <label for="find_id-Pw">비밀번호를 찾으려는 아이디</label>
                                    <input type="text" class="form-control-my" id="find_id-Pw" placeholder="아이디를 입력하세요...">
                                </div>
                                <button type="submit" class="btn oneMusic-btn-login mt-30">찾기</button><br/>
                            </form>
                        </div>
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