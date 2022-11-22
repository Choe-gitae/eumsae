<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <% String
pjName = "/eumsae"; %> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      href="<%=pjName%>/resources/00-darkpan-1.0.0/lib/owlcarousel/assets/owl.carousel.min.css"
      rel="stylesheet"
    />
    <link
      href="<%=pjName%>/resources/00-darkpan-1.0.0/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
      rel="stylesheet"
    />

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
          <div class="alert alert-light" role="alert">관리자 수정 페이지</div>
          <div class="row g-4">
            <div class="col-sm-12 col-xl-6">
              <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                <h6 class="mb-4">관리자 검색</h6>
                <form action="searchMgr?page=mgrUpdatePage" method="post">
                  <select class="form-select mb-3" name="searchCon">
                    <option value="mid" selected>아이디</option>
                    <option value="name">이름</option>
                    <option value="tel">전화번호</option>
                    <option value="addr">주소</option>
                  </select>
                  <input class="form-control bg-dark border-0" type="search" placeholder="Search" />
                  <button type="submit" class="btn btn-info" style="margin: 10px">검색</button>
                </form>
              </div>
            </div>
            <div class="col-sm-12 col-xl-6">
              <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                <h6 class="mb-4">관리자 수정</h6>
                <form action="updateMgr?page=mgrUpdatePage" method="post">
                  <div class="form-floating mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="mid"
                      name="mid"
                      placeholder="관리자ID"
                      readonly
                    />
                    <label for="floatingInput">관리자ID</label>
                  </div>
                  <div class="form-floating mb-3">
                    <select class="form-select" id="auth" name="auth">
                      <option selected>권한</option>
                      <option value="mgr">Mgr</option>
                      <option value="sub">Sub</option>
                    </select>
                    <label for="floatingSelect">권한</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="pwd"
                      name="pwd"
                      placeholder="비밀번호"
                    />
                    <label for="floatingInput">비밀번호</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="name"
                      name="name"
                      placeholder="이름"
                    />
                    <label for="floatingInput">이름</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="addr"
                      name="addr"
                      placeholder="주소 확인"
                    />
                    <label for="floatingInput">주소</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="email"
                      name="email"
                      placeholder="이메일"
                    />
                    <label for="floatingInput">이메일</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="tel"
                      name="tel"
                      placeholder="전화번호"
                    />
                    <label for="floatingInput">전화번호</label>
                  </div>

                  <button type="submit" class="btn btn-success">수정하기</button>
                </form>
              </div>
            </div>
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
                    <th scope="col">이메일</th>
                    <th scope="col">전화번호</th>
                    <th scope="col">권한</th>
                    <th scope="col">수정</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="list" items="${list}" varStatus="status">
                    <tr>
                      <th scope="row">${status.count}</th>
                      <td>${list.mid}</td>
                      <td>${list.pwd}</td>
                      <td>${list.name}</td>
                      <td>${list.addr}</td>
                      <td>${list.email}</td>
                      <td>${list.tel}</td>
                      <td>${list.auth}</td>
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
    <script src="<%=pjName%>/resources/js/manager.js"></script>
  </body>
</html>
