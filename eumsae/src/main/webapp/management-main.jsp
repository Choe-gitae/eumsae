<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>DarkPan - Bootstrap 5 Admin Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="keywords" />
        <meta content="" name="description" />

        <!-- Favicon -->
        <link href="resources/00-darkpan-1.0.0/img/favicon.ico" rel="icon" />

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet" />

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

        <!-- Libraries Stylesheet -->
        <link href="resources/00-darkpan-1.0.0/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
        <link href="resources/00-darkpan-1.0.0/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="resources/00-darkpan-1.0.0/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="resources/00-darkpan-1.0.0/css/style.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container-fluid position-relative d-flex p-0">
            <!-- Spinner Start -->
            <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
            <!-- Spinner End -->

            <!-- Sidebar Start -->
            <div class="sidebar pe-4 pb-3">
                <nav class="navbar bg-secondary navbar-dark">
                    <a href="index.html" class="navbar-brand mx-4 mb-3">
                        <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>DarkPan</h3>
                    </a>
                    <div class="d-flex align-items-center ms-4 mb-4">
                        <div class="position-relative">
                            <img class="rounded-circle" src="resources/00-darkpan-1.0.0/img/user.jpg" alt="" style="width: 40px; height: 40px" />
                            <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                        </div>
                        <div class="ms-3">
                            <h6 class="mb-0">Jhon Doe</h6>
                            <span>Admin</span>
                        </div>
                    </div>
                    <div class="navbar-nav w-100">
                        <a href="#" class="nav-item nav-link"><i class="fa fa-table me-2"></i>관리자 계정 관리</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>회원 관리</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="#" class="dropdown-item">회원 정보 관리</a>
                                <a href="#" class="dropdown-item">주문 관리</a>
                                <a href="#" class="dropdown-item">배송 관리</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>상품 관리</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="#" class="dropdown-item">상품 등록</a>
                                <a href="#" class="dropdown-item">상품 삭제</a>
                                <a href="#" class="dropdown-item">상품 요청 게시판 관리</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>설정 관리</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="#" class="dropdown-item">메세지창 관리</a>
                                <a href="#" class="dropdown-item">카테고리 관리</a>
                                <a href="#" class="dropdown-item">슬라이드 관리</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>혜택 관리</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="#" class="dropdown-item">할인 관리</a>
                                <a href="#" class="dropdown-item">포인트 관리</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>매출 관리</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="#" class="dropdown-item">매출 관리</a>
                                <a href="#" class="dropdown-item">판매 리스트</a>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <!-- Sidebar End -->

            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                    <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                        <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                    </a>
                    <a href="#" class="sidebar-toggler flex-shrink-0">
                        <i class="fa fa-bars"></i>
                    </a>
                    <div class="navbar-nav align-items-center ms-auto">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                                <img class="rounded-circle me-lg-2" src="resources/00-darkpan-1.0.0/img/user.jpg" alt="" style="width: 40px; height: 40px" />
                                <span class="d-none d-lg-inline-flex">John Doe</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                                <a href="#" class="dropdown-item">My Profile</a>
                                <a href="#" class="dropdown-item">Settings</a>
                                <a href="#" class="dropdown-item">Log Out</a>
                            </div>
                        </div>
                    </div>
                </nav>
                <!-- Navbar End -->

                <!-- Recent Sales Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-secondary text-center rounded p-4">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h6 class="mb-0">Recent Salse</h6>
                            <a href="">Show All</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table text-start align-middle table-bordered table-hover mb-0">
                                <thead>
                                    <tr class="text-white">
                                        <th scope="col">Date</th>
                                        <th scope="col">Invoice</th>
                                        <th scope="col">Customer</th>
                                        <th scope="col">Amount</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>01 Jan 2045</td>
                                        <td>INV-0123</td>
                                        <td>Jhon Doe</td>
                                        <td>$123</td>
                                        <td>Paid</td>
                                        <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                    </tr>
                                    <tr>
                                        <td>01 Jan 2045</td>
                                        <td>INV-0123</td>
                                        <td>Jhon Doe</td>
                                        <td>$123</td>
                                        <td>Paid</td>
                                        <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                    </tr>
                                    <tr>
                                        <td>01 Jan 2045</td>
                                        <td>INV-0123</td>
                                        <td>Jhon Doe</td>
                                        <td>$123</td>
                                        <td>Paid</td>
                                        <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                    </tr>
                                    <tr>
                                        <td>01 Jan 2045</td>
                                        <td>INV-0123</td>
                                        <td>Jhon Doe</td>
                                        <td>$123</td>
                                        <td>Paid</td>
                                        <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                    </tr>
                                    <tr>
                                        <td>01 Jan 2045</td>
                                        <td>INV-0123</td>
                                        <td>Jhon Doe</td>
                                        <td>$123</td>
                                        <td>Paid</td>
                                        <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- Recent Sales End -->

                <!-- Widgets Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="row g-4">
                        <div class="col-sm-12 col-md-6 col-xl-6">
                            <div class="h-100 bg-secondary rounded p-4">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <h6 class="mb-0">Calender</h6>
                                    <a href="">Show All</a>
                                </div>
                                <div id="calender"></div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-xl-6">
                            <div class="h-100 bg-secondary rounded p-4">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <h6 class="mb-0">To Do List</h6>
                                    <a href="">Show All</a>
                                </div>
                                <div class="d-flex mb-2">
                                    <input class="form-control bg-dark border-0" type="text" placeholder="Enter task" />
                                    <button type="button" class="btn btn-primary ms-2">Add</button>
                                </div>
                                <div class="d-flex align-items-center border-bottom py-2">
                                    <input class="form-check-input m-0" type="checkbox" />
                                    <div class="w-100 ms-3">
                                        <div class="d-flex w-100 align-items-center justify-content-between">
                                            <span>Short task goes here...</span>
                                            <button class="btn btn-sm"><i class="fa fa-times"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center border-bottom py-2">
                                    <input class="form-check-input m-0" type="checkbox" />
                                    <div class="w-100 ms-3">
                                        <div class="d-flex w-100 align-items-center justify-content-between">
                                            <span>Short task goes here...</span>
                                            <button class="btn btn-sm"><i class="fa fa-times"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center border-bottom py-2">
                                    <input class="form-check-input m-0" type="checkbox" checked />
                                    <div class="w-100 ms-3">
                                        <div class="d-flex w-100 align-items-center justify-content-between">
                                            <span><del>Short task goes here...</del></span>
                                            <button class="btn btn-sm text-primary"><i class="fa fa-times"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center border-bottom py-2">
                                    <input class="form-check-input m-0" type="checkbox" />
                                    <div class="w-100 ms-3">
                                        <div class="d-flex w-100 align-items-center justify-content-between">
                                            <span>Short task goes here...</span>
                                            <button class="btn btn-sm"><i class="fa fa-times"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center pt-2">
                                    <input class="form-check-input m-0" type="checkbox" />
                                    <div class="w-100 ms-3">
                                        <div class="d-flex w-100 align-items-center justify-content-between">
                                            <span>Short task goes here...</span>
                                            <button class="btn btn-sm"><i class="fa fa-times"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Widgets End -->

                <!-- Footer Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-secondary rounded-top p-4">
                        <div class="row">
                            <div class="col-12 col-sm-6 text-center text-sm-start">&copy; <a href="#">Eumsae</a>, All Right Reserved.</div>
                            <div class="col-12 col-sm-6 text-center text-sm-end">
                                <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                                Designed By <a href="https://htmlcodex.com">HTML Codex</a> <br />Distributed By:
                                <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer End -->
            </div>
            <!-- Content End -->

            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="resources/00-darkpan-1.0.0/lib/chart/chart.min.js"></script>
        <script src="resources/00-darkpan-1.0.0/lib/easing/easing.min.js"></script>
        <script src="resources/00-darkpan-1.0.0/lib/waypoints/waypoints.min.js"></script>
        <script src="resources/00-darkpan-1.0.0/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="resources/00-darkpan-1.0.0/lib/tempusdominus/js/moment.min.js"></script>
        <script src="resources/00-darkpan-1.0.0/lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="resources/00-darkpan-1.0.0/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="resources/00-darkpan-1.0.0/js/main.js"></script>
    </body>
</html>
