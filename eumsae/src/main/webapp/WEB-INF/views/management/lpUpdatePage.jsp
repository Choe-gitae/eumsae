<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <% String
pjName = "/eumsae"; %> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
        <!-- 검색 Form 시작 -->
        <div class="container-fluid pt-4 px-4">
          <div class="alert alert-light" role="alert">상품 수정 페이지</div>
          <div class="row g-4">
            <div class="col-sm-12 col-xl-6">
              <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                <h6 class="mb-4">상품 검색</h6>
                <form action="searchLp?page=lpUpdatePage" method="post">
                  <select class="form-select mb-3" name="searchCon">
                    <option value="singer" selected>가수</option>
                    <option value="title">제목</option>
                    <option value="genre">장르</option>
                    <option value="region">지역</option>
                  </select>
                  <input
                    class="form-control bg-dark border-0"
                    name="searchKey"
                    type="search"
                    placeholder="Search"
                  />
                  <button type="submit" class="btn btn-info" style="margin: 10px">검색</button>
                </form>
              </div>
            </div>
            <div class="col-sm-12 col-xl-6">
              <div class="bg-secondary rounded h-100 p-4" style="max-width: 600px">
                <h6 class="mb-4">정보 수정</h6>
                <form action="updateLp?page=lpUpdatePage" method="post" enctype="multipart/form-data">
                  <div class="form-floating mb-3">
                    <select class="form-select" id="genre" name="genre" aria-label="장르">
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
                    <label for="genre">장르</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="singer"
                      name="singer"
                      placeholder="가수"
                    />
                    <label for="singer">가수</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="title"
                      name="title"
                      placeholder="제목"
                    />
                    <label for="title">제목</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="stitle"
                      name="stitle"
                      placeholder="음원명"
                    />
                    <label for="stitle">음원명</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="region"
                      name="region"
                      placeholder="지역"
                    />
                    <label for="region">지역</label>
                  </div>
                  <div class="form-floating mb-3">
                    <textarea
                      class="form-control"
                      placeholder="소개"
                      id="content"
                      name="content"
                      style="height: 150px"
                    ></textarea>
                    <label for="content">소개</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="lpdate"
                      name="lpdate"
                      placeholder="발매일자"
                    />
                    <label for="lpdate">발매일자</label>
                  </div>
                  <div class="mb-3">
                    <label for="fjpg" class="form-label">LP 사진</label>
                    <input class="form-control bg-dark" type="file" id="fjpg" name="fjpg" />
                  </div>
                  <div class="mb-3">
                    <label for="fmp3" class="form-label">LP 음원</label>
                    <input class="form-control bg-dark" type="file" id="fmp3" name="fmp3" />
                  </div>
                  <input type="hidden" id="infono" name="infono" />
                  <button type="submit" class="btn btn-warning" style="margin: 10px">
                    수정 하기
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- 검색 Form 끝 -->
        <!-- 검색 테이블 시작 -->
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
                    <th scope="col">음원명</th>
                    <th scope="col">지역</th>
                    <th scope="col">발매일자</th>
                    <th scope="col">재고</th>
                    <th scope="col">수정</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="list" items="${list}" varStatus="status">
                    <tr>
                      <th scope="row">${status.count}</th>
                      <td>
                        <img
                          src="<%= pjName %>/resources/lpImg/${list.cjpg}.jpg"
                          class="mgr-del-table-img"
                        />
                      </td>
                      <td>${list.genre}</td>
                      <td>${list.singer}</td>
                      <td>${list.title}</td>
                      <td>${list.stitle}</td>
                      <td>${list.region}</td>
                      <td>${list.lpdate}</td>
                      <td>${list.cnt}</td>
                      <td><button class="btn btn-warning">수정</button></td>
                      <td hidden="content">${list.content}</td>
                      <td hidden="infono">${list.infono}</td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <!-- Content End -->
    </div>

    <jsp:include page="../include/mgrScript.jsp"></jsp:include>
    <script src="<%=pjName%>/resources/js/lpUpdate.js"></script>
  </body>
</html>
