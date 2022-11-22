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
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Login Area Start ##### -->
    <section class="login-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="login-content">
                        <!-- Login Form -->
                        <div class="register-form">
                            <form action="register" name = "regForm" method="post">
                                <div class="form-group">
                                    <label for="reg_id">아이디</label><br/>
                                    <input type="text" class="form-control-id" id="reg_id" name='id' placeholder="아이디를 입력하세요..." required><br>
                                    <span id="idCheckResult" style="width:150px;color:red"></span><br>
                                    <a type="button" id="checkId" class="btn oneMusic-btn mt-30" style="top: -15.5px;right: -17px;">중복확인</a>
                                </div>
                                <div class="form-group">
                                    <label for="reg_pwd">비밀번호</label>
                                    <input type="password" class="form-control" id="reg_pwd" name='pwd'	placeholder="비밀번호를 입력하세요..." required>
                                </div>
                                <div class="form-group">
                                    <label for="reg_repwd">비밀번호 재확인</label>
                                    <input type="password" class="form-control" id="reg_repwd" name='repwd' placeholder="비밀번호를 동일하게 입력하세요..." required>
                                </div>
                                <hr/>
                                <div class="form-group">
                                    <label for="reg_name">별명</label>
                                    <input type="text" class="form-control" id="reg_nick"  name='nick' placeholder="별명을 입력하세요..." required>
                                </div>
                                <div class="form-group">
                                    <label for="reg_name">이름</label>
                                    <input type="text" class="form-control" id="reg_name" name='name' placeholder="이름을 입력하세요..." required>
                                </div>
                                <div class="form-group">
                                    <label for="reg_birth">생년월일</label>
                                    <input type="text" class="form-control" id="reg_birth" name='birth' placeholder="생년월일을 입력하세요..." required>
                                </div>
                                <div class="form-group">
                                    <label for="reg_email">이메일</label>
                                    <input type="email" class="form-control" id="reg_email" name='email' placeholder="이메일을 입력하세요..."required>
                                </div>
                                <div class="form-group">
                                    <label for="reg_pNum">전화번호</label>
                                    <input type="text" class="form-control" id="reg_pNum"  name='tel' placeholder="전화번호를 입력하세요..." required>
                                </div>
                                <div class="form-group">
                                    <label for="reg_pNum">주소</label>
                                    <input type="text" class="form-control" id="reg_addr"  name='addr' placeholder="주소를 입력하세요..." required>
                                </div>
                                <button type="button" id="userSubmit" class="btn oneMusic-btn mt-30">가입하기</button><br/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Login Area End ##### -->

	<jsp:include page="../include/shopFooter.jsp"></jsp:include>
	
	<!--  제작한 js -->
    <script src="<%=pjName%>/resources/js/user.js"></script>     
</body>

</html>