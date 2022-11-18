<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <% String pjName = "/eumsae"; %>

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
                    <div class="position-relative">
                        <img class="rounded-circle" src="<%= pjName %>/resources/00-darkpan-1.0.0/img/user.jpg" alt="" style="width: 40px; height: 40px" />
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">Jhon Doe</h6>
                        <span>Admin</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="managerManagement" class="nav-item nav-link"><i class="fa fa-table me-2"></i>관리자 계정 관리</a>
                    <a href="userManagemant" class="nav-item nav-link"><i class="fa fa-table me-2"></i>회원 관리</a>
                    <a href="productManagemant" class="nav-item nav-link"><i class="fa fa-table me-2"></i>상품 관리</a>
                    <a href="settingManagement" class="nav-item nav-link"><i class="fa fa-table me-2"></i>설정 관리</a>
                    <a href="#" class="nav-item nav-link"><i class="fa fa-table me-2"></i>매출 관리</a>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->
    </body>
</html>
