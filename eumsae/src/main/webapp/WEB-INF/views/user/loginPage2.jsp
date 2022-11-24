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
    <title>EUMSAE Login page</title>

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
    <form class="form" action="#">
      <h1 class="h1">Create Account</h1>
      <div class="social-container">

      </div>
      <span class="span">or use your email for registration</span>
      <input class="input" type="text" placeholder="Name" />
      <input class="input" type="email" placeholder="Email" />
      <input class="input" type="password" placeholder="Password" />
      <button class="button">Sign Up</button>
    </form>
  </div>
  <div class="form-container sign-in-container" >
    <form class="form" action="#">
      <h1>Sign in</h1>
      <div class="social-container">

      </div>
      <span class="span">or use your account</span>
      <input class="input" type="email" placeholder="Email" />
      <input class="input" type="password" placeholder="Password" />
      <a class="forget"href="#">Forgot your password?</a>
      <button class="button">Sign In</button>
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
        <h1>Hello, Friend!</h1>
        <p class="p">Enter your personal details and start journey with us</p>
        <button class="button" id="signUp">Sign Up</button>
      </div>
    </div>
  </div>
</div>
<div class="add-area mb-100"></div>


    <jsp:include page="../include/shopFooter.jsp"></jsp:include>
    <script src="../resources/js/login.js"></script>
</body>

</html>