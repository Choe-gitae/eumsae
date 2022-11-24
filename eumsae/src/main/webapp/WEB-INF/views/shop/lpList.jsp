<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String pjName = "/eumsae"; %>

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

        <jsp:include page="../include/shopFooter.jsp"></jsp:include>
        
        <!-- ##### 추가 Javascript ##### -->
        <script src="<%=pjName%>/resources/js/lpList.js"></script>
    </body>
</html>
