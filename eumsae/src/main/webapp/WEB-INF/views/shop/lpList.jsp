<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> <% String pjName = "/eumsae"; %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="description" content="" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title -->
        <title>Eumsae LP List</title>

        <!-- Favicon -->
        <link rel="icon" href="<%=pjName%>/resources/images/favicon.ico" />

        <!-- Stylesheet -->
        <link rel="stylesheet" href="../resources/00-one-music-gh-pages/css/style.css" />
        <link rel="stylesheet" href="../resources/00-one-music-gh-pages/css/bootstrap.min.css" />

        <!-- Core Style CSS -->
        <!-- <link rel="stylesheet" href="../resources/00-amado-master/css/core-style.css"> -->

        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
        <!-- <script src="https://kit.fontawesome.com/def66b134a.js"></script> -->

        <!-- Stylesheet -->
        <link rel="stylesheet" href="<%=pjName%>/resources/00-one-music-gh-pages/style.css" />
        <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/animate.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.carousel.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.theme.default.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/magnific-popup.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/flaticon.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/style.css" />

        <!-- search -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" />
    </head>

    <body>
        <jsp:include page="../include/shopHeader.jsp" />

        <!-- ##### 페이지 이름 ######### -->
        <section class="hero-wrap hero-wrap-2" style="background-image: url('../resources/images/bg_2.gif')" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end justify-content-center">
                    <div class="col-md-9 ftco-animate mb-5 text-center">
                        <p class="breadcrumbs mb-0"></p>
                        <h2 class="mb-0 bread">LP List</h2>
                    </div>
                </div>
            </div>
        </section>
        <!-- ##### 페이지 이름 끝 ######### -->

        <!-- ##### Album Catagory Area Start ##### -->
        <section class="album-catagory section-padding-100-0">
            <div class="container">
                <!-- 퀵서치 isotope plugin -->
                <!--                <input type="text" class="quicksearch" placeholder="Search" /> -->

                <form action="searchLp" role="search" id="search">
                    <!--  <select name="searchCon" > -->
                    <!--  	<option value="title" selected="selected">title</option> -->
                    <!--  	<option value="singer">singer</option> -->
                    <!--  </select>  -->
                    <input type="search" id="query" name="searchKey" placeholder="Search" aria-label="Search through site content" />
                    <button id="searchBTN">
                        <svg id="searchsvg" viewBox="0 0 1024 1024">
                            <path
                                class="path1"
                                d="M848.471 928l-263.059-263.059c-48.941 36.706-110.118 55.059-177.412 55.059-171.294 0-312-140.706-312-312s140.706-312 312-312c171.294 0 312 140.706 312 312 0 67.294-24.471 128.471-55.059 177.412l263.059 263.059-79.529 79.529zM189.623 408.078c0 121.364 97.091 218.455 218.455 218.455s218.455-97.091 218.455-218.455c0-121.364-103.159-218.455-218.455-218.455-121.364 0-218.455 97.091-218.455 218.455z"
                            ></path>
                        </svg>
                    </button>
                </form>
                <hr />

                <!-- LP리스트 -->
                <div class="row oneMusic-albums">
                    <c:forEach var="list" items="${ list }">
                        <!-- Single Album -->
                        <div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item">
                            <div class="single-album">
                                <a href="detail?infono=${ list.infono }"><img src="<%= pjName %>/resources/lpImg/${ list.cjpg }.jpg" /></a>
                                <div class="album-info">
                                    <h5>${ list.singer }</h5>

                                    <p>${ list.title }</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
              </div>            
    </section>
    <!-- ##### Album Catagory Area End ##### -->
            </div>
        </section>
        <!-- ##### Album Catagory Area End ##### -->

        <jsp:include page="../include/shopFooter.jsp"></jsp:include>

        <!-- ##### 추가 Javascript ##### -->
        <script src="<%=pjName%>/resources/js/lpList.js"></script>
    </body>
</html>
