<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/31/2024
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="bootstrap-5.2.3-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .main-container {
            display: flex;
            margin-top: 12%;
            justify-content: center;
            align-items: center;
            height: 30vh;
            text-align: center;
        }

    </style>

</head>
<body>
<div class="main-container mt-5">
    <div class="container">
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Đăng ký tài khoản thành công!</h4>
            <p>Chào mừng bạn đến với Gear4. Bạn có thể quay lại trang chủ và đăng nhập để sử dụng dịch vụ.</p>

            <hr>
            <p class="mb-0">Click vào logo để trở về trang chủ </p>
            <a href="users?action="><img src="image/4gear.png" height="150" width="170" class="img-fluid main-logo" alt="Logo"></a>

        </div>
    </div>
</div>
<script src="bootstrap-5.2.3-dist/js/bootstrap.js"></script>

</body>
</html>
