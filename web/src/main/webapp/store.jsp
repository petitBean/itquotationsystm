<%--
  Created by IntelliJ IDEA.
  User: 王依泉
  Date: 2019/7/5
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>列表界面</title>

    <!-- Google font -->
    <link href="${pageContext.request.contextPath}/css/gooleapis.css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/slick-theme.css"/>

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/nouislider.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>-->
    <script src="${pageContext.request.contextPath}/js/html5shiv.min.js"></script>
    <%--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>
    <script src="${pageContext.request.contextPath}/js/respond.min.js"></script>

    <![endif]-->

</head>
<body>
<!-- HEADER -->
<header>
    <!-- TOP HEADER -->
    <div id="top-header">
        <div class="container">
            <ul class="header-links pull-left">
                <li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
                <li><a href="#"><i class="fa fa-envelope-o"></i> orzonline@email.com</a></li>
                <li><a href="#"><i class="fa fa-map-marker"></i>浙江宁波</a></li>
            </ul>
            <ul class="header-links pull-right">
                <%
                    if (session.getAttribute("username") != null) {
                %>
                <%--================================================用户名称显示   个人主页跳转====================================--%>

                <li><a href="#"><i class="fa fa-user-o"></i>${username}</a></li>
                <li><a href="#"><i></i>注销</a></li>
                <%
                } else {
                %>
                <li><a href="#"><i></i>登陆</a></li>
                <li><a href="#"><i></i>注销</a></li>
                <%
                    }
                %>


            </ul>
        </div>
    </div>
    <!-- /TOP HEADER -->

    <!-- MAIN HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="index1.html" class="logo">
                            <img src="${pageContext.request.contextPath}/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR -->
                <div class="col-md-6">
                    <div class="header-search">
                        <form action="${pageContext.request.contextPath}/searcheProductListByKeyWord.do">
                            <%--                            <select class="input-select">
                                                            <option value="0">All Categories</option>
                                                            <option value="1">Category 01</option>
                                                            <option value="1">Category 02</option>
                                                        </select>--%>
                            <input class="input" type="text" name="keyword" placeholder="搜索">
                            <input type="submit" class="search-btn">搜索</input>
                        </form>
                    </div>
                </div>
                <!-- /SEARCH BAR -->

                <!-- ACCOUNT -->
                <div class="col-md-3 clearfix">
                    <div class="header-ctn">
                        <!-- Wishlist -->
                        <div>
                            <a href="#">
                                <i class="fa fa-heart-o"></i>
                                <span>愿望清单</span>
                                <div class="qty">2</div>
                            </a>
                        </div>
                        <!-- /Wishlist -->

                        <!-- Cart -->
                        <div class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                <i class="fa fa-shopping-cart"></i>
                                <span>购物车</span>
                                <div class="qty">3</div>
                            </a>
<%--==============================购物车小框============================--%>
                            <div class="cart-dropdown">
                                <div class="cart-list">
                                    <div class="product-widget">

                                        <div class="product-img">
                                            <img src="${pageContext.request.contextPath}/img/product01.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-name"><a href="#">产品名称</a></h3>
                                            <h4 class="product-price"><span class="qty">1XXXX</span>价格</h4>
                                        </div>
                                        <button class="delete"><i class="fa fa-close"></i></button>

                                    </div>

                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="${pageContext.request.contextPath}/img/product02.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
                                        </div>
                                        <button class="delete"><i class="fa fa-close"></i></button>
                                    </div>
                                </div>

                                <div class="cart-summary">
                                    <small>已选择三项</small>
                                    <h5>总价格: $2940.00</h5>
                                </div>
                                <div class="cart-btns">
                                    <a href="#">查看购物车</a>
                                    <a href="#">结账<i class="fa fa-arrow-circle-right"></i></a>
                                </div>

                            </div>
                            <%--====================================================================================================================--%>
                        </div>
                        <!-- /Cart -->

                        <!-- Menu Toogle -->
                        <div class="menu-toggle">
                            <a href="#">
                                <i class="fa fa-bars"></i>
                                <span>目录</span>
                            </a>
                        </div>
                        <!-- /Menu Toogle -->
                    </div>
                </div>
                <!-- /ACCOUNT -->
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>
    <!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->

<!-- NAVIGATION -->
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <!-- responsive-nav -->
        <div id="responsive-nav">
            <!-- NAV -->
            <ul class="main-nav nav navbar-nav">
                <li class="active"><a href="/index.jsp">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=联想">联想</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=惠普">惠普</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=戴尔">戴尔</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=苹果">苹果</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=微软">微软</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=Alienware">Alienware</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=机械师">机械师</a></li>
            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
<!-- /NAVIGATION -->

