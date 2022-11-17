<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <% String
pjName = "/eumsae"; %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>LP 등록 페이지</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <!-- Favicon -->
    <link href="<%= pjName %>/resources/00-darkpan-1.0.0/img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
      rel="stylesheet"
    />

    <!-- Icon Font Stylesheet -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
      rel="stylesheet"
    />

    <!-- Libraries Stylesheet -->
    <link
      href="<%= pjName %>/resources/00-darkpan-1.0.0/lib/owlcarousel/assets/owl.carousel.min.css"
      rel="stylesheet"
    />
    <link
      href="<%= pjName %>/resources/00-darkpan-1.0.0/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
      rel="stylesheet"
    />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="<%= pjName %>/resources/00-darkpan-1.0.0/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="<%= pjName %>/resources/00-darkpan-1.0.0/css/style.css" rel="stylesheet" />
  </head>
  <body>
    <div class="container-fluid position-relative d-flex p-0">
      <!-- Spinner Start -->
      <div
        id="spinner"
        class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
      >
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
          <span class="sr-only">Loading...</span>
        </div>
      </div>
      <!-- Spinner End -->

      <!-- Sidebar Start -->
      <div class="sidebar pe-4 pb-3">
        <nav class="navbar bg-secondary navbar-dark">
          <a href="index.html" class="navbar-brand mx-4 mb-3">
            <h3 class="text-light">
              <img src="<%= pjName %>/resources/img/bg-img/add.gif" class="sidebar-logo" />EUMSAE
            </h3>
          </a>
          <div class="d-flex align-items-center ms-4 mb-4">
            <div class="position-relative">
              <img
                class="rounded-circle"
                src="<%= pjName %>/resources/00-darkpan-1.0.0/img/user.jpg"
                alt=""
                style="width: 40px; height: 40px"
              />
              <div
                class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"
              ></div>
            </div>
            <div class="ms-3">
              <h6 class="mb-0">Jhon Doe</h6>
              <span>Admin</span>
            </div>
          </div>
          <div class="navbar-nav w-100">
            <a href="#" class="nav-item nav-link"
              ><i class="fa fa-table me-2"></i>관리자 계정 관리</a
            >
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                ><i class="far fa-file-alt me-2"></i>회원 관리</a
              >
              <div class="dropdown-menu bg-transparent border-0">
                <a href="#" class="dropdown-item">회원 정보 관리</a>
                <a href="#" class="dropdown-item">주문 관리</a>
                <a href="#" class="dropdown-item">배송 관리</a>
              </div>
            </div>
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                ><i class="far fa-file-alt me-2"></i>LP 관리</a
              >
              <div class="dropdown-menu bg-transparent border-0">
                <a href="#" class="dropdown-item">LP 등록</a>
                <a href="#" class="dropdown-item">LP 삭제</a>
                <a href="#" class="dropdown-item">LP 요청 게시판 관리</a>
              </div>
            </div>
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                ><i class="far fa-file-alt me-2"></i>설정 관리</a
              >
              <div class="dropdown-menu bg-transparent border-0">
                <a href="#" class="dropdown-item">메세지창 관리</a>
                <a href="#" class="dropdown-item">카테고리 관리</a>
                <a href="#" class="dropdown-item">슬라이드 관리</a>
              </div>
            </div>
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                ><i class="far fa-file-alt me-2"></i>혜택 관리</a
              >
              <div class="dropdown-menu bg-transparent border-0">
                <a href="#" class="dropdown-item">할인 관리</a>
                <a href="#" class="dropdown-item">포인트 관리</a>
              </div>
            </div>
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                ><i class="far fa-file-alt me-2"></i>매출 관리</a
              >
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
            <h2 class="text-light mb-0">
              <img src="<%= pjName %>/resources/img/bg-img/add.gif" class="sidebar-logo" />
            </h2>
          </a>
          <a href="#" class="sidebar-toggler flex-shrink-0">
            <i class="fa fa-bars"></i>
          </a>
          <div class="navbar-nav align-items-center ms-auto">
            <div class="alert alert-dark mb-0" role="alert">LP Info 등록 페이지</div>
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                <img
                  class="rounded-circle me-lg-2"
                  src="<%= pjName %>/resources/00-darkpan-1.0.0/img/user.jpg"
                  alt=""
                  style="width: 40px; height: 40px"
                />
                <span class="d-none d-lg-inline-flex">John Doe</span>
              </a>
              <div
                class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0"
              >
                <a href="#" class="dropdown-item">My Profile</a>
                <a href="#" class="dropdown-item">Log Out</a>
              </div>
            </div>
          </div>
        </nav>
        <!-- Navbar End -->

        <!-- Insert Form Start -->
        <div class="container-fluid pt-4 px-4">
          <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
            <h6 class="mb-4">LP 등록</h6>
            <form action="lpinsert.do" method="post">
              <div class="form-floating mb-3">
                <select class="form-select" id="floatingSelect" name="genre" aria-label="장르">
                  <option selected>장르</option>
                  <option value="POP">POP</option>
                  <option value="가요">가요</option>
                  <option value="Rock">락</option>
                  <option value="Ballad">발라드</option>
                  <option value="Fork">포크</option>
                  <option value="Hiphop">힙합</option>
                  <option value="RnB">RnB</option>
                  <option value="Elec">일렉트로니카</option>
                  <option value="Ost">OST</option>
                  <option value="Troat">트로트</option>                  
                </select>
                <label for="floatingSelect">장르</label>
              </div>
              
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control form-control-lg"
                  id="floatingInput"
                  name="title"
                  placeholder="제목"
                />
                <label for="floatingInput">제목</label>
              </div>
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control form-control-lg"
                  id="floatingInput"
                  name="singer"
                  placeholder="가수"
                />
                <label for="floatingInput">가수</label>
              </div>
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control form-control-lg"
                  id="floatingInput"
                  name="region"
                  placeholder="지역"
                />
                <label for="floatingInput">지역</label>
              </div>
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control form-control-lg"
                  id="floatingInput"
                  name="lpdate"
                  placeholder="발매일자"
                />
                <label for="floatingInput">발매일자</label>
              </div>
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control form-control-lg"
                  id="floatingInput"
                  name="content"
                  placeholder="LP정보"
                />
                <label for="floatingInput">LP정보</label>
              </div>
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control form-control-lg"
                  id="floatingInput"
                  name="price"
                  placeholder="가격"
                />
                <label for="floatingInput">가격</label>                
              </div>
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control form-control-lg"
                  id="floatingInput"
                  name="cnt"
                  placeholder="재고"
                />
                <label for="floatingInput">재고</label>                
              </div>
              <div class="mb-3">
                <label for="formFile" class="form-label">LP 사진</label>
                <input class="form-control bg-dark" type="file" id="formFile" name="fjpg" />
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
        <!-- Insert Form End -->
      </div>
      <!-- Container End -->
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
