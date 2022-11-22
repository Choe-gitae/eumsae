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

		<!-- Content Start -->
		<div class="content">
			<jsp:include page="../include/mgrNavbar.jsp"></jsp:include>
			<div class="container-fluid pt-4 px-4">
				<div class="alert alert-light" role="alert">게시판 관리 페이지</div>
				<div class="bg-secondary rounded h-100 p-4">
					<h3>제목</h3>
					<hr />
					<h6>작성자</h6>
					<hr />
					<form>
						<div class="form-floating">
							<textarea class="form-control" placeholder="여기에 댓글을 입력해 주세요"
								id="comment" name="comment" style="height: 150px;"></textarea>
							<label for="comment">댓글</label>
						</div>
						<div class="text-lg-end">
							<button type="submit" class="btn btn-info" style="margin: 10px; ">등록</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../include/mgrScript.jsp"></jsp:include>
</body>
</html>