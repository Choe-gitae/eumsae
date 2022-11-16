<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% String pjName = "eumsae/"; %>

<html>
  <head>
    <meta charset="UTF-8" />
    <title>pagination</title>
    
    <link rel="stylesheet" href="<%= pjName %>resources/css/onemusic-main-style.css" />
    <script src="<%= pjName %>resources/js/bootstrap/bootstrap.min.js"></script>
  </head>
  <body>
    <!-- pagination -->
    <container class="oneMusic-pagination-area">
      <div class="pagination">
        <span class="page-item"><a href="#" class="page-link">이전</a></span>
        <c:forEach var="pageNo" begin="${ pagination.firstPageNo }" end="${ pagination.lastPageNo }" step="1">
        <span class="page-item"><a href="#" class="page-link">${ pageNo }</a></span>
        </c:forEach>
        <span class="page-item"><a href="#" class="page-link">다음</a></span>
      </div>
    </container>
  </body>
</html>
