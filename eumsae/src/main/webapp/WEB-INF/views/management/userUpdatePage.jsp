<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <% String pjName = "/eumsae"; %>

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
        <link href="<%=pjName%>/resources/00-darkpan-1.0.0/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
        <link href="<%=pjName%>/resources/00-darkpan-1.0.0/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="<%=pjName%>/resources/00-darkpan-1.0.0/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="<%=pjName%>/resources/00-darkpan-1.0.0/css/style.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container-fluid position-relative d-flex p-0">
            <jsp:include page="../include/mgrSidebar.jsp"></jsp:include>

            <!-- Content Start -->
            <div class="content">
                <jsp:include page="../include/mgrNavbar.jsp"></jsp:include>

                <div class="container-fluid pt-4 px-4">
                    <div class="alert alert-light" role="alert">회원 수정 페이지</div>
                    <div class="row g-4">
                        <div class="col-sm-12 col-xl-6">
                            <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                                <h6 class="mb-4">회원 검색</h6>
                                <form action="searchCustomer?page=userUpdatePage" method="post">
                                    <select class="form-select mb-3" name="searchCon">
                                        <option value="id" selected>아이디</option>
                                        <option value="name">이름</option>
                                        <option value="tel">전화번호</option>
                                        <option value="addr">주소</option>
                                    </select>
                                    <input class="form-control bg-dark border-0" type="search" name="searchKey" placeholder="Search" />
                                    <button type="submit" class="btn btn-info" style="margin: 10px">검색</button>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-12 col-xl-6">
                            <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                                <h6 class="mb-4">회원 수정</h6>
                                <form action="updateLp" method="post">
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control form-control-lg" id="floatingInput" name="id" placeholder="아이디" /> <label for="floatingInput">아이디</label>
                                    </div>
                                    <!-- 추가 -->

                                    <button type="submit" class="btn btn-warning" style="margin: 10px">수정 하기</button>
                                </form>
                            </div>
                        </div>
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
                                        <th scope="col">수정</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="list" items="${list}" varStatus="status">
                                        <tr>
                                            <th scope="row">${status.count}</th>
                                            <td>${list.id}</td>
                                            <td>${list.pwd}</td>
                                            <td>${list.nick}</td>
                                            <td>${list.birth}</td>
                                            <td>${list.name}</td>
                                            <td>${list.addr}</td>
                                            <td>${list.tel}</td>
                                            <td>${list.email}</td>
                                            <td><button class="btn btn-warning">수정</button></td>
                                        </tr>
                                    </c:forEach>
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
