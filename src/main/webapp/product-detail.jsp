<%@ page import="java.util.HashSet" %>
<%@ page import="com.example.demo1.demo.model.Product" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>4Gear Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="./css/styleProduct.css" >
    <link rel="stylesheet" href="./bootstrap-5.2.3-dist/css/bootstrap.css" >
</head>
<body>

<section class="myheader">
    <div class="container header_one">
        <div class="row">
            <div class="col-md-3">
                <img src="image/4gear.png" height="100" width="160" class="img-fluid logo" alt="Logo">
            </div>
            <div class="col-md-4 search-product">
                <div class="input-group input_text mb-3 py-3">
                    <input type="text" class="form-control  " placeholder="Từ khoá tìm kiếm" aria-label="Tìm sản phẩm"
                    >
                    <button class="input-group-text" id="basic-addon2"><i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </div>
            </div>
            <div class="col-md-4 py-3">
                <div class="row">

                    <div class="col input_text call">
                        <div class="row">
                            <div class="col-3">
                                <div class="fs-3 text-danger "><i class="fa-solid fa-phone"></i></div>
                            </div>
                            <div class="col-9">Tư vấn hỗ trợ<br>
                                <strong class="text-danger">09050506</strong>
                            </div>
                        </div>
                    </div>

                    <div class="col input_text user">
                        <div class="row">
                            <div class="col-3">
                                <div class="fs-3 text-danger"><i class="fa-regular fa-user"></i></div>
                            </div>
                            <div class="col-9">
                                <c:choose>
                                    <c:when test="${not empty sessionScope.user}">
                                        <a href="/users?action=into-user"><p><c:out
                                                value="${sessionScope.user.account}"/></p></a>

                                        <a href="/users?action=logOut">Đăng xuất</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="#" data-bs-toggle="modal" data-bs-target="#register">Đăng ký</a><br>
                                        <strong><a href="#" class="text-danger" data-bs-toggle="modal"
                                                   data-bs-target="#signup">Đăng nhập</a></strong>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-2 py-3 cart  ">
                        <a href="#" class="position-relative">
                            <span class="fs-2"><i class="fa-solid fa-cart-shopping text-danger"></i></span>
                            <span class="position-absolute top-5 start-90 translate-middle badge rounded-pill bg-info">
                                    0
                                </span>
                        </a>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="myMenu bg-danger">


    <nav class="navbar navbar-expand-lg bg-danger">

        <a class="navbar-brand " href="#"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link custom-text-white active" aria-current="page" href="/products?action=get-msi">
                        <img class="img_msi" src="image/msi.png" alt="">
                    </a>

                </li>
                <li class="nav-item">
                    <a class="nav-link custom-text-white" href="/products?action=get-asus"><img class="img_logo"
                                                                                                src="image/asus.png"
                                                                                                alt=""></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-text-white " href="/products?action=get-lenovo"><img class="img_lenovo"
                                                                                                   src="image/lenovo.png"
                                                                                                   alt=""></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-text-white" href="/products?action=get-acer"><img class="img_acer"
                                                                                                src="image/acer.png"
                                                                                                alt=""></a>
                <li class="nav-item">
                    <a class="nav-link custom-text-white" href="/products?action=get-gygabyte"><img class="img_giga"
                                                                                                    src="image/gygabyte.png"
                                                                                                    alt=""></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-text-white" href="/products?action=get-hp"><img class="img_dell"
                                                                                              src="image/hp.png" alt=""></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link custom-text-white" aria-disabled="true"></a>
                </li>
            </ul>

        </div>

    </nav>


</section>

