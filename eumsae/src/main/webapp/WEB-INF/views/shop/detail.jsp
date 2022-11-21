<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/animate.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.carousel.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.theme.default.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/magnific-popup.css" />     
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
                <img src="<%=pjName%>/resources/lpImg/${select.cjpg}.jpg" width="200" height="200"/><br />
                
              </div>
              <div class="song-play-area">
                <div class="song-name">
                  <p>${select.stitle}</p>
                </div>
                <audio preload="auto" controls>
                  <source
                    src="<%=pjName%>/resources/lpMp3/${select.cmp3}.mp3"
                    type="audio/mp3"
                  />                
                </audio>			
              </div>
             

              <!-- Blog Content -->
              <div class="blog-content">               
                <!-- Post Title -->
                <a href="#" class="post-title"> LP 제목 : ${select.title} </a>
                <!-- Post Meta -->
                <div class="post-meta d-flex mb-30">
                  <p class="post-author">${select.genre}</p>
                  <c:set var="year" value="${fn:substring(select.lpdate,0,4)}"/>
                  <c:choose>
                  <c:when test="${year < 1990}">         
                  <p class="tags">1980년대</p>
                  </c:when>
                  <c:when test="${year >=1990 and year <2000}">         
                  <p class="tags">1990년대</p>
                  </c:when>
                  <c:when test="${year >=2000 and year <2010}">         
                  <p class="tags">2000년대</p>
                  </c:when>
                  <c:when test="${year >=2010 and year <2020}">         
                  <p class="tags">2010년대</p>
                  </c:when>
                  <c:when test="${year >=2020}">         
                  <p class="tags">최신</p>
                  </c:when>
                  </c:choose>
                  <p class="tags">${select.region}</p>
                
                  <!-- Post Excerpt -->
                  <p class="post-meta">
                   ${select.content}
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
                        <td>${select.price} 원</td>
                      </tr>
                      <tr>
                        <td>배송비</td>
                        <td>2500원</td>
                      </tr>
                    </table>
				 
                    <br/>
                    
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
        
  </body>
</html>
