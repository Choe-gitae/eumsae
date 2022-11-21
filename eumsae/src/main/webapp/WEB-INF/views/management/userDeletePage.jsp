<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String pjName = "/eumsae";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>EUMSAE 관리자 페이지</title>
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
				<div class="alert alert-light" role="alert">회원 삭제 페이지</div>
				<div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
					<h6 class="mb-4">회원 검색</h6>
					<form action="#" method="post">
						<select class="form-select mb-3" name="selectType">
							<option value="userId" selected>아이디</option>
							<option value="userName">이름</option>
							<option value="userTel">전화번호</option>
							<option value="userAddr">주소</option>
						</select> <input class="form-control bg-dark border-0" type="search"
							placeholder="Search" />
						<button type="submit" class="btn btn-info" style="margin: 10px">검색</button>
					</form>
				</div>
			</div>
			<div class="container-fluid pt-4 px-4">
				<div class="bg-secondary rounded h-100 p-4">
					<h6 class="mb-4">회원 정보 테이블</h6>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">아이디</th>
									<th scope="col">비밀번호</th>
									<th scope="col">별명</th>
									<th scope="col">이름</th>
									<th scope="col">성별</th>
									<th scope="col">주소</th>
									<th scope="col">전화번호</th>
									<th scope="col">이메일</th>
									<th scope="col">가입일</th>
									<th scope="col">삭제</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>bkjeon</td>
									<td>1234</td>
									<td>웁스</td>
									<td>전병욱</td>
									<td>남성</td>
									<td>지구 어딘가</td>
									<td>알빠노</td>
									<td>몰라</td>
									<td>오늘</td>
									<td><button class="btn btn-primary">삭제</button></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../include/mgrScript.jsp"></jsp:include>
</body>
</html>
