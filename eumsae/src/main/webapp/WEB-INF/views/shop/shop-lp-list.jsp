<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%> <% String pjName = "eumsae/"; %>

<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="description" content="" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title -->
        <title>Eumsae</title>

        <!-- Favicon -->
        <link rel="icon" href="<%= pjName %>resources/img/core-img/favicon.ico" />

        <!-- Stylesheet -->
        <link rel="stylesheet" href="<%= pjName %>resources/css/onemusic-main-style.css" />
    </head>

    <body>
        <!-- ##### Album Catagory Area Start ##### -->
        <section class="album-catagory section-padding-100-0">
            <div class="container">
                <!-- 퀵서치 isotope plugin -->
                <input type="text" class="quicksearch" placeholder="Search" />
                <!-- LP리스트 -->
                <div class="row oneMusic-albums">
                    <c:forEach var="lpList" items="${ lpList }">
                        <!-- Single Album -->
                        <div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item ${ lpList.filter }">
                            <div class="single-album">
                                <c:set var="year" value="${ lpList.releaseDate }" />
                                <img src="<%= pjName %>resources/lpimages/${ lpList.region }/${ fn:substring(year,2,3) }0/${ lpList.classification }.jpg" />
                                <div class="album-info">
                                    <a href="getLpList.do?classification=${ lpList.classification }">
                                        <h5>${ lpList.singer }</h5>
                                    </a>
                                    <p>${ lpList.title }</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <!-- ##### Album Catagory Area End ##### -->

        <!-- ##### one-music Javascript ##### -->
        <script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
        <!-- Popper js -->
        <script src="resources/js/bootstrap/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="resources/js/bootstrap/bootstrap.min.js"></script>
        <!-- All Plugins js -->
        <script src="resources/js/plugins/plugins.js"></script>
        <!-- Active js -->
        <script src="resources/js/active.js"></script>

        <!-- ##### 추가 Javascript ##### -->
        <script src="resources/js/lplist.js"></script>
    </body>
</html>
