<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>notnetflix</title>
        <link rel="icon" href="./assets/img/web-icon/photosmile.vn__final_69809939616869442__preview_rev_1.png"
              type="img/x-icon">
        <link rel="stylesheet" type="text/css" href="./assets/css/style.css">
        <link rel="stylesheet" href="./assets/css/responsive.css">
        <link rel="stylesheet" href="./themify-icons/themify-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
<style>
        .cart-btn{
            display: inline-block;
            position: absolute;
            margin-top: -8px;
        }
    </style>
    <body>
        <div class="main">
            <!-- begin: header -->
            <div class="black"></div>
            <div class="header">
                <!-- begin nav -->
                <ul class="nav">
                    <li><a href="index.jsp">Trang Chủ</a></li>
                    <li><a href="">Phim Lẻ<i class="nav-arrow-down ti-angle-down"></i>
                            <ul class="subnav">
                                <li><a href="#">Viet Nam</a></li>
                                <li><a href="#">US UK</a></li>
                                <li><a href="#">Others</a></li>
                            </ul>
                    </li>
                    <li><a href="#Suport">Hỗ Trợ</a></li>
                    <li><a href="#Social">Cộng đồng<i class="nav-arrow-down ti-angle-down"></i>
                            <ul class="subnav">
                                <li><a href="#">Facebook</a></li>
                                <li><a href="#">Discord</a></li>
                                <li><a href="#">Tiktok</a></li>
                            </ul>
                    </li>
                    <li>
                        <a href="#More">Mục Lục<i class="nav-arrow-down ti-angle-down"></i></a>
                        <ul class="subnav">
                            <a href="${pageContext.request.contextPath}/ProductListServletForUser">Phim Hot</a>
                        </ul>
                    </li>
                    <li class="icon-search" onclick="toggleSearchBox()">
                        <i class="search-icon ti-search"></i>
                    </li>
                </ul>
                <!-- search  -->
                <!-- menu btn -->
                <div class="menu-btn">
                    <i class="menu-icon ti-menu"></i>
                </div>
                <!-- end nav -->
            </div>
            <!-- end: header -->
            <div class="main-section">
                <div class="search-box" id="searchBox">
                    <div class="search-input">
                        <form action="/search" method="POST">
                            <input type="text" name="search_query" placeholder="Nhap ten phim muon tim ...">
                            <button type="submit" style="display: none;"></button>
                        </form>
                    </div>
                </div>
                <div class="container-title">
                    <div class="item-title">
                        <div class="title-heading">
                            <img src="./assets/img/title-film/The-Flash-Logo.png" alt="">
                        </div>
                        <div class="title-body"></div>
                        <div class="container-play">
                            <div class="button-play">
                                <a href=""><i class="fa fa-play"></i>Phát</a>
                            </div>
                            <div class="button-info">
                                <a href=""><i class="fa fa-info-circle"></i>Thông tin chi tiết</a>
                            </div>
                            <div class="totalScore"></div>
                        </div>


                        <div class="container-title-trending">
                            <div class="trending-title">Phim hot trong tuần</div>
                        </div>

                    </div>
                </div>
                <div class="container-trending">
                    <div class="container-label">
                        <div class="label">16+</div>
                    </div>
                    <div class="row-trending">
                        <div class="col col-six">
                            <div class="item-trending">
                                <div class="img-wrapper">
                                    <a href="">
                                        <img src="./assets/img/poster-film/poster1.jpeg" alt="Poster">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col col-six">
                            <div class="item-trending">
                                <div class="img-wrapper">
                                    <a href="">
                                        <img src="./assets/img/poster-film/03c0c2137dd12b0dd65d89c3b2ac2baa.jpg" alt="Poster">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col col-six">
                            <div class="item-trending">
                                <div class="img-wrapper">
                                    <a href="">
                                        <img src="./assets/img/poster-film/HD-wallpaper-dunkirk-2017-battlefield-duty-movie-poster-war.jpg" alt="Poster">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col col-six">
                            <div class="item-trending">
                                <div class="img-wrapper">
                                    <a href="">
                                        <img src="./assets/img/poster-film/desktop-wallpaper-new-movie-posters-hollywood-movie-2022.jpg" alt="Poster">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col col-six">
                            <div class="item-trending">
                                <div class="img-wrapper">
                                    <a href="">
                                        <img src="./assets/img/poster-film/Black-Panther-poster-main-xl.jpg" alt="Poster">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col col-six">
                            <div class="item-trending">
                                <div class="img-wrapper">
                                    <a href="">
                                        <img src="./assets/img/poster-film/Rebel-Star-Prabhas-Adipurush-Movie-First-Look-HD-posters-9.jpg.webp" alt="Poster">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col col-six">
                            <div class="item-trending">
                                <div class="img-wrapper">
                                    <a href="">
                                        <img src="./assets/img/poster-film/FuTC6foaYAAcbie.jpg-large.jpeg" alt="Poster">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col col-six">
                            <div class="item-trending">
                                <div class="img-wrapper">
                                    <a href="">
                                        <img src="./assets/img/poster-film/8d725e795cee0089b31856623044357e.jpg" alt="Poster">
                                    </a>
                                </div>
                            </div>
                        </div>




                    </div>


                    <div class="black-bottom"></div>
                </div>

                <video autoplay muted loop play-s-inline id="background-video">
                    <source src="./assets/css/Phim .mp4" type="video/mp4">
                </video>

                <div class="container-login">
                    <c:if test="${empty sessionScope.username}">
                        <div class="signup-btn">
                            <a href="#loginn">Đăng Ký</a>
                        </div>
                        <div class="login-btn">
                            <a href="#loginn">Đăng Nhập</a>
                        </div>
                    </c:if>

                    <c:if test="${not empty sessionScope.username}">
                        <div class="signup-btn">
                            <a href="${pageContext.request.contextPath}/LogoutServlet">Đăng Xuất</a>
                        </div>
                        <div class="login-btn">
                            <a href="details-account.html">Xin chào ${username}</a>
                        </div>

                        <c:if test="${'admin' eq sessionScope.username}">
                            <div class="signup-btn">
                                <a href="${pageContext.request.contextPath}/ProductListServlet">Trang nhân viên</a>
                            </div>
                        </c:if>
                        <div class="cart-btn">
                            <form method="POST" action="CartListServlet">
                                <a href="${pageContext.request.contextPath}/CartListServlet"><i class="ti-shopping-cart"></i></a>
                            </form>
                        </div>
                    </c:if>

                </div>
            </div>
            <!-- begin: slider -->
            <div class="sliders">
                <div class="hidden-offset" id="loginn"></div>
                <!--             <div class="container" id="container">
                                <<div class="form-container sign-up">
                                    <form method="POST" action="/register">
                                        <h1>Tạo tài khoản</h1>
                                        <input type="text" name="username" placeholder="Nhap ten dang nhap">
                                        <input type="text" placeholder="Email">
                                        <input type="password" name="password" placeholder="Mat khau">
                                        <button>Đăng ký</button>
                                    </form>
                                </div>
                                <div class="form-container sign-in">
                                    <form action="LoginServlet" method="POST">
                                        <h1>Đăng nhập</h1>
                                        <input type="text" name="username" placeholder="Nhap ten dang nhap">
                                        <input type="password" name="password" placeholder="Mat khau">
                                        <button>Đăng nhập</button>
                                        <a href="#">Quên mật khẩu ?</a>
                                    </form>
                                </div>
                                <div class="toggle-container">
                                    <div class="toggle">
                                        <div class="toggle-panel toggle-left">
                                            <h1>Mừng bạn trở lại !</h1>
                                            <p>Nhập thông tin tài khoản để trải nghiệm dịch vụ của chúng tôi</p>
                                            <button class="hidden" id="login">Sign In</button>
                                        </div>
                                        <div class="toggle-panel toggle-right">
                                            <h1>Lần đầu ghé NotNetFlix ?</h1>
                                            <p>Đăng ký ngay để xem phim không quảng cáo</p>
                                            <button class="hidden" id="register">Sign Up</button>
                                        </div>
                                    </div>
                                </div>-->
            </div> 
        </div>
    </div>
    <!-- begin: footer -->
    <footer class="footer">
        <div class="social-list">
            <a href=""><i class="ti-facebook"></i></a>
            <a href=""><i class="ti-instagram"></i></a>
            <a href=""><i class="ti-dropbox"></i></a>
            <a href=""><i class="ti-youtube"></i></a>
            <a href=""><i class="ti-twitter"></i></a>
        </div>

        <p class="coppy-right">
            copy right by
            <a href="https://www.facebook.com/lengocloc156/">Ngọc Lộc</a>
        </p>
    </footer>
    <!-- end: footer -->
