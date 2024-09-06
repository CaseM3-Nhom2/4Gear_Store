<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/1/2024
  Time: 9:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>


<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../bootstrap-5.2.3-dist/css/bootstrap.css">
    <link rel="stylesheet" href="../css/user.css">
    <style>
        .alert-hidden {
            display: none;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <nav class="nav flex-column">
        <a class="nav-link nav-logo" href="/users?action=">
            <img class="logo" src="../image/4gear.png" alt="">
        </a>
        <a class="nav-link" href="../users?action="> Trang chủ </a>
        <a class="nav-link" href="/users?action=into-user"> Thông tin tài khoản </a>
        <a class="nav-link" href="/users?action=change-password"> Đổi mật khẩu </a>
        <a class="nav-link" href="/users?action=into-card"> Giỏ hàng </a>
        <a class="nav-link" href=""> Lịch sử đặt hàng </a>
        <a class="nav-link" href="/users?action=logOut"> Đăng xuất </a>
    </nav>
</div>

<main class="main_content">

    <div class="container mt-5">
        <h2 class="mb-4">Thông tin tài khoản</h2>
        <c:if test="${not empty requestScope.successMessage}">
            <div class="alert alert-success mt-3">
                    ${requestScope.successMessage}
            </div>
        </c:if>

        <form action="users?action=update" method="post">
            <input type="hidden" name="account" value="update">

            <div class="mb-3">
                <label for="userAccount" class="form-label">Tên tài khoản </label>
                <input type="text" class="form-control" id="userAccount" name="account1" value="${sessionScope.user.account} " readonly>
            </div>
            <div class="mb-3">
                <label for="userName" class="form-label">Tên người dùng</label>
                <input type="text" class="form-control" id="userName" name="name" value="${sessionScope.user.name}">
            </div>

            <div class="mb-3">
                <label for="userEmail" class="form-label">Email</label>
                <input type="email" class="form-control" id="userEmail" name="email" value="${sessionScope.user.email}" readonly>
            </div>

            <div class="mb-3">
                <label for="userPhone" class="form-label">Số điện thoại</label>
                <input type="tel" class="form-control" id="userPhone" name="phone" value="${sessionScope.user.phone}">
            </div>

            <div class="mb-3">
                <label for="userAddress" class="form-label">Địa chỉ</label>
                <textarea class="form-control" id="userAddress" name="address" rows="3">${sessionScope.user.address}</textarea>
            </div>

            <button type="submit" class="btn btn-primary">Cập nhật</button>
        </form>
    </div>
</main>
<script src="../bootstrap-5.2.3-dist/js/bootstrap.js"></script>
</body>
</html>
