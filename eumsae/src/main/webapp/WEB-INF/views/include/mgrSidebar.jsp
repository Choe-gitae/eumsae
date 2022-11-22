<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <% String pjName = "/eumsae"; %> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>sidebar</title>
    </head>
    <body>
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-secondary navbar-dark">
                <a href="index.html" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-light"><img src="<%= pjName %>/resources/img/bg-img/add.gif" class="sidebar-logo" />E UM SAE</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative"></div>
                    <div class="ms-3">
                        <h6 class="mb-0">${sessionScope.Name}</h6>
                        <span>${sessionScope.Auth}</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <c:if test="${Auth == 'admin' }">
                        <a href="managerManagement" class="nav-item nav-link"><i class="fa fa-table me-2"></i>관리자 계정 관리</a>
                    </c:if>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>회원관리</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="userInsertPage" class="dropdown-item">회원 등록</a> <a href="userUpdatePage" class="dropdown-item">회원 수정</a>
                            <a href="userDeletePage" class="dropdown-item">회원 삭제</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <c:if test="${Auth != 'sub' }">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>상품 관리</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="lpInsertPage" class="dropdown-item">상품 등록</a>
                                <a href="lpUpdatePage" class="dropdown-item">상품 수정</a>
                                <a href="lpDeletePage" class="dropdown-item">상품 삭제</a>
                            </div>
                        </c:if>
                    </div>
                    <a href="#" class="nav-item nav-link"><i class="fa fa-table me-2"></i>요청 게시판 관리</a>
                    <c:if test="${Auth == 'admin' }">
                        <a href="settingManagement" class="nav-item nav-link"><i class="fa fa-table me-2"></i>설정 관리</a>
                    </c:if>
                    <c:if test="${Auth != 'sub' }">
                        <a href="#" class="nav-item nav-link"><i class="fa fa-table me-2"></i>매출 관리</a>
                    </c:if>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->
    </body>
</html>
