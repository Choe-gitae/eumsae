<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String pjName = "/eumsae"; %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

			<!-- 상품 관리 탭 시작 -->
			<div class="container-fluid pt-4 px-4">
				<div class="alert alert-light" role="alert">상품 등록 페이지</div>
				<div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
					<h6 class="mb-4">상품 등록</h6>
					<form action="insertLp" method="post" enctype="multipart/form-data">
						<div class="form-floating mb-3">
							<select class="form-select" id="floatingSelect" name="genre"
								aria-label="장르">
								<option selected>장르</option>
								<option value="POP">POP</option>
								<option value="Rock">ROCK</option>
								<option value="HipHop">HipHop</option>
								<option value="Ballad">Ballad</option>
								<option value="국내가요">국내가요</option>
								<option value="Fork">Fork</option>
								<option value="RnB">RnB</option>
								<option value="Elec">일렉트로</option>
								<option value="Ost">OST</option>
								<option value="트로트">트로트</option>
							</select> <label for="floatingSelect">장르</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="title" placeholder="제목" /> <label
								for="floatingInput">제목</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="singer" placeholder="가수" /> <label
								for="floatingInput">가수</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="region" placeholder="지역" /> <label
								for="floatingInput">지역</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="content" placeholder="소개" /> <label
								for="floatingInput">소개</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="lpdate" placeholder="발매일자" /> <label
								for="floatingInput">발매일자</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="cnt" placeholder="재고" /> <label
								for="floatingInput">재고</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="price" placeholder="가격" /> <label
								for="floatingInput">가격</label>
						</div>
						<div class="mb-3">
							<label for="formFile" class="form-label">LP 사진</label> <input
								class="form-control bg-dark" type="file" id="formFile"
								name="fjpg" required />
						</div>
						<div class="mb-3">
							<label for="formFile" class="form-label">LP 음원</label> <input
								class="form-control bg-dark" type="file" id="formFile"
								name="fmp3" />
						</div>
						<button type="submit" class="btn btn-success">등록</button>
						<button type="button" class="btn btn-warning">취소</button>
					</form>
				</div>
			</div>
			<!-- Content End -->
		</div>
	</div>

	<jsp:include page="../include/mgrScript.jsp"></jsp:include>
</body>
</html>
