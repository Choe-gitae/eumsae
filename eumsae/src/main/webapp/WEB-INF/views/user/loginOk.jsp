<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String pjName = "/eumsae"; %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login OK</title>
</head>
<body>
${sessionScope.login} 님 접속 성공. 
<hr>
<a href="<%=pjName%>/shop/main"> WELCOME to EUMSAE!! </a>


</body>
</html>