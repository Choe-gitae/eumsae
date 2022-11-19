<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<% String pjName = "/eumsae"; %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EUMSAE Navbar</title>
</head>
<body>
<!-- Navbar Start -->

                <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                    <a href="main.html" class="navbar-brand d-flex d-lg-none me-4">
                        <h3 class="text-light"><img src="<%= pjName %>/resources/img/bg-img/add.gif" class="sidebar-logo" />EUMSAE</h3>
                    </a>
                    <a href="#" class="sidebar-toggler flex-shrink-0">
                        <i class="fa fa-bars"></i>
                    </a>                   
                    <div class="navbar-nav align-items-center ms-auto">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            	<c:if test="${Mgr != null }">
                            	<span class="d-none d-lg-inline-flex">${sessionScope.Mgr} 님 접속중</span>
                            	</c:if>
                            	<c:if test="${Mgr == null }">
                            	<span class="d-none d-lg-inline-flex"></span>
                            	</c:if>                           
                            </a>                            
                            <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                                <a href="#" class="dropdown-item">My Profile</a>
                                <a href="#" class="dropdown-item">Settings</a>
                                <c:if test="${Mgr == null }">
                                <a href="<%=pjName%>/management/loginPage" class="dropdown-item">Log In</a>
                                </c:if>
                                <c:if test="${Mgr != null }">
                                <a href="<%=pjName%>/management/logout" class="dropdown-item">Log Out</a>
                                </c:if>
                            </div>                            
                        </div>
                    </div>                    
                </nav>
 
                <!-- Navbar End -->
</body>
</html>