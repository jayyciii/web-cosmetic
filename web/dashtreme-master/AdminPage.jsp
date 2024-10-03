<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="entity.Product" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>TEST</title>
  <!-- loader-->
  <!--favicon-->
  <link rel="icon" href="dashtreme-master/assets/images/favicon.ico" type="image/x-icon">
  <!-- Vector CSS -->
  <link href="dashtreme-master/assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
  <!-- simplebar CSS-->
  <link href="dashtreme-master/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
  <!-- Bootstrap core CSS-->
  <link href="dashtreme-master/assets/css/bootstrap.min.css" rel="stylesheet" />
  <!-- animate CSS-->
  <link href="dashtreme-master/assets/css/animate.css" rel="stylesheet" type="text/css" />
  <!-- Icons CSS-->
  <link href="dashtreme-master/assets/css/icons.css" rel="stylesheet" type="text/css" />
  <!-- Sidebar CSS-->
  <link href="dashtreme-master/assets/css/sidebar-menu.css" rel="stylesheet" />
  <!-- Custom Style-->
  <link href="dashtreme-master/assets/css/app-style.css" rel="stylesheet" />

</head>

<body class="bg-theme bg-theme1">

  <!-- Start wrapper-->
  <div id="wrapper">

    <!--Start sidebar-wrapper-->
    <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
      <div class="brand-logo">
        <a href="index.jsp">
          <!-- <img src="assets/images/logo-icon.png" class="logo-icon" alt="logo icon"> -->
          <h5 class="logo-text">Quay về NotNetFlix </h5>
        </a>
      </div>
      <ul class="sidebar-menu do-nicescrol">
        <li class="sidebar-header">Doanh mục</li>
        <li>
          <a href="${pageContext.request.contextPath}/ProductListServlet">
            <i class="fa fa-home"></i> <span>Trang chủ</span>
          </a>
        </li>

        <li>
          <a href="${pageContext.request.contextPath}/ProductListForAdminServlet">
            <i class="fa fa-film"></i> <span>Phim</span>
          </a>
        </li>

        <li>
          <a href="DoanhThu.jsp">
            <i class="fa fa-money"></i> <span>Doanh thu</span>
          </a>
        </li>

        <li>
          <a href="Employeese.jsp">
            <i class="fa fa-address-card"></i> <span>Nhân viên</span>
          </a>
        </li>

        <li>
          <a href="DetailsAccount.jsp">
            <i class="fa fa-user-circle"></i> <span>Thông tin tài khoản</span>
          </a>
        </li>

        <li>
          <a href="index.jsp" target="_blank">
            <i class="zmdi zmdi-lock"></i> <span>Đăng xuất</span>
          </a>
        </li>
      </ul>

    </div>
    <!--End sidebar-wrapper-->

    <!--Start topbar header-->
    <header class="topbar-nav">
      <nav class="navbar navbar-expand fixed-top">
        <ul class="navbar-nav mr-auto align-items-center">
          <li class="nav-item">
            <a class="nav-link toggle-menu" href="javascript:void();">
              <i class="icon-menu menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <form class="search-bar">
              <input type="text" class="form-control" placeholder="Chưa làm ...">
              <a href="javascript:void();"><i class="icon-magnifier"></i></a>
            </form>
          </li>
        </ul>

        <ul class="navbar-nav align-items-center right-nav-link">
          <li class="nav-item">
            <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
              <span class="user-profile"><img src="https://via.placeholder.com/110x110" class="img-circle"
                  alt="user avatar"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right">
              <li class="dropdown-item user-details">
                <a href="javaScript:void();">
                  <div class="media">
                    <div class="avatar"><img class="align-self-start mr-3" src="https://via.placeholder.com/110x110"
                        alt="user avatar"></div>
                    <div class="media-body">
                      <h6 class="mt-2 user-title">admin</h6>
                      <p class="user-subtitle">lengocloc@gmail.com</p>
                    </div>
                  </div>
                </a>
              </li>
              <li class="dropdown-divider"></li>
              <li class="dropdown-item"><i class="icon-envelope mr-2"></i> Inbox</li>
              <li class="dropdown-divider"></li>
              <li class="dropdown-item"><i class="icon-wallet mr-2"></i> Tài khoản</li>
              <li class="dropdown-divider"></li>
              <li class="dropdown-item"><i class="icon-settings mr-2"></i> Cài đặt</li>
              <li class="dropdown-divider"></li>
              <li class="dropdown-item"><i class="icon-power mr-2"></i> Đăng xuất</li>
            </ul>
          </li>
        </ul>
      </nav>
    </header>
    <!--End topbar header-->

    <div class="clearfix"></div>

    <div class="content-wrapper">
      <div class="container-fluid">

        <!--Start Dashboard Content-->

        <div class="card mt-3">
          <div class="card-content">
            <div class="row row-group m-0">
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">9.526 <span class="float-right"><i class="fa fa-shopping-cart"></i></span>
                  </h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:100%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Tổng phim đã bán <span class="float-right">+4.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">8.323.000 vnđ <span class="float-right"><i class="fa fa-usd"></i></span>
                  </h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:55%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Doanh thu <span class="float-right">+1.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">40 <span class="float-right"><i class="fa fa-eye"></i></span></h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:55%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Khách đã xem <span class="float-right">+5.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">2 <span class="float-right"><i class="fa fa-inbox"></i></span></h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:55%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Tin nhắn hỗ trợ <span class="float-right">+2.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          
        </div><!--End Row-->

        <div class="row">
          <div class="col-12 col-lg-12">
            <div class="card">
              <div class="card-header">Các phim đã thêm gần đây
                <div class="card-action">
                  <div class="dropdown">
                    <a href="javascript:void();" class="dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown">
                      <i class="icon-options"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                      <a class="dropdown-item" href="javascript:void();">Action</a>
                      <a class="dropdown-item" href="javascript:void();">Another action</a>
                      <a class="dropdown-item" href="javascript:void();">Something else here</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="javascript:void();">Separated link</a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="table-responsive">
                <table class="table align-items-center table-flush table-borderless">
                  <thead>
                    <tr>
                      <th>Phim</th>
                      <th></th>
                      <th>ID Phim</th>
                      <th>Giá</th>
                      <th>Ngày thêm</th>
                      <th>Lượt kích hoạt</th>
                    </tr>
                  </thead>
                  <tbody>
                    <!-- for each o day -->
                    <c:forEach items="${productList}" var="product">
                    <tr>
                      <td>${product.name}</td>
                      <td style="padding: 0rem;"><img src="${product.image}" class="product-img" alt="product img" style="height: 35px; width:30px;" ></td>
                      <td>${product.id}</td>
                      <td>${product.price}</td>
                      <td>03 Aug 2017</td>
                      <td>
                        <div class="progress shadow" style="height: 3px;">
                          <div class="progress-bar" role="progressbar" style="width: 90%"></div>
                        </div>
                      </td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div><!--End Row-->

        <!--End Dashboard Content-->

        <!--start overlay-->
        <div class="overlay toggle-menu"></div>
        <!--end overlay-->

      </div>
      <!-- End container-fluid-->

    </div><!--End content-wrapper-->
    <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->

    <!--Start footer-->
    <footer class="footer">
      <div class="container">
        <div class="text-center">
          Copyright © 2023 by NgocLoc
        </div>
      </div>
    </footer>
    <!--End footer-->

    <!--start color switcher-->
    <div class="right-sidebar">
      <div class="switcher-icon">
        <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
      </div>
      <div class="right-sidebar-content">

        <p class="mb-0">Gaussion Texture</p>
        <hr>

        <ul class="switcher">
          <li id="theme1"></li>
          <li id="theme2"></li>
          <li id="theme3"></li>
          <li id="theme4"></li>
          <li id="theme5"></li>
          <li id="theme6"></li>
        </ul>

        <p class="mb-0">Gradient Background</p>
        <hr>

        <ul class="switcher">
          <li id="theme7"></li>
          <li id="theme8"></li>
          <li id="theme9"></li>
          <li id="theme10"></li>
          <li id="theme11"></li>
          <li id="theme12"></li>
          <li id="theme13"></li>
          <li id="theme14"></li>
          <li id="theme15"></li>
        </ul>

      </div>
    </div>
    <!--end color switcher-->

  </div><!--End wrapper-->

  <!-- Bootstrap core JavaScript-->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>

  <!-- simplebar js -->
  <script src="assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- sidebar-menu js -->
  <script src="assets/js/sidebar-menu.js"></script>
  <!-- loader scripts -->
  <script src="assets/js/jquery.loading-indicator.js"></script>
  <!-- Custom scripts -->
  <script src="assets/js/app-script.js"></script>
  <!-- Chart js -->

  <script src="assets/plugins/Chart.js/Chart.min.js"></script>

  <!-- Index js -->
  <script src="assets/js/index.js"></script>


</body>

</html>