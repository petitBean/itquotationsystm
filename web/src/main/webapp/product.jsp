<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>ORZ在线</title>

    <%--详细大表格--%>
    <link href="${pageContext.request.contextPath}/css/pro_seriesParam_v4.css?v=43515" rel="stylesheet">

    <%--变蓝不展示方框--%>
    <%--<link href="http://s.zol-img.com.cn/d/Pro/Pro_seriesDetail_v4.css?v=43515" rel="stylesheet"/>--%>
    <%--<link href="${pageContext.request.contextPath}/css/pro_detail_v4.css?v=43515" rel="stylesheet"/>--%>
    <%--展示方框不完善--%>
    <%--<link href="${pageContext.request.contextPath}/css/pro_seriesDetail_v4.css?v=43515" rel="stylesheet"/>--%>

    <%--自己建立 完善展示--%>
    <link href="${pageContext.request.contextPath}/css/productDetail.css" rel="stylesheet" >

    <!-- Google font -->
    <%--<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">--%>
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
                    if(session.getAttribute("username") != null){
                %>
                <%--================================================用户名称显示   个人主页跳转====================================--%>

                <li><a href="#"><i class="fa fa-user-o"></i>${username}</a></li>
                <li><a href="#"><i></i>注销</a></li>
                <%
                }else{
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
                        <%--===============================================搜索表单========================================================--%>
                        <form action="${pageContext.request.contextPath}/store.jsp" method="post">
                            <%--                            <select class="input-select">
                                                            <option value="0">所有目录</option>
                                                            <option value="1">目录1</option>
                                                            <option value="1">目录2</option>
                                                        </select>--%>
                            <input class="input" placeholder="搜索">
                            <button class="search-btn">搜索</button>
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
                            <%--===============================购物车小框=======================================================--%>
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
<%--==================================================================--%>
<!-- NAVIGATION -->
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <!-- responsive-nav -->
        <div id="responsive-nav">
            <!-- NAV -->
            <ul class="main-nav nav navbar-nav">
                <li class="active"><a href="${pageContext.request.contextPath}/mainPagelist.do">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=联想">联想</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=惠普">惠普</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=戴尔">戴尔</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=苹果">苹果</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=微软">微软</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=Alienware">Alienware</a></li>
                <li><a href="${pageContext.request.contextPath}/findListByTmCode.do?tmCode=机械师">机械师</a></li>
            </ul>
            <!-- /NAV -->
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
<!-- /NAVIGATION -->
<%--=====================================================================--%>




<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- Product main img -->
            <div class="col-md-5 col-md-push-2">
                <div id="product-main-img">

                    <%--加载图片 这几张是大得图得列表--%>
                   <%-- <c:forEach var="item" items="${product.pPicture}">--%>
                        <div class="product-preview">
                            <img src="${pageContext.request.contextPath}${product.pPicture}" alt="">
                        </div>

                  <%--  </c:forEach>--%>

                    <div class="product-preview">
                        <img src="${pageContext.request.contextPath}${product.pPicture}./img/product01.png" alt="">
                    </div>

                   <%-- <div class="product-preview">
                        <img src="./img/product03.png" alt="">
                    </div>

                    <div class="product-preview">
                        <img src="./img/product06.png" alt="">
                    </div>

                    <div class="product-preview">
                        <img src="./img/product08.png" alt="">
                    </div>--%>
                </div>
            </div>
            <!-- /Product main img -->

            <%--加载图片 这四张是小图的图集合--%>
            <!-- Product thumb imgs -->
            <div class="col-md-2  col-md-pull-5">
                <div id="product-imgs">

                   <%-- <c:forEach var="item" items="${product}">--%>
                        <div class="product-preview">
                            <img src="${pageContext.request.contextPath}${product.pPicture}" alt="">
                        </div>
                    <%--</c:forEach>--%>

                    <div class="product-preview">
                        <img src="${pageContext.request.contextPath}${product.pPicture}" alt="">
                    </div>

                   <%-- <div class="product-preview">
                        <img src="./img/product03.png" alt="">
                    </div>

                    <div class="product-preview">
                        <img src="./img/product06.png" alt="">
                    </div>

                    <div class="product-preview">
                        <img src="./img/product08.png" alt="">
                    </div>--%>
                </div>
            </div>
            <!-- /Product thumb imgs -->

            <!-- Product details -->
            <div class="col-md-5">
                <div class="product-details">
                    <h2 class="product-name">名称：  ${product.pName}</h2>
                    <div>
                        <div class="product-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <a class="review-link" href="#">10 次浏览 | 添加到收藏</a>
                    </div>
                    <div>
                        <h3 class="product-price">¥${product.pPrice}<del class="product-old-price">¥${product.pPrice}+99</del></h3>
                        <span class="product-available">现货</span>
                    </div>
                    <p>${product.pDescription}</p>

                    <%--商品类型的选择 暂时注释--%>
<%--                    <div class="product-options">
                        <label>
                            Size
                            <select class="input-select">
                                <option value="0">X</option>
                            </select>
                        </label>
                        <label>
                            Color
                            <select class="input-select">
                                <option value="0">Red</option>
                            </select>
                        </label>
                    </div>--%>

                    <%--加入购物车--%>
                    <div class="add-to-cart">
                        <div class="qty-label">
                            Qty
                            <div class="input-number">
                                <input type="number">
                                <span class="qty-up">+</span>
                                <span class="qty-down">-</span>
                            </div>
                        </div>
                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> 添加到购物车</button>
                    </div>

                    <ul class="product-btns">
                        <li><a href="#"><i class="fa fa-heart-o"></i> 添加到心愿单</a></li>
                        <li><a href="#"><i class="fa fa-exchange"></i> 比较</a></li>
                    </ul>

                    <ul class="product-links">
                        <li>类别:</li>
                        <li><a href="#">笔记本</a></li>
                        <li><a href="#">商务本</a></li>
                    </ul>

                    <ul class="product-links">
                        <li>分享:</li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-envelope"></i></a></li>
                    </ul>

                </div>
            </div>
            <!-- /Product details -->




        <%--=================================================--%>




            <!-- Product tab -->
            <div class="col-md-12">
                <div id="product-tab">
                    <!-- product tab nav -->
                    <ul class="tab-nav">
                        <li class="active"><a data-toggle="tab" href="#tab1">Description</a></li>
                        <li><a data-toggle="tab" href="#tab2">Details</a></li>
                        <li><a data-toggle="tab" href="#tab3">Reviews</a></li>
                    </ul>
                    <!-- /product tab nav -->


                    <!-- product tab content -->
                    <div class="tab-content">
                        <!-- tab1  -->
                        <div id="tab1" class="tab-pane fade in active">
                            <div class="row">
                                <div class="col-md-12">

                                    <%--灰框--%>
                                    <div class="series-parameter clearfixP">
                                        <div class="_j_param_item param-item">

                                            <ul class="param-list">
                                                <li>
                                                    <div class="_j_param_inner">
                                                        <strong>屏幕尺寸：</strong>
                                                        <span>${product1.pScreenSize}英寸<em></em></span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="_j_param_inner">
                                                        <strong>摄像头：</strong>
                                                        <span>${product1.pCamera}</span>
                                                    </div>
                                                </li>
                                            </ul>

                                        </div>

                                        <div class="_j_param_item param-item param-item-2n">
                                            <ul class="param-list">
                                                <li>
                                                    <div class="_j_param_inner">
                                                        <strong>CPU型号：</strong>
                                                        <span>${cpu.CPUFactory} ${cpu.CPUSeries}<${cpu.CPUi}/span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="_j_param_inner">
                                                        <strong>CPU主频：</strong>
                                                        <span>${product3.pCPUhz}Hz</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="_j_param_item param-item">
                                            <ul class="param-list">
                                                <li>
                                                    <div class="_j_param_inner">
                                                        <strong>内存容量：</strong>
                                                        <span>8GB（8GB×1）DDR42666MHz</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="_j_param_inner">
                                                        <strong>产品定位：</strong>
                                                        <span>${product.pPosition}</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="_j_param_item param-item param-item-2n">
                                            <ul class="param-list">
                                                <li>
                                                    <div class="_j_param_inner">
                                                        <strong>显卡芯片：</strong>
                                                        <span>NVIDIAGeForceRTX2060</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="_j_param_inner">
                                                        <strong>操作系统：</strong>
                                                        <span>${product1.pOS}</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <%--灰框--%>
     <!----------------------------------------------------------------------------------------------------->
                                </div>
                            </div>
                        </div>
                        <!-- /tab1  -->

                        <!-- tab2  -->
                        <div id="tab2" class="tab-pane fade in">
                            <div class="row">
                                <div class="col-md-12">

                                    <jsp:include page="test2.jsp" flush="false"></jsp:include>

                                </div>
                            </div>
                        </div>
                        <!-- /tab2  -->












                        <!-- tab3  -->
                        <div id="tab3" class="tab-pane fade in">
                            <div class="row">
                                <!-- Rating -->
                                <div class="col-md-3">
                                    <div id="rating">
                                        <div class="rating-avg">
                                            <span>4.5</span>
                                            <div class="rating-stars">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-o"></i>
                                            </div>
                                        </div>
                                        <ul class="rating">
                                            <li>
                                                <div class="rating-stars">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="rating-progress">
                                                    <div style="width: 80%;"></div>
                                                </div>
                                                <span class="sum">3</span>
                                            </li>
                                            <li>
                                                <div class="rating-stars">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <div class="rating-progress">
                                                    <div style="width: 60%;"></div>
                                                </div>
                                                <span class="sum">2</span>
                                            </li>
                                            <li>
                                                <div class="rating-stars">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <div class="rating-progress">
                                                    <div></div>
                                                </div>
                                                <span class="sum">0</span>
                                            </li>
                                            <li>
                                                <div class="rating-stars">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <div class="rating-progress">
                                                    <div></div>
                                                </div>
                                                <span class="sum">0</span>
                                            </li>
                                            <li>
                                                <div class="rating-stars">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <div class="rating-progress">
                                                    <div></div>
                                                </div>
                                                <span class="sum">0</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- /Rating -->

                                <!-- Reviews -->
                                <div class="col-md-6">
                                    <div id="reviews">
                                        <ul class="reviews">

                                            <c:forEach var="item" items="${pageInfo.list}">
                                                <li>
                                                    <div class="review-heading">
                                                        <h5 class="name">用户ID：${item.userId}</h5>
                                                        <p class="date">时间：${item.eTime}</p>
                                                        <div class="review-rating">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o empty"></i>
                                                        </div>
                                                    </div>
                                                    <div class="review-body">
                                                        <p>评价:${item.eContent}</p>
                                                    </div>
                                                </li>
                                            </c:forEach>

                                            <%-- <li>
                                                 <div class="review-heading">
                                                     <h5 class="name">John</h5>
                                                     <p class="date">27 DEC 2018, 8:0 PM</p>
                                                     <div class="review-rating">
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star-o empty"></i>
                                                     </div>
                                                 </div>
                                                 <div class="review-body">
                                                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                                                 </div>
                                             </li>
                                             <li>
                                                 <div class="review-heading">
                                                     <h5 class="name">John</h5>
                                                     <p class="date">27 DEC 2018, 8:0 PM</p>
                                                     <div class="review-rating">
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star"></i>
                                                         <i class="fa fa-star-o empty"></i>
                                                     </div>
                                                 </div>
                                                 <div class="review-body">
                                                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                                                 </div>
                                             </li>--%>

                                        </ul>
                                        <ul class="reviews-pagination">
                                    <%--        <li class="active">1</li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>--%>
                                           <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
                                            <li><a href="${pageContext.request.contextPath}/OneProductInfo.do?pCode=${product.pCode}&pageNum=${pageNum}&pageSize=2">${pageNum}</a>
                                            </c:forEach>

                                        </ul>
                                    </div>
                                </div>
                                <!-- /Reviews -->


                                <!-- Review Form -->
                                <div class="col-md-3">
                                    <div id="review-form">
                                        <%--表单--%>
                                        <form class="review-form" action="${pageContext.request.contextPath}/addOneEvation.do" method="post">

                                            <%--                                            <input class="input" type="text" placeholder="Your Name">
                                                                                        <input class="input" type="email" placeholder="Your Email">--%>

                                            <textarea class="input" name="eContent" placeholder="Your Review"></textarea>
                                                <input type="text" name="pCode" value="${product.pCode}" style="display: none">
                                            <div class="input-rating">
                                                <span>评语: </span>
                                                <div class="stars">
                                                    <input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
                                                    <input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
                                                    <input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
                                                    <input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
                                                    <input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
                                                </div>
                                            </div>
                                            <button class="primary-btn">提交</button>
                                        </form>

                                    </div>
                                </div>
                                <!-- /Review Form -->
                            </div>
                        </div>
                        <!-- /tab3  -->


















                    </div>
                    <!-- /product tab content  -->
                </div>
            </div>
            <!-- /product tab -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->





<%--=========================================================--%>
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
                        <!-- NAV -->
                        <ul class="main-nav nav navbar-nav">
                            <li class="active"><a href="${pageContext.request.contextPath}/mainPagelist.do">主页</a></li>
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
                            <li><a href="${pageContext.request.contextPath}/addProduct.jsp">帮助</a></li>
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