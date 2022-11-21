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
				<div class="alert alert-light" role="alert">회원 등록 페이지</div>
				<div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
					<h6 class="mb-4">회원 등록</h6>
					<form action="#" method="post">
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="userId" placeholder="아이디" /> <label
								for="floatingInput">아이디</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="userPass" placeholder="비밀번호" /> <label
								for="floatingInput">비밀번호</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="userPassRe" placeholder="비밀번호확인" /> <label
								for="floatingInput">비밀번호확인</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="userNickName" placeholder="별명" /> <label
								for="floatingInput">별명</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="name" placeholder="이름" /> <label
								for="floatingInput">이름</label>
						</div>
						<fieldset class="row mb-3">
							<legend class="col-form-label col-sm-2 pt-0">성별</legend>
							<div class="col-sm-10">
								<div class="form-check">
									<input class="form-check-input" type="radio" name="gender"
										id="male" value="남성" checked /> <label
										class="form-check-label" for="male"> 남성 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="gender"
										id="female" value="여성" /> <label class="form-check-label"
										for="female"> 여성 </label>
								</div>
							</div>
						</fieldset>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="tel" placeholder="전화번호" /> <label
								for="floatingInput">전화번호</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control form-control-lg"
								id="floatingInput" name="email" placeholder="이메일" /> <label
								for="floatingInput">이메일</label>
						</div>

						<button type="submit" class="btn btn-success">등록</button>
						<button type="button" class="btn btn-warning">취소</button>
					</form>
				</div>
			</div>
		</div>
		<!-- Content End -->
	</div>

	<jsp:include page="../include/mgrScript.jsp"></jsp:include>
</body>
</html>
