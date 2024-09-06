<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Đổi mật khẩu</title>
    <link rel="stylesheet" href="../bootstrap-5.2.3-dist/css/bootstrap.css">
    <link rel="stylesheet" href="../css/user.css">
</head>
<body>

<div class="sidebar">
    <nav class="nav flex-column">
        <a class="nav-link nav-logo" href="/users?action=logOut">
            <img class="logo" src="../image/4gear.png" alt="">
        </a>
        <a class="nav-link" href="../index.jsp"> Trang chủ </a>
        <a class="nav-link" href="/users?action=into-user"> Thông tin tài khoản </a>
        <a class="nav-link" href="/users?action=change-password"> Đổi mật khẩu </a>
        <a class="nav-link" href="/users?action=into-card"> Giỏ hàng </a>
        <a class="nav-link" href=""> Lịch sử đặt hàng </a>
        <a class="nav-link" href="/users?action=logOut"> Đăng xuất </a>
    </nav>
</div>

<main class="main_content">

    <div class="container mt-5 password">
        <h2 class="mb-4">Đổi mật khẩu</h2>

        <!-- Hiển thị thông báo nếu có -->
        <c:if test="${not empty message}">
            <div class="alert alert-info">
                    ${message}
            </div>
        </c:if>

        <form action="users" method="post">
            <input type="hidden" name="action" value="changePass">

            <div class="mb-3">
                <label for="currentPassword" class="form-label">Mật khẩu hiện tại</label>
                <input type="password" class="form-control" id="currentPassword" name="oldPassword" required>
            </div>
            <div class="mb-3">
                <label for="newPassword" class="form-label">Mật khẩu mới</label>
                <input type="password" class="form-control" id="newPassword" name="newPassword" required>
            </div>
            <div class="mb-3">
                <label for="confirmPassword" class="form-label">Xác nhận mật khẩu mới</label>
                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
            </div>
            <button type="submit" class="btn btn-primary">Cập nhật mật khẩu</button>
        </form>
    </div>
</main>
<script src="../bootstrap-5.2.3-dist/js/bootstrap.js"></script>
</body>
</html>
