<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String pjName = "/eumsae"; %>

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

		<!-- Content Start -->
		<div class="content">
			<jsp:include page="../include/mgrNavbar.jsp"></jsp:include>

			<div class="container-fluid pt-4 px-4">
				<div class="alert alert-light" role="alert">주문내역 상세보기 페이지</div>
				<div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
					<h6 class="mb-4">검색</h6>
					<form action="searchLp?page=deleteLpPage" method="post">
						<select class="form-select mb-3" name="searchCon">
							<option value="userId" selected>회원ID</option>
							<option value="orderNo">주문번호</option>
							<option value="genre">장르</option>
							<option value="singer">가수</option>
							<option value="title">제목</option>
						</select> <input class="form-control bg-dark border-0" name="searchKey"
							type="search" placeholder="Search" />
						<button type="submit" class="btn btn-info" style="margin: 10px">검색</button>
					</form>
				</div>
			</div>

			<div class="container-fluid pt-4 px-4">

				<div class="bg-secondary text-center rounded p-4">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<h6 class="mb-0">주문내역 상세보기</h6>
					</div>
					<div class="table-responsive">
						<table
							class="table text-start align-middle table-bordered table-hover mb-0">
							<thead>
								<tr class="text-white">
									<th scope="col">주문일</th>
									<th scope="col">주문번호</th>
									<th scope="col">회원ID</th>
									<th scope="col">표지</th>
									<th scope="col">장르</th>
									<th scope="col">가수</th>
									<th scope="col">제목</th>
									<th scope="col">가격</th>
									<th scope="col">개수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2022.11.11. 18:38</td>
									<td>1111</td>
									<td>JhonDoe</td>
									<td><img src="<%= pjName %>/resources/lpImg/이미지이름.jpg"
										class="mgr-del-table-img" /></td>
									<td>장르</td>
									<td>가수</td>
									<td>제목</td>
									<td>50000</td>
									<td>개수</td>
								</tr>
							</tbody>
						</table>
					</div>

				</div>
				<div class="bg-secondary text-center rounded p-4">
					<nav>
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="btn mt-15" href="#"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item"><a class="btn mt-15" href="#">1</a></li>
							<li class="page-item"><a class="btn mt-15" href="#">2</a></li>
							<li class="page-item"><a class="btn mt-15" href="#">3</a></li>
							<li class="page-item"><a class="btn mt-15" href="#"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- Content End -->

	<jsp:include page="../include/mgrScript.jsp"></jsp:include>
</body>
</html>
