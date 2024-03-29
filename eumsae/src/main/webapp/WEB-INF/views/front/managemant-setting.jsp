<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <% String pjName = "/eumsae"; %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>DarkPan - Bootstrap 5 Admin Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />

        <!-- Favicon -->
        <link href="<%= pjName %>/resources/00-darkpan-1.0.0/img/favicon.ico" rel="icon" />

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
            <jsp:include page="managemant-base-sidebar.jsp"></jsp:include>

            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                    <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                        <h2 class="text-light mb-0">
                            <img src="<%= pjName %>/resources/img/bg-img/add.gif" class="sidebar-logo" />
                        </h2>
                    </a>
                    <a href="#" class="sidebar-toggler flex-shrink-0">
                        <i class="fa fa-bars"></i>
                    </a>
                    <div class="navbar-nav align-items-center ms-auto">
                        <div class="alert alert-dark mb-0">설정 페이지</div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                                <img class="rounded-circle me-lg-2" src="<%= pjName %>/resources/00-darkpan-1.0.0/img/user.jpg" alt="" style="width: 40px; height: 40px" />
                                <span class="d-none d-lg-inline-flex">John Doe</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                                <a href="#" class="dropdown-item">My Profile</a>
                                <a href="#" class="dropdown-item">Log Out</a>
                            </div>
                        </div>
                    </div>
                </nav>
                <!-- Navbar End -->

                <!-- 설정 관리 탭 시작 -->
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-secondary rounded h-100 p-4">
                        <h6 class="mb-4">설정 관리</h6>
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link active"
                                    id="category-setting-tab"
                                    data-bs-toggle="pill"
                                    data-bs-target="#category-setting"
                                    type="button"
                                    role="tab"
                                    aria-controls="category-setting"
                                    aria-selected="false"
                                >
                                    카테고리 관리
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link"
                                    id="slide-setting-tab"
                                    data-bs-toggle="pill"
                                    data-bs-target="#slide-setting"
                                    type="button"
                                    role="tab"
                                    aria-controls="slide-setting"
                                    aria-selected="true"
                                >
                                    슬라이드 관리
                                </button>
                            </li>
                        </ul>

                        <!-- 탭 컨텐츠 시작 -->
                        <div class="tab-content" id="users-tabContent">
                            <!-- 카테고리 탭 컨텐츠 시작 -->
                            <div class="tab-pane fade show active" id="category-setting" role="tabpanel" aria-labelledby="category-setting-tab">
                                <!-- 테이블 시작 -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4">
                                        <h6 class="mb-4">카테고리 테이블</h6>
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">카테고리</th>
                                                        <th scope="col">삭제</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>POP</td>
                                                        <td><button class="btn btn-danger">삭제</button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <button class="btn btn-success" style="float: right">추가</button>
                                    </div>
                                </div>
                                <!-- 테이블 끝 -->
                            </div>
                            <!-- 카테고리 탭 컨텐츠 끝 -->
                            <!-- 슬라이드 관리 탭 컨텐츠 시작 -->
                            <div class="tab-pane fade" id="slide-setting" role="tabpanel" aria-labelledby="slide-setting-tab">
                                <!-- 테이블 시작 -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4">
                                        <h6 class="mb-4">슬라이드 테이블</h6>
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">표지</th>
                                                        <th scope="col">장르</th>
                                                        <th scope="col">가수</th>
                                                        <th scope="col">제목</th>
                                                        <th scope="col">지역</th>
                                                        <th scope="col">발매일자</th>
                                                        <th scope="col">삭제</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td><img src="<%= pjName %>/resources/lpimages/kor/20/7616628.jpg" class="mgr-del-table-img" /></td>
                                                        <td>HipHop</td>
                                                        <td>세즈카</td>
                                                        <td>상사병</td>
                                                        <td>KOR</td>
                                                        <td>2022.06.24.</td>
                                                        <td><button class="btn btn-danger">삭제</button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <button class="btn btn-success" style="float: right">추가</button>
                                    </div>
                                </div>
                                <!-- 테이블 끝 -->
                            </div>
                            <!-- 슬라이드 관리 탭 컨텐츠 끝 -->
                        </div>
                        <!-- 탭 컨텐츠 끝 -->
                    </div>
                </div>
                <!-- 설정 관리 탭 끝 -->
            </div>
            <!-- Content End -->
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="<%= pjName %>/resources/00-darkpan-1.0.0/lib/chart/chart.min.js"></script>
        <script src="<%= pjName %>/resources/00-darkpan-1.0.0/lib/easing/easing.min.js"></script>
        <script src="<%= pjName %>/resources/00-darkpan-1.0.0/lib/waypoints/waypoints.min.js"></script>
        <script src="<%= pjName %>/resources/00-darkpan-1.0.0/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="<%= pjName %>/resources/00-darkpan-1.0.0/lib/tempusdominus/js/moment.min.js"></script>
        <script src="<%= pjName %>/resources/00-darkpan-1.0.0/lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="<%= pjName %>/resources/00-darkpan-1.0.0/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="<%= pjName %>/resources/00-darkpan-1.0.0/js/main.js"></script>
    </body>
</html>
