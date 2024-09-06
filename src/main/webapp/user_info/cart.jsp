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
    <div class="container mt-5 cart" >
        <h2 class="mb-4">Giỏ hàng của bạn</h2>
        <div class="cart-container">
            <table class="cart-table">
                <thead>
                <tr><th>Hình ảnh</th>
                    <th>Sản phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Tổng cộng</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody>
                <!-- Hàng mẫu -->
                <tr>
                    <td class="product">
                        <img src="product-image.jpg" alt="Product Name">
                    </td>
                    <td>   <span>Tên sản phẩm</span></td>
                    <td class="price">1,000,000 VND</td>
                    <td class="quantity">
                        <input type="number" value="1" min="1">
                    </td>
                    <td class="total">1,000,000 VND</td>
                    <td class="actions">
                        <button class="remove">Xóa</button>
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="cart-summary">
                <h2>Tổng đơn hàng</h2>
                <p>Tổng cộng: <span>1,000,000 VND</span></p>
                <button class="checkout-btn">Tiến hành thanh toán</button>
            </div>
        </div>
    </div>

</main>
<script src="../bootstrap-5.2.3-dist/js/bootstrap.js"></script>
</body>
</html>
