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

        <!-- Title -->
        <title>Eumsae detail page</title>


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
<!--         Core Style CSS -->
<!--     	<link rel="stylesheet" href="../resources/00-one-music-gh-pages/css/core-style.css"> -->
    </head>


  <body>
  	<jsp:include page="../include/shopHeader.jsp" />
    <!-- ##### Blog Area Start ##### -->
    <div class="blog-area section-padding-100">
      <div class="container">
        <div class="row">
          <div class="col-9">
         

          
<!-- Product Details Area Start -->
        <div class="single-product-area section-padding-100 clearfix">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mt-50">
                                <li class="breadcrumb-item"><a href="#">Main</a></li>
                                <li class="breadcrumb-item"><a href="#">LP List</a></li>
                                <li class="breadcrumb-item"><a href="#">LP Detail</a></li>
                                <li class="breadcrumb-item active" aria-current="page">김현식 3집</li>
                            </ol>
                        </nav>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-lg-7">
                        <div class="single_product_thumb">
                            <img src="<%=pjName%>/resources/lpImg/${select.cjpg}.jpg" width="500" height="500"/><br />
                        </div>
                    </div>
                    <div class="col-12 col-lg-5">
                        <div class="single_product_desc">
                            <!-- Product Meta Data -->
                            <div class="product-meta-data">
                                <div class="line"></div>
                                
                                <h6>김현식 3집</h6>
                                
                                <!-- Ratings -->
                                <div class="ratings-review mb-15 d-flex align-items-center justify-content-between">
                                    <div class="ratings">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </div>

                                </div>
                                <!-- Avaiable -->
                                <p class="avaibility"><i class="fa fa-circle"></i> In Stock</p>
                            </div>

                            <div class="short_overview my-5">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid quae eveniet culpa officia quidem mollitia impedit iste asperiores nisi reprehenderit consequatur, autem, nostrum pariatur enim?</p>
                            </div>

							<!-- price -->
							<p class="price" >₩ 20,000</p>
                            <!-- Add to Cart Form -->
                            <form class="cart clearfix" method="post">
<!--                                 <div class="cart-btn d-flex mb-50"> -->
<!--                                     <span>Qty</span> -->
<!--                                     <div class="quantity"> -->
<!--                                         <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-caret-down" aria-hidden="true"></i></span> -->
<!--                                         <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="quantity" value="1"> -->
<!--                                         <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-caret-up" aria-hidden="true"></i></span> -->
<!--                                     </div> -->
<span>
<table class="lptbl">
   <tr class="lps">
         <br/>
         Qty 
         <select name="amount" id="amount" class='amount'>
            <option class='opt' value='0'>0</option>
            <option class='opt' value='1'>1</option>
            <option class='opt' value='2'>2</option>
            <option class='opt' value='3'>3</option>
            <option class='opt' value='4'>4</option>
            <option class='opt' value='5'>5</option>
         </select>

      </tr>
</table>
</span>
<table id="listTable">

   <tr id="totallist">
      <td colspan='6' id='sum'>
         합 계 : <input type='text'  value=0 id='total' /> 원 
         <input type='button' value='주문하기'  id='btn'/>
      </td>   
</table>
<!--                                 </div> -->
                               <br/>   <button type="button" class="addCart_btn">Add to cart</button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Details Area End -->
            

<!-- <table class="lptbl"> -->
<!--    <tr id="lptitle"> -->
<!--       <th colspan=4 id="titleText"><img src="./images/10.JPG" id='logo' ></th> -->
<!--    </tr> -->
<!--    <tr class="lps"> -->
<!--       <td id='lp1' class='lp'> -->
<!--          <img src="./images/0.PNG" /class='lp'> <br/> -->
<!--          <span id="label1" class='lpName' value = '김현식3집'>김현식3집</span><br/> -->
<!--          <span id="price1" class='price' value = '20000'>₩ 20,000</span> -->
<!--          <br/> -->
<!--          <select name="amount" id="amount" class='amount'> -->
<!--             <option class='opt' value='0'>0</option> -->
<!--             <option class='opt' value='1'>1</option> -->
<!--             <option class='opt' value='2'>2</option> -->
<!--             <option class='opt' value='3'>3</option> -->
<!--             <option class='opt' value='4'>4</option> -->
<!--             <option class='opt' value='5'>5</option> -->
<!--          </select> -->
<!--       </td> -->
<!--       </tr> -->
<!-- </table>           -->
     
          
<!-- <table id="listTable"> -->
<!--    <tr id="listtitle"> -->
<!--       <th colspan=6 id="titleText"><img src="./images/11.JPG" id='olderList' ></th> -->
<!--    </tr> -->
<!--    <tr id="totallist"> -->
<!--       <td colspan='6' id='sum'> -->
<!--          합 계 : <input type='text'  value=0 id='total' /> 원  -->
<!--          <input type='button' value='주문하기'  id='btn'/> -->
<!--       </td> -->
<!--    </tr> -->
<!--    <tr id="listtr"> -->
<!--       <td width="120">메 뉴</td> -->
<!--       <td width="20"></td> -->
<!--       <td width="40">수 량</td> -->
<!--       <td width="20"></td> -->
<!--       <td width="100">금 액</td> -->
<!--       <td width="80">취 소</td> -->
<!--    </tr> -->
   
<!-- </table> -->
          
           

                    <br />
                    <input type="submit" class="btn" value="바로구매" />
                  </form>				 
                    <br/>
                    
                    <input type="submit" class="btn" value="장바구니" />                            

                </div>
              </div>
              
              <p class="addToCart">
 				 
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

<!--     jQuery-2.2.4 js -->
    <script src="/eumsae/resources/js/jquery_1.js"></script>
    
    <script src="resources/00-one-music-gh-pages/js/jquery/jquery-2.2.4.min.js"></script>
<!--     Popper js -->
    <script src="resources/00-one-music-gh-pages/js/bootstrap/popper.min.js"></script>
<!--     Bootstrap js -->
    <script src="resources/00-one-music-gh-pages/js/bootstrap/bootstrap.min.js"></script>
<!--     All Plugins js -->
    <script src="resources/00-one-music-gh-pages/js/plugins/plugins.js"></script>
<!--     Active js -->
    <script src="resources/00-one-music-gh-pages/js/active.js"></script>
    
 

        

  </body>
</html>
