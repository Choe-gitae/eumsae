<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String pjName = "/eumsae"; %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title -->
        <title>Eumsae</title>

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
    <!-- ##### Blog Area Start ##### -->
    <div class="blog-area section-padding-100">
      <div class="container">
        <div class="row">
          <div class="col-9">
            <!-- Single Post Start -->
            <div class="single-blog-post mb-100 wow fadeInUp" data-wow-delay="100ms">
              <!-- Post Thumb -->
              <div class="blog-post-thumb mt-30">
                <img src="resources/upjpg/d07dda95-27fb-48f4-a596-0d76e692a2ea_k80a.jpg" alt="" /><br />
                <!-- 눌렀을 때, src /kor/80/k80a 를 변경시켜야 함 -->
              </div>
              <div class="song-play-area">
                <div class="song-name">
                  <p>노래제목(DB)</p>
                </div>
                <audio preload="auto" controls>
                  <source
                    src="resources//00-one-music-gh-pages/audio/dummy-audio.mp3"
                    type="audio/mp3"
                  />
                  <!--  눌렀을 때 , 음원 src 변경 필요 -->
                </audio>
              </div>

              

              <!-- Blog Content -->
              <div class="blog-content">
                <!-- Post Title -->
                <a href="#" class="post-title"> LP 제목 (ex) 김현식 3집</a>
                <!-- Post Meta -->
                <div class="post-meta d-flex mb-30">
                  <p class="post-author">By 장르</p>
                  <p class="tags">in 연대</p>
                  <p class="tags">분야 :</p>
                  <!--  국내면 국내 해외면 해외를 여기에 표기를 할까 고민중... -->
                  <!-- Post Excerpt -->
                  <p class="post-meta">
                    나랏말싸미 듕귁에 달아 서로 사맛디 아니할수ㅖ 이를 니르고져 홇쀄이셔도.
                  </p>
                  <!--  LP 내용 -->
                </div>
              </div>
            </div>
          </div>
          <div class="col-3 section-padding-100">
                <div class="blog-sidebar-area">
                  <!-- Widget Area -->
                  <form name="frm" action="cart.do">
                    <table border="1">
                      <tr>
                        <td>가격</td>
                        <td>가격(DB)</td>
                      </tr>
                      <tr>
                        <td>배송비</td>
                        <td>배송비(DB)</td>
                      </tr>
                    </table>

                    <br />
                    <input type="submit" class="btn" value="장바구니" />
                  </form>
                </div>
              </div>
        </div>
      </div>
    </div>
    <!-- ##### Blog Area End ##### -->
    <jsp:include page="../include/shopFooter.jsp"></jsp:include>

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="resources/00-one-music-gh-pages/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="resources/00-one-music-gh-pages/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="resources/00-one-music-gh-pages/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="resources/00-one-music-gh-pages/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="resources/00-one-music-gh-pages/js/active.js"></script>
  </body>
</html>
