<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="entity.Product" %>
<!doctype html>
<html lang="zxx">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>aranoz</title>
        <link rel="icon" href="img/favicon.png">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- animate CSS -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- owl carousel CSS -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <!-- nice select CSS -->
        <link rel="stylesheet" href="css/nice-select.css">
        <!-- font awesome CSS -->
        <link rel="stylesheet" href="css/all.css">
        <!-- flaticon CSS -->
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <!-- font awesome CSS -->
        <link rel="stylesheet" href="css/magnific-popup.css">
        <!-- swiper CSS -->
        <link rel="stylesheet" href="css/slick.css">
        <link rel="stylesheet" href="css/price_rangs.css">
        <!-- style CSS -->
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <!--::header part start::-->
        <header class="main_menu home_menu">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <a class="navbar-brand" href="index.html"> <img src="img/logo.png" alt="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                    aria-expanded="false" aria-label="Toggle navigation">
                                <span class="menu_icon"><i class="fas fa-bars"></i></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item" id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="index.jsp">Trang chủ</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_1"
                                           role="button" data-toggle="dropdown" aria-haspopup="true"
                                           aria-expanded="false">
                                            Shop
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                            <a class="dropdown-item"
                                               href="${pageContext.request.contextPath}/ProductListServletForUser">Sản
                                                phẩm</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_3"
                                           role="button" data-toggle="dropdown" aria-haspopup="true"
                                           aria-expanded="false">
                                            pages
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
                                            <a class="dropdown-item" href="Login.jsp">Đăng nhập</a>
                                            <a class="dropdown-item" href="checkout.html">Hóa đơn</a>
                                            <a class="dropdown-item"
                                               href="${pageContext.request.contextPath}/ProductListServlet">Trang admin
                                            </a>
                                            <form method="POST" action="CartListServlet">
                                                <a class="dropdown-item" href="${pageContext.request.contextPath}/CartListServlet">Giỏ hàng</a>
                                            </form>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_2"
                                           role="button" data-toggle="dropdown" aria-haspopup="true"
                                           aria-expanded="false">
                                            blog
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
                                            <a class="dropdown-item" href="blog.html">Tin tức</a>
                                        </div>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="contact.html">Hỗ Trợ</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="hearer_icon d-flex">
                                <a id="search_1" href="javascript:void(0)"><i class="ti-search"></i></a>
                                <a href=""><i class="ti-heart"></i></a>
                                <div class="dropdown cart">
                                    <a class="dropdown-toggle" href="${pageContext.request.contextPath}/CartListServlet" id="navbarDropdown3" role="button"
                                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <form method="POST" action="CartListServlet">
                                            <i class="fas fa-cart-plus"></i>
                                    </form>
                                    </a>
                                    <!-- <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <div class="single_product">

                                </div>
                            </div> -->

                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="search_input" id="search_input_box">
                <div class="container ">
                    <form action="${pageContext.request.contextPath}/SearchAjaxServlet" method="GET" class="d-flex justify-content-between search-inner">
                        <input oninput="searchByName(this)" type="text" class="form-control" id="search_input" name="txtSearch" placeholder="Nhập tên phim muốn tìm">
                        <button type="submit" class="btn"></button>
                        <span class="ti-close" id="close_search" title="Close Search"></span>
                    </form>
                </div>
            </div>
        </header>
        <!-- Header part end-->

        <!--================Home Banner Area =================-->
        <!-- breadcrumb start-->
        <section class="breadcrumb breadcrumb_bg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="breadcrumb_iner">
                            <div class="breadcrumb_iner_item">
                                <h2>SHOP</h2>
                                <p>Home <span>-</span>Tất cả sản phẩm</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb start-->

        <!--================Category Product Area =================-->
        <section class="cat_product_area section_padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="left_sidebar_area">
                            <aside class="left_widgets p_filter_widgets">
                                <div class="l_w_title">
                                    <h3>Doanh mục</h3>
                                </div>
                                <div class="widgets_inner">
                                    <ul class="list">
                                    </ul>
                                </div>
                            </aside>

                            <aside class="left_widgets p_filter_widgets">
                                <div class="l_w_title">
                                    <h3>Lọc sản phẩm</h3>
                                </div>
                                <div class="widgets_inner">
                                    <ul class="list">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/ProductListByType?id=1">Hành Động</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/ProductListByType?id=2">Viễn Tưởng</a>
                                        </li>
                                        <li class="active">
                                            <a href="${pageContext.request.contextPath}/ProductListByType?id=3">Khoa Học</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/ProductListByType?id=4">Lãng Mạn</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/ProductListByType?id=5">Trinh Thám</a>
                                        </li>
                                    </ul>
                                    <ul class="list">
                                        <li>
                                            <a href="#">Louis Vuitton</a>
                                        </li>
                                        <li>
                                            <a href="#">Hermal</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">H&M</a>
                                        </li>
                                        <li>
                                            <a href="#">Gucci</a>
                                        </li>
                                    </ul>
                                </div>
                            </aside>

                            <aside class="left_widgets p_filter_widgets">
                                <div class="l_w_title">
                                    <h3>Lọc màu</h3>
                                </div>
                                <div class="widgets_inner">
                                    <ul class="list">
                                        <li>
                                            <a href="#">Màu đen</a>
                                        </li>
                                        <li>
                                            <a href="#">Màu đen xám</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Màu đen cam</a>
                                        </li>
                                        <li>
                                            <a href="#">Màu vàng</a>
                                        </li>
                                        <li>
                                            <a href="#">Màu xám không gian</a>
                                        </li>
                                    </ul>
                                </div>
                            </aside>

                            <aside class="left_widgets p_filter_widgets price_rangs_aside">
                                <div class="l_w_title">
                                    <h3>Lọc giá</h3>
                                </div>
                                <div class="widgets_inner">
                                    <div class="range_item">
                                        <!-- <div id="slider-range"></div> -->
                                        <input type="text" class="js-range-slider" value="" />
                                        <div class="d-flex">
                                            <div class="price_text">
                                                <p>Giá :</p>
                                            </div>
                                            <div class="price_value d-flex justify-content-center">
                                                <input type="text" class="js-input-from" id="amount" readonly />
                                                <span>đến</span>
                                                <input type="text" class="js-input-to" id="amount" readonly />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="product_top_bar d-flex justify-content-between align-items-center">
                                    <div class="single_product_menu">
                                        <p><span>32</span> Sản phẩm được tìm thấy</p>
                                    </div>
                                    <div class="single_product_menu d-flex">
                                        <h5>Sắp xếp theo : </h5>
                                        <select>
                                            <option data-display="Select">Tên</option>
                                            <option value="1">Giá</option>
                                            <option value="2">Độ phổ biến</option>
                                        </select>
                                    </div>
                                    <div class="single_product_menu d-flex">
                                        <h5>Hiển thị :</h5>
                                        <div class="top_pageniation">
                                            <ul>
                                                <li>1</li>
                                                <li>2</li>
                                                <li>3</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="single_product_menu d-flex">
                                        <div class="input-group">
                                            <form action="${pageContext.request.contextPath}/SearchAjaxServlet" method="GET" class="d-flex justify-content-between search-inner">
                                                <button type="submit" class="btn"></button>
                                                <input oninput="searchByName(this)" type="text" class="form-control" id="search_input" name="txtSearch" placeholder="Tìm " aria-describedby="inputGroupPrepend">
