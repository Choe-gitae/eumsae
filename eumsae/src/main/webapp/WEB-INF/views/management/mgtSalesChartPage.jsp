<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <% String pjName = "/eumsae"; %> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                    <div class="row g-4">
                        <div class="col-sm-6 col-xl-3">
                            <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-line fa-3x text-primary"></i>
                                <div class="ms-3">
                                    <p class="mb-2">오늘 판매</p>
                                    <h6 class="mb-0">원</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-secondary text-center rounded p-4">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h6 class="mb-0">최근 15일 매출</h6>
                        </div>
                        <canvas id="recent15Sales"></canvas>
                    </div>
                </div>
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-secondary text-center rounded p-4">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h6 class="mb-0">월별 매출</h6>
                        </div>
                        <canvas id="monthsSales"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <!-- Content End -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
        <jsp:include page="../include/mgrScript.jsp"></jsp:include>
        <script type="text/javascript">
            $(function () {
                var date = new Date();
                var year = date.getFullYear();
                var month = date.getMonth();
                var day = date.getDate();
                var recent15 = new Date(year, month, day - 15).toLocaleDateString().substr(6);
                var recent15Labels = [];
                for (let index = 15; index > 0; index--) {
                    recent15Labels.push(new Date(year, month, day - index).toLocaleDateString().substr(6));
                }

                console.log("${list[5][0]['GENRE']}.length");

                var footer = (tooltipItems) => {
                    let sum = 0;

                    tooltipItems.forEach(function (tooltipItem) {
                        sum += tooltipItem.parsed.y;
                    });
                    return "합계: " + sum;
                };

                // 최근 15일 매출
                var recent15 = document.getElementById("recent15Sales").getContext("2d");
                var recent15Data = {
                    labels: recent15Labels,
                    datasets: [
                        {
                            label: "POP",
                            data: [],
                            backgroundColor: "rgb(255, 51, 51)",
                        },
                        {
                            label: "ROCK",
                            data: [345, 657],
                            backgroundColor: "rgb(255, 153, 51)",
                        },
                        {
                            label: "HipHop",
                            data: [345, 345],
                            backgroundColor: "rgb(255, 255, 51)",
                        },
                        {
                            label: "Ballad",
                            data: [3234],
                            backgroundColor: "rgb(153, 255, 51)",
                        },
                        {
                            label: "국내가요",
                            data: [123],
                            backgroundColor: "rgb(51, 255, 255)",
                        },
                        {
                            label: "Fork",
                            data: [5345],
                            backgroundColor: "rgb(51, 153, 255)",
                        },
                        {
                            label: "RnB",
                            data: [3545],
                            backgroundColor: "rgb(153, 51, 255)",
                        },
                        {
                            label: "일렉트로",
                            data: [789],
                            backgroundColor: "rgb(51, 255, 153)",
                        },
                        {
                            label: "OST",
                            data: [2346],
                            backgroundColor: "rgb(255, 51, 153)",
                        },
                        {
                            label: "트로트",
                            data: [6783],
                            backgroundColor: "rgb(160, 160, 160)",
                        },
                    ],
                };
                new Chart(recent15, {
                    type: "bar",
                    data: recent15Data,
                    options: {
                        interaction: {
                            intersect: false,
                            mode: "index",
                        },
                        plugins: {
                            title: {
                                display: true,
                                text: "최근 15일 매출",
                            },
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
