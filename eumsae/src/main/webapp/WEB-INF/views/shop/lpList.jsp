<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%> <% String pjName = "/eumsae"; %>

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
        <link rel="icon" href="<%=pjName%>/resources/images/favicon.ico" />

        <!-- Stylesheet -->
        <link rel="stylesheet" href="<%=pjName%>/resources/00-one-music-gh-pages/style.css" />

        <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet" />

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/resources/css1/font-awesome.min.css" />

        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/animate.css" />

        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.carousel.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/owl.theme.default.min.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/magnific-popup.css" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/resources/css1/bootstrap-select.min.css" />

        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/flaticon.css" />
        <link rel="stylesheet" href="<%=pjName%>/resources/00-liquorstore-master/css/style.css" />
    </head>

    <body>
    	<jsp:include page="../include/shopHeader.jsp" />
    	
    	<!-- ##### Breadcumb Area Start ##### -->
	    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(resources/00-one-music-gh-pages/img/bg-img/breadcumb3.jpg);">
	    </section>
	    <!-- ##### Breadcumb Area End ##### -->
    	
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

        <jsp:include page="../include/shopFooter.jsp"></jsp:include>

        <!-- ##### 추가 Javascript ##### -->
        <script src="<%=pjName%>/resources/js/lpList.js"></script>
    </body>
</html>