<%--<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb-tree">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">All Categories</a></li>
                    <li><a href="#">Accessories</a></li>
                    <li class="active">Headphones (227,490 Results)</li>
                </ul>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /BREADCRUMB -->--%>

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- ASIDE -->
            <div id="aside" class="col-md-3">
                <!-- aside Widget -->
                <div class="aside">
                    <h3 class="aside-title">产品定位</h3>
                    <div class="checkbox-filter">

                        <div class="input-checkbox">
                            <input type="checkbox" id="position-1">
                            <label for="position-1">
                                <span></span>
                                游戏本
                                <small></small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" id="position-2">
                            <label for="position-2">
                                <span></span>
                                二合一笔记本
                                <small></small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" id="position-3">
                            <label for="position-3">
                                <span></span>
                                轻薄笔记本
                                <small></small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" id="position-4">
                            <label for="position-4">
                                <span></span>
                                商务办公本
                                <small></small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" id="position-5">
                            <label for="position-5">
                                <span></span>
                                影音娱乐本
                                <small></small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" id="position-6">
                            <label for="position-6">
                                <span></span>
                                校园学生本
                                <small></small>
                            </label>
                        </div>
                    </div>
                </div>
                <!-- /aside Widget -->

                <!-- aside Widget -->
                <div class="aside">
                    <h3 class="aside-title">Price</h3>
                    <div class="price-filter">
                        <div id="price-slider"></div>
                        <div class="input-number price-min">
                            <%--低价--%>
                            <input id="price-min" type="number">
                            <span class="qty-up">+</span>
                            <span class="qty-down">-</span>
                        </div>
                        <span>-</span>
                        <div class="input-number price-max">
                            <%--高价--%>
                            <input id="price-max" type="number">
                            <span class="qty-up">+</span>
                            <span class="qty-down">-</span>
                        </div>
                    </div>
                </div>
                <!-- /aside Widget -->
                <!-- aside Widget -->
                <div class="aside">
                    <h3 class="aside-title">CPU</h3>
                    <div class="checkbox-filter">
                        <div class="input-checkbox">
                            <input type="checkbox" id="cpu-1">
                            <label for="cpu-1">
                                <span></span>
                                酷睿i9
                                <small></small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="cpu-2">
                            <label for="cpu-2">
                                <span></span>
                                酷睿i7
                                <small></small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="cpu-3">
                            <label for="cpu-3">
                                <span></span>
                                酷睿i5
                                <small></small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="cpu-4">
                            <label for="cpu-4">
                                <span></span>
                                酷睿i3
                                <small></small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="cpu-5">
                            <label for="cpu-5">
                                <span></span>
                                酷睿M
                                <small></small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="cpu-6">
                            <label for="cpu-6">
                                <span></span>
                                AMD Ryzen
                                <small></small>
                            </label>
                        </div>
                    </div>
                </div>
                <!-- /aside Widget -->


                <!-- aside Widget -->
                <div class="aside">
                    <h3 class="aside-title">显卡</h3>
                    <div class="checkbox-filter">
                        <div class="input-checkbox">
                            <input type="checkbox" id="gpu-1">
                            <label for="gpu-1">
                                <span></span>
                                发烧级显卡
                                <small></small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="gpu-2">
                            <label for="gpu-2">
                                <span></span>
                                性能级显卡
                                <small></small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="gpu-3">
                            <label for="gpu-3">
                                <span></span>
                                入门级显卡
                                <small></small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="gpu-4">
                            <label for="gpu-4">
                                <span></span>
                                专业级图形显卡
                                <small></small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="gpu-5">
                            <label for="gpu-5">
                                <span></span>
                                双显卡
                                <small></small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="gpu-6">
                            <label for="gpu-6">
                                <span></span>
                                核心显卡
                                <small></small>
                            </label>
                        </div>
                    </div>
                </div>
                <!-- /aside Widget -->


                <!-- aside Widget -->
                <%--<div class="aside">
                    <h3 class="aside-title">Top selling</h3>
                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product01.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00
                                <del class="product-old-price">$990.00</del>
                            </h4>
                        </div>
                    </div>

                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product02.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00
                                <del class="product-old-price">$990.00</del>
                            </h4>
                        </div>
                    </div>

                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product03.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00
                                <del class="product-old-price">$990.00</del>
                            </h4>
                        </div>
                    </div>
                </div>--%>
                <!-- /aside Widget -->



            </div>
            <!-- /ASIDE -->



<%--========================================中间===================================================--%>

            <!-- STORE -->
            <div id="store" class="col-md-9">
                <!-- store top filter -->
                <div class="store-filter clearfix">
                    <div class="store-sort">
                        <label>
                            排序方式:
                            <select class="input-select">
                                <option value="0">热门</option>
                                <option value="1">时间</option>
                                <option value="2">价格</option>
                                <option value="3">点评数</option>
                            </select>
                        </label>

