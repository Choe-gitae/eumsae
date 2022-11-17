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
                        <div class="alert alert-dark mb-0">관리자 계정 관리 페이지</div>
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

                <!-- 관리자 계정 관리 탭 시작 -->
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-secondary rounded h-100 p-4">
                        <h6 class="mb-4">관리자 계정 관리</h6>
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link active"
                                    id="mgr-insert-tab"
                                    data-bs-toggle="pill"
                                    data-bs-target="#mgr-insert"
                                    type="button"
                                    role="tab"
                                    aria-controls="mgr-insert"
                                    aria-selected="true"
                                >
                                    등록
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link"
                                    id="mgr-update-tab"
                                    data-bs-toggle="pill"
                                    data-bs-target="#mgr-update"
                                    type="button"
                                    role="tab"
                                    aria-controls="mgr-update"
                                    aria-selected="false"
                                >
                                    수정 / 삭제
                                </button>
                            </li>
                        </ul>
                        <!-- 탭 컨텐츠 시작 -->
                        <div class="tab-content" id="mgr-tabContent">
                            <!-- 등록 탭 컨텐츠 시작 -->
                            <div class="tab-pane fade show active" id="mgr-insert" role="tabpanel" aria-labelledby="mgr-insert-tab">
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                                        <h6 class="mb-4">관리자 등록</h6>
                                        <form action="#" method="post">
                                            <div class="form-floating mb-3">
                                                <select class="form-select" id="floatingSelect" name="auth">
                                                    <option selected>권한</option>
                                                    <option value="main">Main</option>
                                                    <option value="sub">Sub</option>
                                                </select>
                                                <label for="floatingSelect">권한</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="mgrId" placeholder="아이디" />
                                                <label for="floatingInput">아이디</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="mgrPass" placeholder="비밀번호" />
                                                <label for="floatingInput">비밀번호</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="mgrPassRe" placeholder="비밀번호 확인" />
                                                <label for="floatingInput">비밀번호 확인</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="mgrTel" placeholder="전화번호" />
                                                <label for="floatingInput">전화번호</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="mgrEmail" placeholder="이메일" />
                                                <label for="floatingInput">이메일</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="mgrAddr" placeholder="주소" />
                                                <label for="floatingInput">주소</label>
                                            </div>
                                            <div class="mb-3">
                                                <label for="formFile" class="form-label">관리자 사진</label>
                                                <input class="form-control bg-dark" type="file" id="formFile" name="file" />
                                            </div>
                                            <button type="submit" class="btn btn-success">등록</button>
                                            <button type="button" class="btn btn-warning">취소</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- 등록 탭 컨텐츠 끝 -->
                            <!-- 수정/삭제 탭 컨텐츠 시작 -->
                            <div class="tab-pane fade" id="mgr-update" role="tabpanel" aria-labelledby="mgr-update-tab">
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                                        <h6 class="mb-4">관리자 검색</h6>
                                        <form action="#" method="post">
                                            <select class="form-select mb-3" name="selectType">
                                                <option value="userId" selected>아이디</option>
                                                <option value="userName">이름</option>
                                                <option value="userTel">전화번호</option>
                                                <option value="userAddr">주소</option>
                                            </select>
                                            <input class="form-control bg-dark border-0" type="search" placeholder="Search" />
                                            <button type="submit" class="btn btn-info" style="margin: 10px">검색</button>
                                        </form>
                                    </div>
                                </div>
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4">
                                        <h6 class="mb-4">관리자 정보 테이블</h6>
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">아이디</th>
                                                        <th scope="col">비밀번호</th>
                                                        <th scope="col">이름</th>
                                                        <th scope="col">주소</th>
                                                        <th scope="col">전화번호</th>
                                                        <th scope="col">이메일</th>
                                                        <th scope="col">등록일</th>
                                                        <th scope="col">수정</th>
                                                        <th scope="col">삭제</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>bkjeon</td>
                                                        <td>1234</td>
                                                        <td>전병욱</td>
                                                        <td>지구 어딘가</td>
                                                        <td>알빠노</td>
                                                        <td>몰라</td>
                                                        <td>오늘</td>
                                                        <td><button class="btn btn-warning">수정</button></td>
                                                        <td><button class="btn btn-danger">삭제</button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 수정/삭제 탭 컨텐츠 끝 -->
                        </div>
                    </div>
                </div>
                <!-- 관리자 계정 관리 탭 시작 -->
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
