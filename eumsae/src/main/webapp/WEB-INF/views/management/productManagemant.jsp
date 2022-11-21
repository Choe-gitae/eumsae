<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <% String pjName = "/eumsae"; %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>DarkPan - Bootstrap 5 Admin Template</title>
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
                                        <form action="test" method="post" enctype="multipart/form-data">
                                            <div class="form-floating mb-3">
                                                <select class="form-select" id="floatingSelect" name="genre" aria-label="장르">
                                                    <option selected>장르</option>
                                                    <option value="POP">POP</option>
                                                    <option value="Rock">ROCK</option>
                                                    <option value="HipHop">HipHop</option>
                                                    <option value="Ballad">Ballad</option>
                                                    <option value="국내가요">국내가요</option>
                                                    <option value="Fork">Fork</option>
                                                    <option value="RnB">RnB</option>
                                                    <option value="Elec">일렉트로</option>
                                                    <option value="Ost">OST</option>
                                                    <option value="트로트">트로트</option>
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
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="content" placeholder="소개" />
                                                <label for="floatingInput">소개</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="lpdate" placeholder="발매일자" />
                                                <label for="floatingInput">발매일자</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="cnt" placeholder="재고" />
                                                <label for="floatingInput">재고</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control form-control-lg" id="floatingInput" name="price" placeholder="가격" />
                                                <label for="floatingInput">가격</label>
                                            </div>
                                            <div class="mb-3">
                                                <label for="formFile" class="form-label">LP 사진</label>
                                                <input class="form-control bg-dark" type="file" id="formFile" name="fjpg" required/>
                                            </div>
                                            <div class="mb-3">
                                                <label for="formFile" class="form-label">LP 음원</label>
                                                <input class="form-control bg-dark" type="file" id="formFile" name="fmp3" />
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
                            <div class="tab-pane fade" id="product-wishBoard" role="tabpanel" aria-labelledby="product-wishBoard-tab"></div>
                            <!-- 상품 요청 게시판 관리 탭 컨텐츠 끝 -->
                        </div>
                        <!-- 탭 컨텐츠 끝 -->
                    </div>
                </div>
                <!-- 상품 관리 탭 끝 -->
            </div>
            <!-- Content End -->
        </div>

        <jsp:include page="../include/mgrScript.jsp"></jsp:include>
    </body>
</html>