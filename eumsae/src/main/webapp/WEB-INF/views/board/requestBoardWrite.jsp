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
        <link rel="stylesheet" href="<%=pjName%>/resources/00-one-music-gh-pages/style.css" />
        <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/resources/css1/font-awesome.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/animate.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.carousel.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.theme.default.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/magnific-popup.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/resources/css1/bootstrap-select.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/flaticon.css" />
</head>

<body>
    <jsp:include page="../include/shopHeader.jsp" />

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(../resources/00-one-music-gh-pages/img/bg-img/breadcumb3.jpg);" data-stellar-background-ratio="0.5">
     <div class="overlay"></div>
      <div class="container"></div>
         <div
            class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
               <p class="breadcrumbs mb-0"></p>
               <h2 style="position: relative;bottom: -318px;right: -19px;line-height: 0;color: white;font-size: 60px;">Wish Write</h2>
            </div>
         </div>
    
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Login Area Start ##### -->
    <section class="login-area section-padding-100">
        <div class="container" style="positon:absolute; width:1600px;">
            <div class="row justify-content-center" style="width: 1709px;margin-left: -289px;">
                <div class="col-12 col-lg-8" style="padding-left: 0px;width: 1571px;padding-right: 0px;">
                    <div class="login-content" style="padding-left: 50px;padding-right: 50px;padding-top: 40px;padding-bottom: 40px;">
                        <!-- Write Form -->
                        <div class="requestBoardWrite-form">
                            <form action="requestBoardSave" method="post">
                            	<div class="container" >
                            		<div class="form-group">
                                    <label for="write-title">요청사항</label>
                                    <input type="text" class="form-control-my" id="title" name="title" placeholder="요청사항을 입력하세요...">
                                	</div>
                                	<hr/>
                                	<div class="form-group">
                                    <label for="write-writer">작성자</label>
                                    <input type="text" class="form-control-my" id="id" name="id"  value="${login}" readonly>
                                	</div>
                                	<div class="form-group">
                                    <label for="write-content">내용</label>
                                    <textarea class="form-control-ta" id="article"  name="article" placeholder="내용을 입력하세요..." style="heigth: 500px;"></textarea>
                                	</div>
                            	</div>
                                <button id="insert-btn" type="submit" class="btn oneMusic-btn mt-15" style="left: 457px;">등록</button>
                            </form>
                                <a href="requestBoard"><button class="btn oneMusic-btn mt-15" style="left: 357px;top: -64px;">목록</button></a><br/>
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