</div>
</div>
</div>

<!-- modal of pay -->
<div class="modal-shop-buy-item js-modal-shop-buy-item">
    <div class="modal-container">
        <div class="modal-container-close js-modal-container-close">
            <i class="ti-close"></i>
        </div>

        <header class="modal-container-header">
            <div class="shop-container-header-titile">
                <i class="ti-shopping-cart"></i>
                PAYMENT
            </div>
        </header>

        <div class="modal-container-body">
            <label for="name-character" class="modal-container-label">
                <i class="ti-search"></i>
                Tên phim
            </label>
            <input id="name-character" type="text" class="modal-container-input" placeholder="">
            <p></p>
            <label for="" class="modal-container-label">
                <i class="ti-credit-card"></i>
                Phuong thuc thanh toan
            </label>

            <div class="list-payment">
                <div class="payment-item">
                    <img src="./assets/img/payment-icon/icon-52bd5808cecdb1970e1aeec3c31a3ee1.png" alt="Momo"
                         class="payment-item-icon">
                </div>

                <div class="payment-item">
                    <img src="./assets/img/payment-icon/Logo-ACB-Ori.webp" alt="Acb" class="payment-item-icon"
                         style="padding: 9%;">
                </div>
                <div class="clear-float"></div>
            </div>

            <div class="shop-modal-btn">
                <button id="shop-modal-btn">Thanh Toán</button>
            </div>

            <div class="shop-modal-suport">
                <a href="#">Hỗ Trợ</a>
            </div>
        </div>
    </div>
