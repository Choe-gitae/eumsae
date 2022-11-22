<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

			<!-- 매출 관리 탭 시작 -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-secondary rounded h-100 p-4">
					<h6 class="mb-4">매출 관리</h6>
					<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
						<li class="nav-item" role="presentation">
							<button class="nav-link active" id="product-sales-list-tab"
								data-bs-toggle="pill" data-bs-target="#product-sales-list"
								type="button" role="tab" aria-controls="product-sales-list"
								aria-selected="true">판매 내역</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="product-insert-tab"
								data-bs-toggle="pill" data-bs-target="#product-sales"
								type="button" role="tab" aria-controls="product-sales"
								aria-selected="false">매출</button>
						</li>

					</ul>

					<!-- 탭 컨텐츠 시작 -->
					<div class="tab-content" id="users-tabContent">
						<!-- 판매 내역 탭 컨텐츠 시작 -->
						<div class="tab-pane fade show active" id="product-sales-list"
							role="tabpanel" aria-labelledby="product-sales-list-tab">
							<!-- 판매내역 테이블 시작 -->
							<div class="container-fluid pt-4 px-4">
								<div class="bg-secondary rounded h-100 p-4">
									<h6 class="mb-4">판매 내역 테이블</h6>
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">장르</th>
													<th scope="col">가수</th>
													<th scope="col">제목</th>
													<th scope="col">지역</th>
													<th scope="col">발매일자</th>
													<th scope="col">가격(원)</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row">3</th>
													<td>HipHop</td>
													<td>세즈카</td>
													<td>상사병</td>
													<td>KOR</td>
													<td>2022.06.25.</td>
													<td>50000</td>
												</tr>
												<tr>
													<th scope="row">2</th>
													<td>K-POP</td>
													<td>몰라?</td>
													<td>레후</td>
													<td>KOR</td>
													<td>2022.06.24.</td>
													<td>150000</td>
												</tr>
												<tr>
													<th scope="row">1</th>
													<td>Jazz</td>
													<td>쨎즈</td>
													<td>줴즈</td>
													<td>US</td>
													<td>2022.06.23.</td>
													<td>12350000</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- 매출 탭 컨텐츠 시작 -->
						</div>
						<div class="tab-pane fade" id="product-sales" role="tabpanel"
							aria-labelledby="product-sales-tab">
							<div class="container-fluid pt-4 px-4">
								<div class="bg-secondary rounded h-100 p-4">
									<h6 class="mb-4">매출</h6>
									<table class="table" style="text-align: center;">
										<thead>
											<tr>
												<th>판매 갯수(개)</th>
												<th>총 판매 금액(원)</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>3</td>
												<td>100000000</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- 매출 탭 컨텐츠 끝 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 탭 컨텐츠 끝 -->
	<!-- 매출 관리 탭 끝 -->
	<!-- Content End -->

	<jsp:include page="../include/mgrScript.jsp"></jsp:include>
</body>
</html>
