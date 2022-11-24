<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%--         <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/style.css" /> --%>
        
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
               <h2 style="position: relative;bottom: -318px;right: -19px;line-height: 0;color: white;font-size: 60px;">Wish Board</h2>
            </div>
         </div>
    
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
                            <form action="requestBoard" method="post">
                            	<div class="container" >
                            		<table class="table table-striped">
                            			<thead>
                            			<tr>
                            				<th>글번호</th>
                            				<th>닉네임</th>
                            				<th>요청사항</th>
                            				<th>내용</th>
                            				<th>작성 시간</th>
<!--                             				<th>댓글</th> -->
<!--                             				<th>댓글 단 시간</th> -->
                            				
                            			</tr>
                            			</thead>
                            			<tbody>
                            			<c:forEach var="list" items="${list}" varStatus="status">
						                    <tr>
						                      <td>${list.wboardNo}</td>
						                      <td>${list.nick}</td>
						                      <td>${list.title}</td>
						                      <td>${list.article}</td>
						                      <td>${list.awriteDate}</td>
						                   </tr>
						                   <tr>
						                   	  <td>답글</td>
						                   	  <td>-</td>
						                   	  <td>-</td>
						                      <td>답변 : ${list.ccomment}</td>
						                      <td>${list.cwriteDate}</td>
						                    </tr>
						                 </c:forEach>
                            			</tbody>
                            		</table>
                            		<hr/>
                            	</div>
                                    <!-- 기태형거 페이지네이션 -->
										<nav>
											<ul class="pagination justify-content-center">
					                     <c:if test="${pageVO.hasPrevPageNav==true}">
					                     <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="requestBoard?pageNo=${pageVO.firstPageNo - pageVO.pageNavSize}"> <span aria-hidden="true">&laquo;</span>
					                     </a></li>
					                     </c:if>
					                     <c:forEach var="page" begin="${pageVO.firstPageNo}" end="${pageVO.lastPageNo}" >
					                     <c:if test="${page > 0}">
					                     <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="requestBoard?pageNo=${page}">${page}</a></li>
					                     </c:if>
					                     </c:forEach>
					                     <c:if test="${pageVO.hasNextPageNav==true}">
					                     <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="requestBoard?pageNo=${pageVO.firstPageNo + pageVO.pageNavSize}"> <span aria-hidden="true">&raquo;</span>
					                     </a></li>
					                     </c:if>
					                  		</ul>
										</nav>
										<!-- 기태형거 페이지네이션 끝 -->
                                <a href="requestBoardWrite?id=${login}"><button type="button" class="btn oneMusic-btn mt-15" style="left: 450px;">글쓰기</button></a><br/>
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