<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String pjName = "/eumsae";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>EUMSAE MANAGING</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<!-- Favicon -->
<link rel="icon" href="<%=pjName%>/resources/images/favicon.ico" />
</head>

<body>
	<div class="container-fluid position-relative d-flex p-0">
		<jsp:include page="../include/mgrSidebar.jsp"></jsp:include>

		<!-- Content Start -->
		<div class="content">
			<jsp:include page="../include/mgrNavbar.jsp"></jsp:include>

			<div class="container-fluid pt-4 px-4">
				<div class="alert alert-light" role="alert">매출 차트 페이지</div>
				<div class="bg-secondary text-center rounded p-4">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<h6 class="mb-0">최근 장르별 매출</h6>
					</div>
					<canvas id="recentSalesChart"></canvas>
				</div>
			</div>
			<div class="container-fluid pt-4 px-4">
				<div class="bg-secondary text-center rounded p-4">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<h6 class="mb-0">월별 매출</h6>
					</div>
					<canvas id="monthsSalesChart"></canvas>
				</div>
			</div>
		</div>
	</div>
	<!-- Content End -->
<%-- 	<c:out value="${recentSalesMap['date']}" /> --%>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
	<jsp:include page="../include/mgrScript.jsp"></jsp:include>
	<script type="text/javascript">
		$(function () {
			// RGBA 랜덤생성 함수
			function randomRGBA() {
				var rgb1 = Math.floor(Math.random() * 255 + 1);
				var rgb2 = Math.floor(Math.random() * 255 + 1);
				var rgb3 = Math.floor(Math.random() * 255 + 1);
				return "rgba(" + rgb1 + "," + rgb2 + "," + rgb3 + "," + "1)";
			}
			
			
			// 월별판매 차트 라벨배열 & 데이터
			var monthsSalesChartLabels = [];
			var monthsSalesChartDate = [];

			<c:forEach var="monthsSalesList" items="${monthsSalesList}">
				monthsSalesChartLabels.push("${monthsSalesList.MONTH}");
			</c:forEach>
			console.log(monthsSalesChartLabels);
			
			<c:forEach var="monthsSalesList" items="${monthsSalesList}">
				monthsSalesChartDate.push(${monthsSalesList.TOTAL});
			</c:forEach>
			console.log(monthsSalesChartDate);
			
			
			// 최근 장르별 차트 라벨배열
			var recentSalesChartLabels = [];

			<c:forEach var="date" items="${recentSalesMap['date']}">
				recentSalesChartLabels.push("${date}");
			</c:forEach>
			console.log(recentSalesChartLabels);
			
			
			// 차트 footer 합계 옵션
			var footer = (tooltipItems) => {
				let sum = 0;

				tooltipItems.forEach(function (tooltipItem) {
					sum += tooltipItem.parsed.y;
				});
				return "합계: " + sum;
			};

			
			// 월별 매출 차트 세팅
			var monthsSalesChart = document.getElementById("monthsSalesChart").getContext("2d");
			var monthsSalesChartData = {
				labels: monthsSalesChartLabels,
				datasets: [
					// 모델로 받아온 데이터 차트 데이터셋에 세팅
					{
						label: "매출",
						data: monthsSalesChartDate,
						backgroundColor: randomRGBA(),
						pointStyle: 'circle',
						pointRadius: 10,
						pointHoverRadius: 15,
					},
				],
			};

			
			// 월별 매출 차트 생성
			new Chart(monthsSalesChart, {
				type: 'line',
				data: monthsSalesChartData,
				options: {
					responsive: true,
					interaction: {
						intersect: false,
						mode: 'index',
					},
				},
			});
			
			
			// 최근 장르별 매출 차트 세팅
			var recentSalesChart = document.getElementById("recentSalesChart").getContext("2d");
			var recentSalesChartData = {
				labels: recentSalesChartLabels,
				datasets: [
					// 모델로 받아온 데이터 차트 데이터셋에 세팅
					<c:forEach var="recentSalesMap" items="${recentSalesMap}" begin="1">
					{
						label: '${recentSalesMap.key}',
						data: ${recentSalesMap.value},
						backgroundColor: randomRGBA(),
					},
					</c:forEach>
				],
			};
			
			
			// 최근 장르별 매출 차트 생성
			new Chart(recentSalesChart, {
				type: "bar",
				data: recentSalesChartData,
				options: {
					interaction: {
						intersect: false,
						mode: "index",
					},
					plugins: {
						tooltip: {
							callbacks: {
								footer: footer,
							},
						},
					},
					responsive: true,
					scales: {
						x: {
							stacked: true,
						},
						y: {
							stacked: true,
						},
					},
				},
			});
		});
	</script>
</body>

</html>