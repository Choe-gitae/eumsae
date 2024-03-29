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
                        <div class="alert alert-dark mb-0">회원 관리 페이지</div>
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

                <!-- 회원 관리 탭 시작 -->
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-secondary rounded h-100 p-4">
                        <h6 class="mb-4">회원 관리</h6>
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link active"
                                    id="users-insert-tab"
                                    data-bs-toggle="pill"
                                    data-bs-target="#users-insert"
                                    type="button"
                                    role="tab"
                                    aria-controls="users-insert"
                                    aria-selected="true"
                                >
                                    등록
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link"
                                    id="users-update-tab"
                                    data-bs-toggle="pill"
                                    data-bs-target="#users-update"
                                    type="button"
                                    role="tab"
                                    aria-controls="users-update"
                                    aria-selected="false"
                                >
                                    수정 / 삭제
                                </button>
                            </li>
                        </ul>
                        <!-- 회정 등록 탭 컨텐츠 시작 -->
                        <div class="tab-content" id="users-tabContent">
                            <div class="tab-pane fade show active" id="users-insert" role="tabpanel" aria-labelledby="users-insert-tab">
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                                        <h6 class="mb-4">회원 등록</h6>
                                        <form action="#" method="post">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="userId" placeholder="아이디" />
                                                <label for="floatingInput">아이디</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="userPass" placeholder="비밀번호" />
                                                <label for="floatingInput">비밀번호</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="userPassRe" placeholder="비밀번호확인" />
                                                <label for="floatingInput">비밀번호확인</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="userNickName" placeholder="별명" />
                                                <label for="floatingInput">별명</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="name" placeholder="이름" />
                                                <label for="floatingInput">이름</label>
                                            </div>
                                            <fieldset class="row mb-3">
                                                <legend class="col-form-label col-sm-2 pt-0">성별</legend>
                                                <div class="col-sm-10">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="gender" id="male" value="남성" checked />
                                                        <label class="form-check-label" for="male"> 남성 </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="gender" id="female" value="여성" />
                                                        <label class="form-check-label" for="female"> 여성 </label>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="tel" placeholder="전화번호" />
                                                <label for="floatingInput">전화번호</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="email" placeholder="이메일" />
                                                <label for="floatingInput">이메일</label>
                                            </div>

                                            <button type="submit" class="btn btn-success">등록</button>
                                            <button type="button" class="btn btn-warning">취소</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- 회정 등록 탭 컨텐츠 끝 -->
                            <!-- 회정 정보 수정 / 삭제 탭 컨텐츠 시작 -->
                            <div class="tab-pane fade" id="users-update" role="tabpanel" aria-labelledby="users-update-tab">
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                                        <h6 class="mb-4">회원 검색</h6>
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
                                                    <th scope="col">가입일</th>
                                                    <th scope="col">수정</th>
                                                    <th scope="col">삭제</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th scope="row">1</th>
                                                    <td>bkjeon</td>
                                                    <td>1234</td>
                                                    <td>웁스</td>
                                                    <td>전병욱</td>
                                                    <td>남성</td>
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
                            <!-- 회정 정보 수정 / 삭제 탭 컨텐츠 끝 -->
                        </div>
                    </div>
                </div>
                <!-- 회원 관리 탭 끝 -->
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
