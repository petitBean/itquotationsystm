<%--
  Created by IntelliJ IDEA.
  User: 王依泉
  Date: 2019/7/4
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<%--<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<!DOCTYPE HTML>
<html lang="en">
<head>

    <title>管理员</title>

    <!-- Google font -->
    <%--<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">--%>
    <link href="${pageContext.request.contextPath}/css/gooleapis.css" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/slick.css"/>


    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/slick-theme.css"/>

    <%--========================================--%>
    <link href="${pageContext.request.contextPath}/css/product_advsearch.css?v=17242" rel="stylesheet"/>
    <%--===========================================--%>

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

    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="jqueryui/style.css">


    <script>
        $(function () {
            $("#datepicker").datepicker({
                showOtherMonths: true,
                selectOtherMonths: true
            });
        });
    </script>


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
                <li><a href="${pageContext.request.contextPath}/logout.do"><i></i>注销</a></li>
                <%
                } else {
                %>
                <li><a href="${pageContext.request.contextPath}/toLogin.do"><i></i>登陆</a></li>
                <li><a href="${pageContext.request.contextPath}/logout.do"><i></i>注销</a></li>
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


<div class="wrapper">


    <div class="s_condition clearfix" id="s_filter">
        <div class="title_ser"><strong>产品列表</strong><span></span></div>

        <c:forEach var="item" items="${allProductList}">

            <dl>
                <dd>
                        <%--产品名称1(CPU|GPU|RAM|ROM)--%><p style="font-size: 20px">${item.pCode}(${item.pName}|${item.pRam}|${item.pDisk}|${item.pDisk})</p>
                </dd>
                <dt>
                    <a href="${pageContext.request.contextPath}/toupdate.do?pCode2=${item.pCode2}"><button>修改</button></a>  <a href="${pageContext.request.contextPath}/deleteOneProduct.do?pCode=${item.pCode}"><button>删除</button></a>
                </dt>
            </dl>

        </c:forEach>

        <dl>
            <dd>
                <a href="${pageContext.request.contextPath}/addProduct.jsp"><button>添加产品</button></a>
            </dd>
            <dt>
            </dt>
        </dl>



    </div>

</div>


<%--============================================================--%>
<br>
<br>

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
                    <span class="copyright">Copyright &copy; 2019.Orz All rights reserved.<a target="_blank"
                                                                                             href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></span>
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
