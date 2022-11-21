<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
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
    <link rel="icon" href="resources/img/core-img/favicon.ico" />

    <!-- Stylesheet -->
    <link rel="stylesheet" href="../resources/00-one-music-gh-pages/css/style.css" />
    <link rel="stylesheet" href="../resources/00-one-music-gh-pages/css/bootstrap.min.css" />
  </head>
<script src="http://code.jquery.com/jquery-latest.js"></script> 
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
  <body>
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
              

                     
                        </div><br/>
                        <br/>
                        <br/>
                        <br/>
                        
                        <div id="rightdiv">

              
              
              
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
                        <td>가격(DB)</td>
                      </tr>
                      <tr>
                        <td>배송비</td>
                        <td>배송비(DB)</td>
                      </tr>
                    </table>

                    <br />
                    <input type="submit" class="btn" value="바로구매" />
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