<!--                                            <form action="${pageContext.request.contextPath}/SearchAjaxServlet" method="GET" class="d-flex justify-content-between search-inner">
                                                <input oninput="searchByName(this)" type="text" class="form-control" id="search_input" name="txtSearch" placeholder="Nhập tên phim muốn tìm">
                                                <button type="submit" class="btn"></button>
                                                <span class="ti-close" id="close_search" title="Close Search"></span>
                                            </form>-->
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="inputGroupPrepend"><i
                                                            class="ti-search"></i></span>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="updateContainer" class="row align-items-center latest_product_inner">
                            
                            <c:forEach items="${productList}" var="product">
                                <div class="col-lg-4 col-sm-6">
                                    <div class="single_product_item">
                                        <a href="DetailsProductServlet?id=${product.id}">
                                        <img src="${product.image}" alt="">
                                        </a>
                                        <div class="single_product_text">
                                            <h4>${product.name}</h4>
                                            <h3>Price : ${product.price}</h3>
                                            <a href="AddToCart?id=${product.id}">+ add to cart<i class="ti-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="col-lg-12">
                                <div class="pageination">
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-center">
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Previous">
                                                    <i class="ti-angle-double-left"></i>
                                                </a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                                            <li class="page-item"><a class="page-link" href="#">6</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Next">
                                                    <i class="ti-angle-double-right"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Category Product Area =================-->

        <!-- product_list part start-->
        <section class="product_list best_seller">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="section_tittle text-center">
                            <h2>Best Sellers <span>shop</span></h2>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center justify-content-between">
                    <div class="col-lg-12">
                        <div class="best_product_slider owl-carousel">
                            <div class="single_product_item">
                                <img src="img/product/product_1.png" alt="">
                                <div class="single_product_text">
                                    <h4>Quartz Belt Watch</h4>
                                    <h3>$150.00</h3>
                                </div>
                            </div>
                            <div class="single_product_item">
                                <img src="img/product/product_2.png" alt="">
                                <div class="single_product_text">
                                    <h4>Quartz Belt Watch</h4>
                                    <h3>$150.00</h3>
                                </div>
                            </div>
                            <div class="single_product_item">
                                <img src="img/product/product_3.png" alt="">
                                <div class="single_product_text">
                                    <h4>Quartz Belt Watch</h4>
                                    <h3>$150.00</h3>
                                </div>
                            </div>
                            <div class="single_product_item">
                                <img src="img/product/product_4.png" alt="">
                                <div class="single_product_text">
                                    <h4>Quartz Belt Watch</h4>
                                    <h3>$150.00</h3>
                                </div>
                            </div>
                            <div class="single_product_item">
                                <img src="img/product/product_5.png" alt="">
                                <div class="single_product_text">
                                    <h4>Quartz Belt Watch</h4>
                                    <h3>$150.00</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- product_list part end-->

        <!--::footer_part start::-->
        <footer class="footer_part">
            <div class="container">
                <div class="row justify-content-around">
                    <div class="col-sm-6 col-lg-2">
                        <div class="single_footer_part">
                            <h4>Top Products</h4>
                            <ul class="list-unstyled">
                                <li><a href="">Managed Website</a></li>
                                <li><a href="">Manage Reputation</a></li>
                                <li><a href="">Power Tools</a></li>
                                <li><a href="">Marketing Service</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2">
                        <div class="single_footer_part">
                            <h4>Quick Links</h4>
                            <ul class="list-unstyled">
                                <li><a href="">Jobs</a></li>
                                <li><a href="">Brand Assets</a></li>
                                <li><a href="">Investor Relations</a></li>
                                <li><a href="">Terms of Service</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2">
                        <div class="single_footer_part">
                            <h4>Features</h4>
                            <ul class="list-unstyled">
                                <li><a href="">Jobs</a></li>
                                <li><a href="">Brand Assets</a></li>
                                <li><a href="">Investor Relations</a></li>
                                <li><a href="">Terms of Service</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2">
                        <div class="single_footer_part">
                            <h4>Resources</h4>
                            <ul class="list-unstyled">
                                <li><a href="">Guides</a></li>
                                <li><a href="">Research</a></li>
                                <li><a href="">Experts</a></li>
                                <li><a href="">Agencies</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <div class="single_footer_part">
                            <h4>Newsletter</h4>
                            <p>Heaven fruitful doesn't over lesser in days. Appear creeping
                            </p>
                            <div id="mc_embed_signup">
                                <form target="_blank"
                                      action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                      method="get" class="subscribe_form relative mail_part">
                                    <input type="email" name="email" id="newsletter-form-email" placeholder="Email Address"
                                           class="placeholder hide-on-focus" onfocus="this.placeholder = ''"
                                           onblur="this.placeholder = ' Email Address '">
                                    <button type="submit" name="submit" id="newsletter-submit"
                                            class="email_icon newsletter-submit button-contactForm">subscribe</button>
                                    <div class="mt-10 info"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="copyright_part">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="copyright_text">
                                <P><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></P>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="footer_icon social_icon">
                                <ul class="list-unstyled">
                                    <li><a href="#" class="single_social_icon"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#" class="single_social_icon"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#" class="single_social_icon"><i class="fas fa-globe"></i></a></li>
                                    <li><a href="#" class="single_social_icon"><i class="fab fa-behance"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--::footer_part end::-->

        <!-- jquery plugins here-->
        <script src="js/jquery-1.12.1.min.js"></script>
        <!-- popper js -->
        <script src="js/popper.min.js"></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- easing js -->
        <script src="js/jquery.magnific-popup.js"></script>
        <!-- swiper js -->
        <script src="js/swiper.min.js"></script>
        <!-- swiper js -->
        <script src="js/masonry.pkgd.js"></script>
        <!-- particles js -->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <!-- slick js -->
        <script src="js/slick.min.js"></script>
        <script src="js/jquery.counterup.min.js"></script>
        <script src="js/waypoints.min.js"></script>
        <script src="js/contact.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.form.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/mail-script.js"></script>
        <script src="js/stellar.js"></script>
        <script src="js/price_rangs.js"></script>
        <!-- custom js -->
        <script src="js/custom.js"></script>
        <script>
                                        function searchByName(input) {
                                            var searchText = input.value.trim();
                                            if (searchText !== "") {
                                                var xhr = new XMLHttpRequest();
                                                var url = "${pageContext.request.contextPath}/SearchAjaxServlet?txtSearch=" + searchText;
                                                xhr.open("GET", url, true);
                                                xhr.onreadystatechange = function () {
                                                    if (xhr.readyState === 4 && xhr.status === 200) {
                                                        document.getElementById("updateContainer").innerHTML = xhr.responseText;
                                                    }
                                                };
                                                xhr.send();
                                            }
                                        }

        </script>
    </body>

</html>