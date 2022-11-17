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
                        <div class="alert alert-dark mb-0">상품 관리 페이지</div>
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

                <!-- 상품 관리 탭 시작 -->
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-secondary rounded h-100 p-4">
                        <h6 class="mb-4">상품 관리</h6>
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link active"
                                    id="product-insert-tab"
                                    data-bs-toggle="pill"
                                    data-bs-target="#product-insert"
                                    type="button"
                                    role="tab"
                                    aria-controls="product-insert"
                                    aria-selected="true"
                                >
                                    등록
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link"
                                    id="product-delete-tab"
                                    data-bs-toggle="pill"
                                    data-bs-target="#product-delete"
                                    type="button"
                                    role="tab"
                                    aria-controls="product-delete"
                                    aria-selected="false"
                                >
                                    수정 / 삭제
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link"
                                    id="product-price-tab"
                                    data-bs-toggle="pill"
                                    data-bs-target="#product-price"
                                    type="button"
                                    role="tab"
                                    aria-controls="product-price"
                                    aria-selected="true"
                                >
                                    가격 관리
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link"
                                    id="product-wishBoard-tab"
                                    data-bs-toggle="pill"
                                    data-bs-target="#product-wishBoard"
                                    type="button"
                                    role="tab"
                                    aria-controls="product-wishBoard"
                                    aria-selected="true"
                                >
                                    요청 게시판 관리
                                </button>
                            </li>
                        </ul>

                        <!-- 탭 컨텐츠 시작 -->
                        <div class="tab-content" id="users-tabContent">
                            <!-- 상품 등록 탭 컨텐츠 시작 -->
                            <div class="tab-pane fade show active" id="product-insert" role="tabpanel" aria-labelledby="product-insert-tab">
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                                        <h6 class="mb-4">상품 등록</h6>
                                        <form action="test" method="post">
                                            <div class="form-floating mb-3">
                                                <select class="form-select" id="floatingSelect" name="genre" aria-label="장르">
                                                    <option selected>장르</option>
                                                    <option value="POP">POP</option>
                                                    <option value="Metal">Metal</option>
                                                    <option value="HipHop">HipHop</option>
                                                </select>
                                                <label for="floatingSelect">장르</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="title" placeholder="제목" />
                                                <label for="floatingInput">제목</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="singer" placeholder="가수" />
                                                <label for="floatingInput">가수</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="region" placeholder="지역" />
                                                <label for="floatingInput">지역</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="releaseDate" placeholder="발매일자" />
                                                <label for="floatingInput">발매일자</label>
                                            </div>
                                            <div class="mb-3">
                                                <label for="formFile" class="form-label">LP 사진</label>
                                                <input class="form-control bg-dark" type="file" id="formFile" name="file" />
                                            </div>
                                            <button type="submit" class="btn btn-success">등록</button>
                                            <button type="button" class="btn btn-warning">취소</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- 상품 등록 탭 컨텐츠 끝 -->
                            <!-- 상품 삭제 탭 컨텐츠 시작 -->
                            <div class="tab-pane fade" id="product-delete" role="tabpanel" aria-labelledby="product-delete-tab">
                                <!-- 검색 Form 시작 -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                                        <h6 class="mb-4">상품 검색</h6>
                                        <form action="#" method="post">
                                            <select class="form-select mb-3" name="selectType">
                                                <option value="singer" selected>가수</option>
                                                <option value="title">제목</option>
                                                <option value="genre">장르</option>
                                                <option value="region">지역</option>
                                            </select>
                                            <input class="form-control bg-dark border-0" type="search" placeholder="Search" />
                                            <button type="submit" class="btn btn-info" style="margin: 10px">검색</button>
                                        </form>
                                    </div>
                                </div>
                                <!-- 검색 Form 끝 -->
                                <!-- 삭제 테이블 시작 -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4">
                                        <h6 class="mb-4">상품 정보 테이블</h6>
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
                                                        <th scope="col">수정</th>
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
                                                        <td><button class="btn btn-warning">수정</button></td>
                                                        <td><button class="btn btn-danger">삭제</button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- 삭제 테이블 끝 -->
                            </div>
                            <!-- 상품 삭제 탭 컨텐츠 끝 -->
                            <!-- 상품 가격 관리 탭 컨텐츠 시작 -->
                            <div class="tab-pane fade" id="product-price" role="tabpanel" aria-labelledby="product-price-tab">
                                <!-- 검색 Form 시작 -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                                        <h6 class="mb-4">상품 검색</h6>
                                        <form action="#" method="post">
                                            <select class="form-select mb-3" name="selectType">
                                                <option value="singer" selected>가수</option>
                                                <option value="title">제목</option>
                                                <option value="genre">장르</option>
                                                <option value="region">지역</option>
                                            </select>
                                            <input class="form-control bg-dark border-0" type="search" placeholder="Search" />
                                            <button type="submit" class="btn btn-info" style="margin: 10px">검색</button>
                                        </form>
                                    </div>
                                </div>
                                <!-- 검색 Form 끝 -->
                                <!-- 테이블 시작 -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4">
                                        <h6 class="mb-4">상품 정보 테이블</h6>
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
                                                        <th scope="col">가격</th>
                                                        <th scope="col">수정</th>
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
                                                        <td>50000</td>
                                                        <td><button class="btn btn-warning">수정</button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- 테이블 끝 -->
                            </div>
                            <!-- 상품 가격 관리 탭 컨텐츠 끝 -->
                            <!-- 상품 요청 게시판 관리 탭 컨텐츠 시작 -->
                            <div class="tab-pane fade" id="product-wishBoard" role="tabpanel" aria-labelledby="product-wishBoard-tab">
                            <div class="container-fluid pt-4 px-4">
                                    <div class="bg-secondary rounded h-100 p-4">
                                        <h6 class="mb-4">상품 요청 게시판</h6>
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>글번호</th>
                            							<th>글작성자</th>
                            							<th>요청LP & 하고싶은말</th>
                            							<th>작성 시간</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>156</td>
			                            				<td>최기태</td>
			                            				<td>마이클잭슨-빌리진 부탁드려용~</td>
			                            				<td>2022/11/15 18:30</td>
                                                        <td><button class="btn btn-warning">댓글달기</button></td>
                                                        <tr>
                                                        <td></td>
                                                        <td></td>
														<td><textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea></td>
                                                        <td><button class="btn btn-warning">작성</button></td>
                                                    </tr>
                                                    <tr>
			                            				<td>155</td>
			                            				<td>전병욱</td>
			                            				<td>블랍블라-부탁드려용</td>
			                            				<td>2022/11/15 18:30</td>
			                            				<td><button class="btn btn-warning">댓글달기</button></td>
			                            			</tr>
			                            			<tr>
			                            				<td>154</td>
			                            				<td>이지효</td>
			                            				<td>블라블라-부탁드려용~</td>
			                            				<td>2022/11/15 18:30</td>
			                            				<td><button class="btn btn-warning">댓글달기</button></td>
			                            			</tr>
			                            			<tr>
			                            				<td>153</td>
			                            				<td>변정환</td>
			                            				<td>집 가게-부탁드려용~ddddddddddddddddddddddddddddddddddddddddddddd</td>
			                            				<td>2022/11/15 18:30</td>
			                            				<td><button class="btn btn-warning">댓글달기</button></td>
			                            			</tr>
			                            			<tr>
			                            				<td>153</td>
			                            				<td>변정환</td>
			                            				<td>집 가게-부탁드려용~ddddddddddddddddddddddddddddddddddddddddddddd</td>
			                            				<td>2022/11/15 18:30</td>
			                            				<td><button class="btn btn-warning">댓글달기</button></td>
			                            			</tr>
			                            			<tr>
			                            				<td>153</td>
			                            				<td>변정환</td>
			                            				<td>집 가게-부탁드려용~ddddddddddddddddddddddddddddddddddddddddddddd</td>
			                            				<td>2022/11/15 18:30</td>
			                            				<td><button class="btn btn-warning">댓글달기</button></td>
			                            			</tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 상품 요청 게시판 관리 탭 컨텐츠 끝 -->
                        </div>
                        <!-- 탭 컨텐츠 끝 -->
                    </div>
                </div>
                <!-- 상품 관리 탭 끝 -->
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