<section class="main_content my-3">
    <div class="container">
        <div class="slider">
            <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="image/slider3.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="image/slider2.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="image/slider4.png" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <div class = "row1">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 order-mb-1 gallery-product-template pd-right-0">
                    <div class="d-flex-wrap d-flex sticky-gallery">
                        <div class="product-gallery d-flex-slick slick-initialized slick-slider">
                            <img src="image/products/msi_gf63.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 order-mb-1 product-content">
                    <div class="pro-content-head clearfix">
                        <div class="head-product-title" style="">
                            <h1 data-available="Còn hàng" class="green">
                                <c:out value="${product.getDescription()}" />
                            </h1>
                        </div>
                    </div>
                    <div class="product-info mt-4">
                        <div class="views-rating">
                            <span>5682 lượt xem | </span>
                            <span class="stars">
                    <i class="fa fa-star text-warning"></i>
                    <i class="fa fa-star text-warning"></i>
                    <i class="fa fa-star text-warning"></i>
                    <i class="fa fa-star text-warning"></i>
                    <i class="fa fa-star text-warning"></i>
                    <span>(11)</span>
                </span>
                        </div>
                        <div class="product-brand">
                            <strong>Thương hiệu: </strong><span style="color: red"><c:out value="${product.getBrand()}" /></span>
                        </div>
                        <div class="product-type">
                            <strong>Loại: </strong><span style="color: red">Laptop</span>
                        </div>
                    </div>
                    <div class="product-details">
                        <div class="product-price">
                            <strong>Giá: </strong><span class="text" style="color: red"><fmt:formatNumber type="number" value="${product.price}"/> VND</span>
                        </div>
                        <div class="product-quantity">
                            <strong>Số lượng: </strong>
                            <input type="number" min="1" value="1" class="quantity-input">
                        </div>
                        <div class="action-buttons mt-3 d-flex justify-content-between">
                            <button class="btn btn-danger add-to-cart">Thêm vào giỏ hàng</button>
                            <button class="btn btn-primary buy-now">Mua Ngay</button>
                        </div>
                    </div>
                    <div class="office">
                        <img src="image/products/tang_ban_quyen_office_2019.jpg" alt="">
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<section class="myfooter bg-dark custom-text-white py-4">
    <div class="container">
        <div class="row">
            <div class="col-md-6 info ">
                Thiên đường LapTop <br>
                Công ty cổ phần thương mại 4Gear Sttore <br>
                Chứng nhận ĐKKD số 22222222 do sở Code Gym cấp <br>
                Địa chỉ Đà nẵng,Sài Gòn,Ha Nội <br>
                Điện thoại : 09050505 <br>
                Email chuyensupport@4gear.vn <br>
            </div>
            <div class="col-md-6">
                <h5>Nhận Tin khuyến mãi</h5>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="your email" aria-label="Recipient's username"
                           aria-describedby="basic-addon2">
                    <button class="input-group-text custom-text-white bg-danger" id="basic-addon3">Đăng ký</button>
                </div>
                <div>
                    <span class="box50  ">
                      <i class="fa-brands fa-facebook"></i>
                    </span>
                    <span class="box50 tiktok ">
                        <i class="fa-brands fa-tiktok"></i>
                    </span>
                    <span class="box50 youtube ">
                     <i class="fa-brands fa-youtube"></i>
                    </span>
                    <span class="box50 google ">
                  <i class="fa-brands fa-twitter"></i>
                    </span>
                </div>
            </div>
        </div>
    </div>

</section>
<div style="color: #2c3034" class="modal fade" id="signup" tabindex="-1" role="dialog"
     aria-labelledby="addProductModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title" id="addProductModalLabel">
                    <i class="fa fa-sign-in-alt" style="margin-right: 10px;"></i> Đăng nhập
                </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body">
                <form action="users" method="post">
                    <input type="hidden" name="action" value="login">
                    <div class="mb-3">
                        <label for="exampleInputAccount" class="form-label">Tên tài khoản</label>
                        <input class="form-control" id="exampleInputAccount" name="account" required>
                        <div id="" class="form-text"><span></span></div>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" name="password" required>
                        <div>
                            <span id="loginError"
                                  data-error="<%= request.getAttribute("loginError") != null ? request.getAttribute("loginError") : "" %>"
                                  style="display: none; color: red;margin-top: 10px"></span>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary" style="width:100%;height: 40px;margin-bottom:10px">
                        <span style="font-size: 16px">Đăng nhập</span>
                    </button>

                    <div> Nếu chưa có tài khoản? <a href="#" data-bs-toggle="modal" data-bs-target="#register"
                                                    style="margin-left: 20px;color: #0b5ed7">Đăng ký</a></div>
                </form>

            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="registerLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="registerLabel">
                    <i class="fa fa-user-plus" style="margin-right: 10px;"></i> Đăng ký
                </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="users" method="post">
                    <input type="hidden" name="action" value="create">
                    <div class="form-group mt-2">
                        <label for="nameAcout">Tên tài khoản</label>
                        <input type="text" class="form-control mt-1" id="nameAcout" name="account"
                               placeholder="Nhập tên tài khoản" required>
                    </div>
                    <div class="form-group mt-2">
                        <label for="passWord">Mật khẩu</label>
                        <input type="password" class="form-control mt-1" id="passWord" name="password"
                               placeholder="Nhập mật khẩu" required>
                    </div>
                    <div class="form-group mt-2">
                        <label for="passWordaAgain">Xác nhận mật khẩu</label>
                        <input type="password" class="form-control mt-1" id="passWordaAgain"
                               placeholder="Nhập lại mật khẩu" required>
                    </div>
                    <div class="form-group mt-2">
                        <label for="email">Email</label>
                        <input type="email" class="form-control mt-1" id="email" name="email" placeholder="Nhập email"
                               required>
                    </div>
                    <div class="form-group mt-2">
                        <label for="name">Họ và tên</label>
                        <input type="text" class="form-control mt-1" id="name" name="name" placeholder="Nhập họ và tên"
                               required>
                    </div>
                    <div class="form-group mt-2">
                        <label for="telephone">Số điện thoại</label>
                        <input type="text" class="form-control mt-1" id="telephone" name="phone"
                               placeholder="Nhập số điện thoại" required>
                    </div>
                    <div class="form-group mt-2">
                        <label for="address">Địa chỉ</label>
                        <textarea class="form-control mt-1" id="address" name="address" placeholder="Nhập địa chỉ"
                                  required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary mt-3 btn-lg">Đăng ký</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="javascript/js.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="./bootstrap-5.2.3-dist/js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

</script>

</body>
</html>

