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


    <!-- Stylesheet -->
    <link rel="stylesheet" href="../resources/00-one-music-gh-pages/css/style.css" />
    <link rel="stylesheet" href="../resources/00-one-music-gh-pages/css/bootstrap.min.css" />
  </head>
<script src="http://code.jquery.com/jquery-latest.js"></script> 
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

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
              

                     
                        </div><br/>
                        <br/>
                        <br/>
                        <br/>
                        
                        <div id="rightdiv">

              
              
              
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

<table class="menutbl">
   <tr id="menutitle">
      <th colspan=4 id="titleText"><img src="./images/10.JPG" id='logo' ></th>
   </tr>
   <tr class="menus">
      <td id='menu1' class='menu'>
         <img src="./images/0.PNG" /class='lp'> <br/>
         <span id="label1" class='menuName' value = '김현식3집'>김현식3집</span><br/>
         <span id="price1" class='price' value = '20000'>₩ 20,000</span>
         <br/>
         <select name="amount" id="amount" class='amount'>
            <option class='opt' value='0'>0</option>
            <option class='opt' value='1'>1</option>
            <option class='opt' value='2'>2</option>
            <option class='opt' value='3'>3</option>
            <option class='opt' value='4'>4</option>
            <option class='opt' value='5'>5</option>
         </select>
      </td>
      </tr>
</table>          
     
          
<table id="listTable">
   <tr id="listtitle">
      <th colspan=6 id="titleText"><img src="./images/11.JPG" id='olderList' ></th>
   </tr>
   <tr id="totallist">
      <td colspan='6' id='sum'>
         합 계 : <input type='text'  value=0 id='total' /> 원 
         <input type='button' value='주문하기'  id='btn'/>
      </td>
   </tr>
   <tr id="listtr">
      <td width="120">메 뉴</td>
      <td width="20"></td>
      <td width="40">수 량</td>
      <td width="20"></td>
      <td width="100">금 액</td>
      <td width="80">취 소</td>
   </tr>
   
</table>
          
          
          <div class="col-3 section-padding-100">
                <div class="blog-sidebar-area">                
                  <!-- Widget Area -->
                  <form name="frm" action="cart.do">
                    <table border="1">
                    <tr>
                    <td>상품번호</td>
                    <td id="lpno">상품번호(DB)</td>
                    </tr>
                     <tr>
                    <td>상품이름</td>
                    <td>상품이름(DB)</td>
                    </tr>
                      <tr>
                        <td>가격</td>
                        <td>${select.price} 원</td>
                      </tr>
                      <tr>
                        <td>배송비</td>
                        <td>2500원</td>
                      </tr>
                    </table>


                    <br />
                    <input type="submit" class="btn" value="바로구매" />
                  </form>

				 
                    <br/>
                    
                    <input type="submit" class="btn" value="장바구니" />
                  </form>              

                </div>
              </div>
              
              <p class="addToCart">
 				<button type="button" class="addCart_btn">카트에 담기</button>
 
<script>
				  $(".addCart_btn").click(function(){
// 				   	var infono = $("#infono").getElementById.val();
// 				   	var amount = $(".amount").val();
// 				   	alert("안녕");
      
// 				   	var data = {
// 				   		infono : infono,
// 				     	amount : amount
// 				    };
// 					var data = {lpno:$(".xxxx").val(), 
// 							amount : $(".yyyy").val(),
// 							id : $(".xxxx").val()};
				   
				   $.ajax({
				    url 	: "/eumsae/user/addCart",
				    type 	: "post",
				    data 	: {lpno:1,amount:1,id:"test1"},
				    success : function(result){
				     alert("카트 담기 성공");
				     $(".amount").val("1");
				    },
				    error : function(){
				     alert("카트 담기 실패");
    				}
   					});
  					});
 </script>
</p>
        </div>
      </div>
    </div>
   
    <!-- ##### Blog Area End ##### -->
    <jsp:include page="../include/shopFooter.jsp"></jsp:include>

    <!-- ##### All Javascript Script ##### -->

    <!-- jQuery-2.2.4 js -->
     <script src="/eumsae/resources/js/jquery_1.js"></script>
    
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
