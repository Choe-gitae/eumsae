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
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/style.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-one-music-gh-pages/style.css" />
        
</head>

<body>
    <jsp:include page="../include/shopHeader.jsp" />

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(resources/00-one-music-gh-pages/img/bg-img/breadcumb3.jpg);">
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Login Area Start ##### -->
    <section class="login-area section-padding-100">
        <div class="container" style="positon:absolute; width:1600px;">
            <div class="row justify-content-center" style="
            width: 1709px;
            margin-left: -289px;
        ">
                <div class="col-12 col-lg-8" style="
                padding-left: 0px;
                width: 1571px;
                padding-right: 0px;
            ">
                    <div class="login-content" style="
                    padding-left: 50px;
                    padding-right: 50px;
                    padding-top: 40px;
                    padding-bottom: 40px;
                ">
                        <!-- Login Form -->
                        <div class="requestBoard-form">
                            <form action="requestBoardWrite.jsp" method="post">
                            	<div class="container" >
                            		<table class="table table-striped">
                            			<thead>
                            			<tr>
                            				<th>글번호</th>
                            				<th>글작성자</th>
                            				<th>요청LP & 하고싶은말</th>
                            				<th>작성 시간</th>
                            			</tr>
                            			</thead>
                            			<tbody>
                            			<tr>
                            				<td>156</td>
                            				<td>최기태</td>
                            				<td>마이클잭슨-빌리진 부탁드려용~</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			<tr>
                            				<td>155</td>
                            				<td>전병욱</td>
                            				<td>블랍블라-부탁드려용</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			<tr>
                            				<td>154</td>
                            				<td>이지효</td>
                            				<td>블라블라-부탁드려용~</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			<tr>
                            				<td>153</td>
                            				<td>변정환</td>
                            				<td>집 가게-부탁드려용~ddddddddddddddddddddddddddddddddddddddddddddd</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			<tr>
                            				<td>153</td>
                            				<td>변정환</td>
                            				<td>집 가게-부탁드려용~ddddddddddddddddddddddddddddddddddddddddddddd</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			<tr>
                            				<td>153</td>
                            				<td>변정환</td>
                            				<td>집 가게-부탁드려용~ddddddddddddddddddddddddddddddddddddddddddddd</td>
                            				<td>2022/11/15 18:30</td>
                            			</tr>
                            			</tbody>
                            		</table>
                            		<hr/>
                            		
                            	</div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">
                                      <li class="page-item">
                                        <a class="btn oneMusic-btn-page mt-15" href="#" aria-label="Previous">
                                          <span aria-hidden="true">&laquo;</span>
                                        </a>
                                      </li>
                                      <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="#">1</a></li>
                                      <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="#">2</a></li>
                                      <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="#">3</a></li>
                                      <li class="page-item">
                                        <a class="btn oneMusic-btn-page mt-15" href="#" aria-label="Next">
                                          <span aria-hidden="true">&raquo;</span>
                                        </a>
                                      </li>
                                    </ul>
                                  </nav>
                                <a href="requestBoardWrite"><button type="button" class="btn oneMusic-btn mt-15" style="left: 450px;">글쓰기</button></a><br/>
                            </form>
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