<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet" />

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

        <!-- Libraries Stylesheet -->
        <link href="<%= pjName %>/resources/00-darkpan-1.0.0/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
        <link href="<%= pjName %>/resources/00-darkpan-1.0.0/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="<%= pjName %>/resources/00-darkpan-1.0.0/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="<%= pjName %>/resources/00-darkpan-1.0.0/css/style.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container-fluid position-relative d-flex p-0">
            <jsp:include page="../include/mgrSidebar.jsp"></jsp:include>

            <!-- Content Start -->
            <div class="content">
                <jsp:include page="../include/mgrNavbar.jsp"></jsp:include>

                <!-- DaySales, Widgets Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="row g-4">
                        <div class="col-sm-12 col-md-6 col-xl-6">
                            <div class="h-100 bg-secondary rounded p-4">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <h6 class="mb-0">Calender</h6>
                                </div>
                                <div id="calender"></div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-line fa-3x text-primary"></i>
                                <div class="ms-3">
                                    <p class="mb-2">오늘 판매</p>
                                    <h6 class="mb-0">${todaySales} 원</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- DaySales, Widgets End -->

                <!-- Recent Sales Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-secondary text-center rounded p-4">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h6 class="mb-0">최근 판매내역</h6>
                            <a href="mgtSalesPage">전체 보기</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table text-start align-middle table-bordered table-hover mb-0">
                                <thead>
                                    <tr class="text-white">
                                        <th scope="col">판매일</th>
                                        <th scope="col">판매번호</th>
                                        <th scope="col">회원ID</th>
                                        <th scope="col">가격</th>
                                        <th scope="col">상세보기</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="list" items="${recentOrderList}">
                                    <tr>
                                        <td>${list.orderDate}</td>
                                        <td>${list.orderNo}</td>
                                        <td>${list.id}</td>
                                        <td>${list.orderTotalPrice}</td>
                                        <td><a class="btn btn-sm btn-info" href="searchOrderList?searchCon=order_no&searchKey=${list.orderNo}">Detail</a></td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- Recent Sales End -->
            </div>
            <!-- Content End -->
        </div>

        <jsp:include page="../include/mgrScript.jsp"></jsp:include>
    </body>
</html>