<%--                        <label>
                            显示个数:
                            <select class="input-select">
                                <option value="0">20</option>
                                <option value="1">50</option>
                            </select>
                        </label>--%>


                    </div>

                    <%--列表方式--%>
<%--                    <ul class="store-grid">
                        <li class="active"><i class="fa fa-th"></i></li>
                        <li><a href="#"><i class="fa fa-th-list"></i></a></li>
                    </ul>--%>
                    <%--列表方式--%>
                </div>
                <!-- /store top filter -->

                <!-- store products -->
                <div class="row">

                    <c:forEach var="item" items="${pageInfo.list}">

                    <!-- product -->
                    <div class="col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img">
                                <%--图片--%>
                                <img src="${pageContext.request.contextPath}${item.pPicture}" alt="加载中！！">
                                <div class="product-label">
                                    <span class="sale">-30%</span>
                                    <span class="new">NEW</span>
                                </div>
                            </div>
                            <div class="product-body">
                                <%--定位，名称，价格--%>
                                <p class="product-category">${item.pPosition}</p>
                                <h3 class="product-name"><a href="#">${item.pName}</a></h3>
                                <h4 class="product-price">${item.pPrice}
                                    <del class="product-old-price">${item.pPrice+200}</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-btns">
                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">加入收藏</span>
                                    </button>
                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">对比</span>
                                    </button>
                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">立即查看</span>
                                    </button>
                                </div>
                            </div>
                            <div class="add-to-cart">
                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> 加入购物车</button>
                            </div>
                        </div>
                    </div>
                    <!-- /product -->


                    </c:forEach>




                </div>
                <!-- /store products -->

                <!-- store bottom filter -->
                <div class="store-filter clearfix">
                    <%--附加信息展示--%>
                    <span class="store-qty"></span>
                        <%--页码--%>
                    <ul class="store-pagination">

                        <li class="active">选中页码样式例子</li>

                        <li href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=${tmCode}&pageNum=1&size=2">首页</li>
                        <%--上一页--%>
                        <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=${tmCode}&pageNum=${pageInfo.pageNum-1}&size=2"><i class="fa fa-angle-left"></i></a></li>

                        <%--动态加入页码--%>
                        <c:forEach begin="1" end="${pageInfo.pages}" var="pageNumber">
                            <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=${tmCode}&pageNum=${pageNumber}&size=2">${pageNumber}</a></li>
                        </c:forEach>
<%--                        <li class="active">1</li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>--%>

                        <%--下一页--%>
                        <li><a href="${pageContext.request.contextPath}/***********?page=${pageInfo.pageNum+1}&size=？？？？"><i class="fa fa-angle-right"></i></a></li>
                        <%--尾页--%>
                        <li><a href="${pageContext.request.contextPath}/********?page=${pageInfo.pages}&size=？？？">尾页</a></li>

                    </ul>
                </div>
                <!-- /store bottom filter -->
            </div>
            <!-- /STORE -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<!-- FOOTER -->

<!-- FOOTER -->
<footer id="footer">
    <!-- top footer -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">关于我们</h3>
                        <p>洛雷姆·伊普索姆·多尔·西特·阿梅特，一位优秀的运动员，一位出色的节奏大师。</p>
                        <ul class="footer-links">
                            <li><a href="#"><i class="fa fa-map-marker"></i>浙江宁波</a></li>
                            <li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">目录</h3>
                        <ul class="footer-links">
                            <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=联想">联想</a></li>
                            <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=惠普">惠普</a></li>
                            <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=戴尔">戴尔</a></li>
                            <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=苹果">苹果</a></li>
                            <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=微软">微软</a></li>
                            <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=Alienware">Alienware</a></li>
                            <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=机械师">机械师</a></li>
                        </ul>
                    </div>
                </div>

                <div class="clearfix visible-xs"></div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">信息</h3>
                        <ul class="footer-links">
                            <li><a href="#">关于我们</a></li>
                            <li><a href="#">联系我们</a></li>
                            <li><a href="#">隐私政策</a></li>
                            <li><a href="#">订单和退货</a></li>
                            <li><a href="#">条款和条件</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">服务</h3>
                        <ul class="footer-links">
                            <li><a href="#">我的账户</a></li>
                            <li><a href="#">查看购物车</a></li>
                            <li><a href="#">收藏</a></li>
                            <li><a href="#">我的订单</a></li>
                            <li><a href="#">帮助</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /top footer -->

    <!-- bottom footer -->
    <div id="bottom-footer" class="section">
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-12 text-center">
                    <ul class="footer-payments">
                        <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                        <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                    </ul>
                    <span class="copyright">Copyright &copy; 2019.Orz All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></span>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /bottom footer -->
</footer>
<!-- /FOOTER -->

<!-- jQuery Plugins -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/js/nouislider.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.zoom.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>


</body>
</html>