</div>
<!-- js modal of pay -->
<script>
    const buyBtns = document.querySelectorAll('.js-shop-buy-btn')
    const modal = document.querySelector('.js-modal-shop-buy-item')
    const modalContainer = document.querySelector('.modal-container')
    const modalClose = document.querySelector('.js-modal-container-close')

    function showModalShop() {
        modal.classList.add('open') //thêm class open vào modal
    }

    function hideModalShop() {
        modal.classList.remove('open')
    }

    function stopPropagation(event) {
        event.stopPropagation()
    }

    for (const buyBtn of buyBtns) {
        buyBtn.addEventListener('click', showModalShop)
    }

    modalClose.addEventListener('click', hideModalShop)

    modal.addEventListener('click', hideModalShop)

    modalContainer.addEventListener('click', stopPropagation)   //ngăn modalContainer(bảng chứa nội dung PAY không ảnh hưởng nổi bọt từ modal dòng ở trên)
</script>

<!-- js menu btn -->
<script>
    const header = document.querySelector('.header')
    const mobileMenu = document.querySelector('.menu-btn')
    const headerHeight = header.clientHeight

    // Đóng mở Menu
    function showMenu() {
        var isClosed = header.clientHeight === headerHeight
        if (isClosed) {
            header.style.height = 'auto'; //mở menu
        } else {
            header.style.height = null; //đóng menu
        }
    }
    mobileMenu.addEventListener('click', showMenu)

    //Đóng mở Menu khi nhấp vào Menu-Child
    var menuItems = document.querySelectorAll('.nav li a[href*="#"]'); //chọn tất cả thẻ a có href=#
    for (let i = 0; i < menuItems.length; i++) {
        var menuItem = menuItems[i];

        menuItem.onclick = function (event) { //đối số event
            var isParentMenu = this.nextElementSibling && this.nextElementSibling.classList.contains('subnav')
            if (isParentMenu) {
                event.preventDefault(); //ngăn hành vi mặc định của thẻ href
            } else {
                header.style.height = null
            }
        }
    }


    // From F8

    // var header = document.getElementById('header') header doi thanh ID
    // var mobileMenu = document.getElementById('id-menu-btn') tao them ID cho menu-btn
    // var headerHeight = header.clientHeight

    // mobileMenu.onlick = function(){
    //     var isClosed = header.clientHeight === headerHeight
    //     if(isClosed){
    //         header.style.height = 'auto';
    //     }
    //     else{
    //         header.style.height = null;
    //     }
    // }
</script>

<!-- js-change-text-TrangChủ -->
<script>
    const textTrangChu = document.querySelector('.nav>li>a:first-child');

    function changeTextTrangChu() {
        if (window.innerWidth <= 1023) {
            textTrangChu.innerText = "GTA5LF"
        } else {
            textTrangChu.innerText = "Trang Chủ"
        }
    }

    changeTextTrangChu();

    window.addEventListener("resize?", changeTextTrangChu);
</script>

<script>
    const navLinks = document.querySelectorAll('.subnav>li>a');

    navLinks.forEach(link => {
        link.addEventListener('click', (event) => {
            event.preventDefault();
            const targetId = link.getAttribute('href');
            if (targetId == "#shop") {
                const targetElement = document.querySelector(targetId);
                const elementRect = targetElement.getBoundingClientRect();
                const targetTop = elementRect.top + window.pageYOffset;
                window.scrollTo({
                    top: targetTop,
                    behavior: 'smooth'
                });
            } else {
                const targetElement = document.querySelector(targetId);
                const elementRect = targetElement.getBoundingClientRect();
                const offset = -elementRect.height / 2;
                const targetTop = elementRect.top + window.pageYOffset + offset;
                window.scrollTo({
                    top: targetTop,
                    behavior: 'smooth'
                });
            }
        });
    });
</script>

<script>
    const container = document.getElementById('container');
    const registerBtn = document.getElementById('register');
    const loginBtn = document.getElementById('login');

    registerBtn.addEventListener('click', () => {
        container.classList.add("active");
    });

    loginBtn.addEventListener('click', () => {
        container.classList.remove("active");
    });
</script>
<script>
    function toggleSearchBox() {
        var searchBox = document.getElementById('searchBox');
        searchBox.classList.toggle('active');
    }
</script>







</body>

</html>