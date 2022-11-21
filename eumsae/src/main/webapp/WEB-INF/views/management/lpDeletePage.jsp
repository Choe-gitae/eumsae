<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String pjName = "/eumsae"; %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>DarkPan - Bootstrap 5 Admin Template</title>
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
	href="<%= pjName %>/resources/00-darkpan-1.0.0/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet" />
<link
	href="<%= pjName %>/resources/00-darkpan-1.0.0/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link
	href="<%= pjName %>/resources/00-darkpan-1.0.0/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Template Stylesheet -->
<link href="<%= pjName %>/resources/00-darkpan-1.0.0/css/style.css"
	rel="stylesheet" />
</head>
<body>
	<div class="container-fluid position-relative d-flex p-0">
		<jsp:include page="../include/mgrSidebar.jsp"></jsp:include>

		<!-- Content Start -->
		<div class="content">
			<jsp:include page="../include/mgrNavbar.jsp"></jsp:include>
			<!-- 검색 Form 시작 -->
			<div class="container-fluid pt-4 px-4">
				<div class="alert alert-light" role="alert">상품 삭제 페이지</div>
				<div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
					<h6 class="mb-4">상품 검색</h6>
					<form action="searchLp?page=lpDeletePage" method="post">
						<select class="form-select mb-3" name="searchCon">
							<option value="singer" selected>가수</option>
							<option value="title">제목</option>
							<option value="genre">장르</option>
							<option value="region">지역</option>
						</select> <input class="form-control bg-dark border-0" name="searchKey"
							type="search" placeholder="Search" />
						<button type="submit" class="btn btn-info" style="margin: 10px">검색</button>
					</form>
				</div>
			</div>
			<span>${message}</span>
			<!-- 검색 Form 끝 -->
			<!-- 검색 테이블 시작 -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-secondary rounded h-100 p-4">
					<h6 class="mb-4">상품 정보 테이블</h6>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">표지</th>
									<th scope="col">장르</th>
									<th scope="col">가수</th>
									<th scope="col">제목</th>
									<th scope="col">지역</th>
									<th scope="col">발매일자</th>
									<th scope="col">가격</th>
									<th scope="col">삭제</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${list}" varStatus="status">
									<tr>
										<th scope="row">${status.count}</th>
										<td><img
											src="<%= pjName %>/resources/lpImg/${list.cjpg}.jpg"
											class="mgr-del-table-img" /></td>
										<td>${list.genre}</td>
										<td>${list.singer}</td>
										<td>${list.title}</td>
										<td>${list.region}</td>
										<td>${list.lpdate}</td>
										<td>${list.price}</td>
										<td><a href="deleteLp?page=lpDeletePage&infono=${list.infono}"><button
													class="btn btn-danger">삭제</button></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- 수정/삭제 테이블 끝 -->
		</div>
		<!-- Content End -->
	</div>

	<jsp:include page="../include/mgrScript.jsp"></jsp:include>
</body>
</html>
