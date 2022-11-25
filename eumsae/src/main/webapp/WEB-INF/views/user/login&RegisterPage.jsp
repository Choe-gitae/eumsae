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
    <title>EUMSAE Login/Register Page</title>

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
        <link rel="stylesheet" href="<%=pjName%>/resources/css/loginStyle.css" />
        

</head>

<body class="aa">
    
    <jsp:include page="../include/shopHeader.jsp" />

<!-- ##### 페이지 이름 ######### -->
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('../resources/images/bg_3.gif');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div
            class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
               <p class="breadcrumbs mb-0">
               </p>
               
            </div>
         </div>
      </div>
   </section>
   <!-- ##### 페이지 이름 끝 ######### -->
   
   
<div class="add-area mb-100"></div>
<div class="container1" id="container1" >
  <div class="form-container sign-up-container">
  <div id="signup">
    <form class="form" action="register" method="post" >
      <h1 >Create Account</h1>
      <div class="social-container">

      </div>
                  
      <input class="input" id="reg_id" name='id' type="text" placeholder="아이디"  required="required"/>
      <a type="button" id="checkId" class="button-check" style="top: -49.5px; right: -111px;">중복확인</a>
      <span id="idCheckResult" style="margin-top: -27px;width:200px;color:red"></span>
      <input class="input" id="reg_pwd" name='pwd' type="password" placeholder="비밀번호" required="required"/>
      <input class="input" id="reg_repwd" name='repwd' type="password" placeholder="비밀번호 확인" required="required"/><hr/>
      <input class="input" id="reg_nick"  name='nick' type="text" placeholder="별명" required="required"/>
      <input class="input" id="reg_name" name='name' type="text" placeholder="이름" required="required"/>
      <input class="input" id="reg_birth" name='birth' type="date" value="sysdate" placeholder="생년월일" required="required"/>
      <input class="input" id="reg_email" name='email' type="email" placeholder="이메일" required="required"/>
      <input class="input" id="reg_pNum"  name='tel' type="text" placeholder="연락처 (ex.010-1234-5678)" required="required"/>
      
      <p/>     
      <button class="button" id="userSubmit" >가입하기</button>
      <p/>
    </form>
    </div>
  </div>
  <div class="form-container sign-in-container" >
    <form class="form" action="loginOk" method="post">
      <h1>Sign in</h1>
      <div class="social-container">
      </div>      
      <input class="input" type="text" class="form-control-my" id="login_id" name="id" placeholder="아이디" />
      <input class="input" type="password" class="form-control-my" id="login_pwd" name="pwd" placeholder="비밀번호" />
      <a class="forget" href="findIdPw">아이디/비밀번호 찾기</a>
      <button type="submit" class="button">로그인</button><p></p>
      <button type="submit" class="button">비회원주문</button>     
      
    </form>
  </div>
  <div class="overlay-container">
    <div class="overlay">
      <div class="overlay-panel overlay-left" >
        <h1>Welcome Back!</h1>
        <p class="p">To keep connected with us please login with your personal info</p>
        <button class="button" id="signIn">Sign In</button>
      </div>
      <div class="overlay-panel overlay-right" >
        <h1>Hello, EUMSAE</h1>
        <p class="p">Enter your personal details and start journey with us</p>
        <button class="button" id="signUp">Sign Up</button>
      </div>
    </div>
  </div>
</div>
<div class="add-area mb-100"></div>


    <jsp:include page="../include/shopFooter.jsp"></jsp:include>
    <script src="../resources/js/login.js"></script>
    <script src="<%=pjName%>/resources/js/user.js"></script> 
	
</body>

</html>