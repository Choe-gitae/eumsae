<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String pjName = "/eumsae";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>EUMSAE MANAGING</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<!-- Favicon -->
<link rel="icon" href="<%=pjName%>/resources/images/favicon.ico" />

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
	rel="stylesheet" />

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />

<!-- Libraries Stylesheet -->
<link
	href="<%=pjName%>/resources/00-darkpan-1.0.0/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet" />
<link
	href="<%=pjName%>/resources/00-darkpan-1.0.0/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link
	href="<%=pjName%>/resources/00-darkpan-1.0.0/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Template Stylesheet -->
<link href="<%=pjName%>/resources/00-darkpan-1.0.0/css/style.css"
	rel="stylesheet" />
</head>
<body>
	<div class="container-fluid position-relative d-flex p-0">
		<jsp:include page="../include/mgrSidebar.jsp"></jsp:include>

		<!-- 메인화면 -->
		<div class="content" id ="content">
			<jsp:include page="../include/mgrNavbar.jsp"></jsp:include>
			<div class="container-fluid pt-4 px-4">
				<div class="alert alert-light" role="alert">게시판 관리 페이지</div>
				<div class="bg-secondary rounded h-100 p-4">
					<form action="boardWishPage" method="post">
                            	<div class="container" >
                            		<table class="table table-striped">
                            			<thead>
                            			<tr>
                            				<th>글번호</th>
                            				<th>닉네임</th>
                            				<th>요청사항</th>
                            				<th>내용</th>
                            				<th>답글</th>
                            				<th>글 작성 시간</th>
                            				<th>답글 작성 시간</th>
                            			</tr>
                            			</thead>
                            			<tbody>
                            			<c:forEach var="list" items="${list}" varStatus="status">
						                    <tr class="commentLine">
						                      <td class="wboardNo">${list.wboardNo}</td>
						                      <td class="nickName">${list.nick}</td>
						                      <td class="title">${list.title}</td>
						                      <td class="article">${list.article}</td>
						                      <td>${list.ccomment}</td>
						                      <td>${list.awriteDate}</td>
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
					                     <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="boardWishPage?pageNo=${pageVO.firstPageNo - pageVO.pageNavSize}"> <span aria-hidden="true">&laquo;</span>
					                     </a></li>
					                     </c:if>
					                     <c:forEach var="page" begin="${pageVO.firstPageNo}" end="${pageVO.lastPageNo}" >
					                     <c:if test="${page > 0}">
					                     <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="boardWishPage?pageNo=${page}">${page}</a></li>
					                     </c:if>
					                     </c:forEach>
					                     <c:if test="${pageVO.hasNextPageNav==true}">
					                     <li class="page-item"><a class="btn oneMusic-btn-page mt-15" href="boardWishPage?pageNo=${pageVO.firstPageNo + pageVO.pageNavSize}"> <span aria-hidden="true">&raquo;</span>
					                     </a></li>
					                     </c:if>
					                  		</ul>
										</nav>
										<!-- 기태형거 페이지네이션 끝 -->
                            </form>
                            <h3>요청사항 : <span  class="request"></span></h3> 
					<hr />
					<h6 >닉네임 : <span class="nickNameSet"></span></h6>
					<hr/>
					<h6 >내용 : <span class="articleSet"></span></h6>
					<hr/>
					<form method="post" id="sendForm" >
						<div class="form-floating">
						<input type="hidden" id="wboardNo" name="wboardNo">
							<textarea class="form-control" id="ccomment" name="ccomment" style="height: 150px;"></textarea>
							<label for="ccomment">댓글</label>
						</div>
						<div class="text-lg-end">
							<button id="deleteList" type="button" class="btn btn-danger">삭제</button>
							<button id="addReply" type="button" class="btn btn-info" style="margin: 10px; ">등록</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../include/mgrScript.jsp"></jsp:include>
	
</body>
</html>