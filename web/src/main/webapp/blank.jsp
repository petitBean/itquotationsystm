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

    <title>添加</title>

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
        <div class="title_ser"><strong>笔记本电脑高级搜索</strong><span></span></div>


        <dl id="manuSer">
            <dt>笔记本电脑品牌</dt>
            <dd>
                <label for="manu_160" title="联想"><input type="radio" id="manu_160" name="trademark" name="trademark"
                                                        value="联想">联想</label>
                <label for="manu_223" title="惠普"><input type="radio" id="manu_223" name="trademark"
                                                         value="惠普">惠普</label>
                <label for="manu_21" title="戴尔"><input type="radio" id="manu_21" name="trademark" value="戴尔">戴尔</label>
                <label for="manu_613" title="华为"><input type="radio" id="manu_613" name="trademark"
                                                         value="华为">华为</label>
                <label for="manu_227" title="华硕"><input type="radio" id="manu_227" name="trademark"
                                                         value="华硕">华硕</label>
                <label for="manu_218" title="Acer宏碁"><input type="radio" id="manu_218" name="trademark" value="Acer宏基">Acer宏碁</label>
                <label for="manu_364" title="微软"><input type="radio" id="manu_364" name="trademark"
                                                         value="微软">微软</label>
                <label for="manu_544" title="苹果"><input type="radio" id="manu_544" name="trademark"
                                                         value="苹果">苹果</label>
                <label for="manu_32108" title="ThinkPad"><input type="radio" id="manu_32108"
                                                                 value="ThinkPad">ThinkPad</label>
                <label for="manu_33520" title="Alienware"><input type="radio" id="manu_33520" name="trademark" value="Alienware">Alienware</label>
                <label for="manu_1191" title="神舟"><input type="radio" id="manu_1191" name="trademark" value="神州">神舟</label>
                <label for="manu_35578" title="机械革命"><input type="radio" id="manu_35578" name="trademark" value="机械革命">机械革命</label>
                <label for="manu_98" title="三星"><input type="radio" id="manu_98" name="trademark" value="三星">三星</label>
                <label for="manu_35393" title="雷神"><input type="radio" id="manu_35393" name="trademark" value="雷神">雷神</label>
                <label for="manu_36359" title="机械师"><input type="radio" id="manu_36359" name="trademark" value="机械师">机械师</label>
                <label for="manu_133" title="MSI微星"><input type="radio" id="manu_133" name="trademark" value="MSI微星">MSI微星</label>
                <label for="manu_41373" title="ROG"><input type="radio" id="manu_41373" name="trademark" value="ROG">ROG</label>
                <label for="manu_50840" title="荣耀"><input type="radio" id="manu_50840" name="trademark" value="荣耀">荣耀</label>
                <label for="manu_34645" title="小米"><input type="radio"
                                                          id="manu_34645"
                                                          value="小米">小米</label>
                <label for="manu_36793" title="中柏"><input type="radio" id="manu_36793"
                                                           value="中柏">中柏</label>
                <label for="manu_1590" title="雷蛇"><input type="radio" id="manu_1590" name="trademark" value="雷蛇">雷蛇</label>
                <%--=====================================================================--%>

                <label for="manu_24" title="清华同方"><input type="radio" id="manu_24" name="trademark" value="m24">清华同方</label>
                <label for="manu_36391" title="炫龙"><input type="radio" id="manu_36391" name="trademark" value="m36391">炫龙</label>
                <label for="manu_143" title="LG"><input type="radio" id="manu_143" name="trademark" value="m143">LG</label>
                <label for="manu_55731" title="红米"><input type="radio" id="manu_55731" name="trademark" value="m55731">红米</label>
                <label for="manu_54255" title="a豆"><input type="radio" id="manu_54255" name="trademark" value="m54255">a豆</label>
                <label for="manu_53851" title="吾空"><input type="radio" id="manu_53851" name="trademark" value="m53851">吾空</label>
                <label for="manu_221" title="海尔"><input type="radio" id="manu_221" name="trademark" value="m221">海尔</label>
                <label for="manu_36607" title="火影"><input type="radio" id="manu_36607" name="trademark" value="m36607">火影</label>
                <label for="manu_37353" title="麦本本"><input type="radio" id="manu_37353" name="trademark" value="m37353">麦本本</label>
                <label for="manu_50829" title="VAIO"><input type="radio" id="manu_50829" name="trademark" value="m50829">VAIO</label>
                <label for="manu_34305" title="Terrans Force"><input type="radio" id="manu_34305" name="trademark" value="m34305">Terrans Force</label>
                <label for="manu_234"
                        title="技嘉"><input type="radio" id="manu_234" name="trademark" value="m234">技嘉</label>
                <label for="manu_209" title="东芝"><input type="radio" id="manu_209" name="trademark" value="m209">东芝</label>
                <label for="manu_54562" title="壹号本"><input type="radio" id="manu_54562" name="trademark" value="m54562">壹号本</label>
                <label for="manu_283" title="富士通"><input type="radio" id="manu_283" name="trademark" value="m283">富士通</label>
                <label for="manu_1922" title="谷歌"><input type="radio" id="manu_1922" name="trademark" value="m1922">谷歌</label>
                <label for="manu_34329" title="锡恩帝"><input type="radio"
                        id="manu_34329"
                        value="m34329">锡恩帝</label>
                <label for="manu_265" title="昂达"><input type="radio" id="manu_265" name="trademark"
                                                         value="m265">昂达</label>
                <label for="manu_84" title="松下"><input type="radio" id="manu_84" name="trademark"
                                                        value="m84">松下</label>
                <label for="manu_47841" title="宝扬"><input type="radio" id="manu_47841"
                                                           value="m47841">宝扬</label>
                <label for="manu_35232" title="海鲅"><input type="radio" id="manu_35232" name="trademark" value="m35232">海鲅</label>
                <label for="manu_2251" title="酷比魔方"><input type="radio" id="manu_2251" name="trademark" value="m2251">酷比魔方</label>
                <label for="manu_52061" title="博本"><input type="radio" id="manu_52061" name="trademark" value="m52061">博本</label>
                <label for="manu_51642" title="ENZ"><input type="radio" id="manu_51642" name="trademark" value="m51642">ENZ</label>
                <label for="manu_50972" title="爱尔轩"><input type="radio" id="manu_50972" name="trademark" value="m50972">爱尔轩</label>
                <label for="manu_34055" title="索立信"><input type="radio" id="manu_34055" name="trademark" value="m34055">索立信</label>
                <label for="manu_47070" title="刀客"><input type="radio" id="manu_47070" name="trademark" value="m47070">刀客</label>
                <label for="manu_34130" title="镭波"><input type="radio" id="manu_34130" name="trademark" value="m34130">镭波</label>
                <label for="manu_49394" title="紫麦"><input type="radio" id="manu_49394" name="trademark" value="m49394">紫麦</label>
                <label for="manu_54916" title="AVITA"><input type="radio" id="manu_54916" name="trademark" value="m54916">AVITA</label>
                <label for="manu_51268"
                        title="金属大师"><input type="radio" id="manu_51268" name="trademark" value="m51268">金属大师</label>
                <label for="manu_33832" title="SOSOON"><input type="radio" id="manu_33832" name="trademark" value="m33832">SOSOON</label>
                <label for="manu_26" title="长城"><input type="radio" id="manu_26" name="trademark" value="m26">长城</label>
                <label for="manu_23" title="七喜"><input type="radio" id="manu_23" name="trademark" value="m23">七喜</label>
                <label for="manu_171" title="TCL"><input type="radio" id="manu_171" name="trademark" value="m171">TCL</label>
                <label for="manu_212" title="方正"><input type="radio" id="manu_212" name="trademark" value="m212">方正</label>
                <label for="manu_249" title="紫光"><input type="radio" id="manu_249" name="trademark" value="m249">紫光</label>
                <label for="manu_167" title="索尼"><input type="radio" id="manu_167" name="trademark" value="m167">索尼</label>
                <label for="manu_151" title="NEC"><input type="radio" id="manu_151" name="trademark" value="m151">NEC</label>
                <label for="manu_51186" title="翼昇"><input type="radio" id="manu_51186" name="trademark" value="m51186">翼昇</label>
                <label for="manu_125" title="Intel"><input type="radio" id="manu_125" name="trademark" value="m125">Intel</label>
                <label for="manu_300" title="夏普"><input type="radio" id="manu_300" name="trademark" value="m300">夏普</label>
                <label for="manu_314" title="优派"><input type="radio" id="manu_314" name="trademark" value="m314">优派</label>
                <label for="manu_34021" title="科之光"><input type="radio" id="manu_34021" name="trademark" value="m34021">科之光</label>
                <label for="manu_34018" title="明唐"><input type="radio" id="manu_34018" name="trademark" value="m34018">明唐</label>
                <label for="manu_19776" title="瀚斯宝丽"><input type="radio" id="manu_19776" name="trademark" value="m19776">瀚斯宝丽</label>
                <label for="manu_33677" title="典籍"><input type="radio" id="manu_33677" name="trademark" value="m33677">典籍</label>
                <label for="manu_32479" title="索泰"><input type="radio" id="manu_32479" name="trademark" value="m32479">索泰</label>
                <label for="manu_33033" title="现代IT世家"><input type="radio" id="manu_33033" name="trademark" value="m33033">现代IT世家</label>
                <label for="manu_34201" title="富登"><input type="radio" id="manu_34201" name="trademark" value="m34201">富登</label>
                <label for="manu_34264" title="万顺达"><input type="radio" id="manu_34264" name="trademark" value="m34264">万顺达</label>
                <label for="manu_36595" title="联想扬天"><input type="radio" id="manu_36595" name="trademark" value="m36595">联想扬天</label>
                <label for="manu_407" title="明基"><input type="radio" id="manu_407" name="trademark" value="m407">明基</label>
                <label for="manu_813" title="Gateway"><input type="radio" id="manu_813" name="trademark" value="m813">Gateway</label>
                <label for="manu_833" title="多彩"><input type="radio" id="manu_833" name="trademark" value="m833">多彩</label>
                <label for="manu_34946" title="Wbin"><input type="radio" id="manu_34946" name="trademark" value="m34946">Wbin</label>
                <label for="manu_34842" title="DCMOFA"><input type="radio" id="manu_34842" name="trademark" value="m34842">DCMOFA</label>
                <label for="manu_34681" title="神酷"><input type="radio" id="manu_34681" name="trademark" value="m34681">神酷</label>
                <label for="manu_974" title="新蓝"><input type="radio" id="manu_974" name="trademark" value="m974">新蓝</label>
                <label for="manu_33046" title="eMachines"><input type="radio" id="manu_33046" name="trademark" value="m33046">eMachines</label>
                <label for="manu_970"
                        title="台电"><input type="radio" id="manu_970" name="trademark" value="m970">台电</label>
                <label for="manu_33057" title="HD Computer"><input type="radio" id="manu_33057" name="trademark" value="m33057">HD Computer</label>
                <label for="manu_33168"
                        title="COYOB"><input type="radio" id="manu_33168" name="trademark" value="m33168">COYOB</label>
                <label for="manu_33141"
                        title="磐正Q-Mi"><input type="radio" id="manu_33141" name="trademark" value="m33141">磐正Q-Mi</label>
                <label for="manu_1071" title="万利达"><input type="radio" id="manu_1071" name="trademark" value="m1071">万利达</label>
                <label for="manu_33967" title="索华"><input type="radio"
                        id="manu_33967"
                        value="m33967">索华</label>
                <label for="manu_413" title="七彩虹"><input type="radio" id="manu_413" name="trademark"
                                                          value="m413">七彩虹</label>
                <label for="manu_33922" title="天玑"><input type="radio" id="manu_33922"
                                                           value="m33922">天玑</label>
                <label for="manu_34002" title="ESER宇朔"><input type="radio" id="manu_34002" name="trademark" value="m34002">ESER宇朔</label>
                <label for="manu_33290" title="睿逸"><input type="radio" id="manu_33290" name="trademark" value="m33290">睿逸</label>
            </dd>
        </dl>

        <dl>
            <dt>产品名称</dt>
            <dd>
                <input type="text" name="pName" id="pName">
            </dd>
        </dl>

        <%--基本参数--%>
        <dl>
            <dt>上市时间</dt>
            <dd><input type="date" id="datepicker1"></dd>
        </dl>

        <dl>
            <dt>产品类型</dt>
            <dd>
                <label for="param_5900" title="商用"><input type="radio" id="param_5900" name="trademark" value="商用">商用</label>
                <label for="param_5901" title="家用"><input type="radio" id="param_5901" name="trademark" value="家用">家用</label>
</dd>
        </dl>

        <dl>
            <dt>产品定位</dt>
            <dd>
                <label for="param_1227" title="游戏本"><input type="radio" id="param_1227" name="pPosition" value="游戏本">游戏本</label>
                <label for="param_2393" title="二合一笔记本"><input type="radio" id="param_2393" name="pPosition" value="二合一笔记本">二合一笔记本</label>
                <label for="param_1229" title="轻薄笔记本"><input type="radio" id="param_1229" name="pPosition" value="轻薄笔记本">轻薄笔记本</label>
                <label for="param_1226" title="商务办公本"><input type="radio" id="param_1226" name="pPosition" value="商务办公本">商务办公本</label>
                <label for="param_3599" title="影音娱乐本"><input type="radio" id="param_3599" name="pPosition" value="影音娱乐本">影音娱乐本</label>
                <label for="param_1224" title="校园学生本"><input type="radio" id="param_1224" name="pPosition" value="校园学生本">校园学生本</label>
            </dd>
        </dl>

        <dl>
            <dt>操作系统</dt>
            <dd>
                <label for="param_6313" title="Windows 10"><input type="radio" id="param_6313" name="OS" value="Windows 10" checked>Windows 10</label>
                <label for="param_5218" title="Windows 8/8.1"><input type="radio" id="param_5218" name="OS" value="Windows 8/8.1">Windows 8/8.1</label>
                <label for="param_6580" title="Windows 7"><input type="radio" id="param_6580" name="OS" value="Windows 7">Windows 7</label>
                <label for="param_2411" title="DOS/Linux"><input type="radio" id="param_2411" name="OS" value="DOS/Linux">DOS/Linux</label>
                <label for="param_2413" title="Mac OS苹果系统"><input type="radio" id="param_2413" name="OS" value="Mac OS苹果系统">Mac OS苹果系统</label>
                <label for="param_5529" title="Google Chrome OS"><input type="radio" id="param_5529" name="OS" value="Google Chrome OS">Google Chrome OS</label>
            </dd>
        </dl>

        <dl>
            <dt>主板芯片组</dt>
            <dd>
                <input type="text" name="chipset"></dd>
        </dl>
        <%--基本参数--%>

        <%--显示屏--%>
        <dl>
            <dt>触控支持</dt>
            <dd>
                <label for="touch_1" title="不支持触控"><input type="radio"  id="touch_1" name="pTouch" value="1" checked>不支持触控</label>
                <label for="touch_0" title="支持触控"><input type="radio" id="touch_0" name="pTouch" value="0">支持触控</label>
            </dd>
        </dl>

        <dl>
            <dt>屏幕尺寸<small>(英寸)</small></dt>
            <dd>
                <label><input type="number" name="pScreenSize" >英寸</label>
            </dd>
        </dl>

        <dl>
            <dt>屏幕分辨率</dt>
            <dd>
                <label><input type="number" name="pScreenResolution1" >*<input type="number" name="pScreenResolution2" ></label>
            </dd>
        </dl>

        <dl>
            <dt>屏幕技术</dt>
            <dd>
                <label for="param_5227" title="LED背光"><input type="radio" id="param_5227" name="pTechnology" value="LED背光">LED背光</label>
                <label for="param_4316" title="IPS显示屏"><input type="radio" id="param_4316" name="pTechnology" value="IPS显示屏">IPS显示屏</label>
                <label for="param_4317" title="视网膜显示屏"><input type="radio" id="param_4317" name="pTechnology" value="视网膜显示屏">视网膜显示屏</label>
                <label for="param_6652" title="防炫目屏"><input type="radio" id="param_6652" name="pTechnology" value="防炫目屏">防炫目屏</label>
                <label for="param_6592" title="窄边框"><input type="radio" id="param_6592" name="pTechnology" value="窄边框">窄边框</label>
</dd>
        </dl>
        <%--显示屏--%>

        <%--多媒体设备--%>
        <dl>
            <dt>摄像头</dt>
            <dd>
                <label for="param_6463" title="双摄像头"><input type="radio" id="param_6463" name="pCamera" value="双摄像头">双摄像头</label>
                <label for="param_6462" title="实感3D摄像头"><input type="radio" id="param_6462" name="pCamera" value="实感3D摄像头">实感3D摄像头</label>
                <label for="param_5107" title="720p HD摄像头"><input type="radio" id="param_5107" name="pCamera" value="720p HD摄像头">720p HD摄像头</label>
                <label for="param_2750" title="集成摄像头"><input type="radio" id="param_2750" name="pCamera" value="集成摄像头">集成摄像头</label>
            </dd>
        </dl>

        <dl>
            <dt>音频系统</dt>
            <dd>
                <label><input type="text" name="pAudio" ></label>
            </dd>
        </dl>

        <dl>
            <dt>扬声器</dt>
            <dd><label><input type="text" name="pSpeaker" ></label>
            </dd>
        </dl>

        <dl>
            <dt>麦克风</dt>
            <dd>
                <label><input type="text" name="pMike" ></label>
            </dd>
        </dl>
        <%--多媒体设备--%>

        <%--网络通信--%>
        <dl>
            <dt>无线网卡</dt>
            <dd>
                <label><input type="text" name="pWlan" ></label>

            </dd>
        </dl>

        <dl>
            <dt>有线网卡</dt>
            <dd>
                <label><input type="text" name="pLan" ></label>
            </dd>
        </dl>

        <dl>
            <dt>蓝牙</dt>
            <dd>
                <label for="Bluetooth5.0" title="蓝牙5.0"><input type="radio" id="Bluetooth5.0" name="pBluetooth" value="s7577">蓝牙5.0</label>
                <label for="Bluetooth4.2" title="蓝牙4.2"><input type="radio" id="Bluetooth4.2" name="pBluetooth" value="s6651">蓝牙4.2</label>
                <label for="Bluetooth4.1" title="蓝牙4.1"><input type="radio" id="Bluetooth4.1" name="pBluetooth" value="s6470">蓝牙4.1</label>
                <label for="Bluetooth4.0" title="蓝牙4.0"><input type="radio" id="Bluetooth4.0" name="pBluetooth" value="s4113">蓝牙4.0</label>
                <label for="Bluetooth3.0" title="蓝牙5.0"><input type="radio" id="Bluetooth3.0" name="pBluetooth" value="s7577">蓝牙3.0</label>
                <label for="Bluetooth2.1" title="蓝牙5.0"><input type="radio" id="Bluetooth2.1" name="pBluetooth" value="s7577">蓝牙2.1</label>
                <label for="Bluetooth2.0" title="蓝牙5.0"><input type="radio" id="Bluetooth2.0" name="pBluetooth" value="s7577">蓝牙2.0</label>
                <label for="Bluetooth1.2" title="蓝牙5.0"><input type="radio" id="Bluetooth1.2" name="pBluetooth" value="s7577">蓝牙1.2</label>
                <label for="Bluetooth1.0" title="蓝牙5.0"><input type="radio" id="Bluetooth1.0" name="pBluetooth" value="s7577">蓝牙1.0</label>

            </dd>
        </dl>
        <%--网络通信--%>

        <%--I/O接口--%>
        <dl>
            <dt>数据接口</dt>
            <dd>
                <label for="param_6469" title="USB Type-C接口"><input type="radio" id="param_6469" value="s6469">USB
                    Type-C接口</label>
                <label for="param_7089" title="USB3.1接口"><input type="radio" id="param_7089" value="s7089">USB3.1接口</label>
                <label for="param_2531" title="USB3.0接口"><input type="radio" id="param_2531" value="s2531">USB3.0接口</label>
                <label for="param_4320" title="Thunderbolt接口"><input type="radio" id="param_4320" value="s4320">Thunderbolt接口</label>
                <label for="param_6650" title="USB关机充电"><input type="radio" id="param_6650" value="s6650">USB关机充电</label>
</dd>
        </dl>

        <dl>
            <dt>音频接口</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>视频接口</dt>
            <dd>
                <label for="param_5127" title="HDMI"><input type="radio" id="param_5127"
                                                            value="s5127">HDMI</label>
                <label for="param_5126" title="VGA"><input type="radio" id="param_5126" value="s5126">VGA</label>
                <label for="param_5128" title="DisplayPort"><input type="radio" id="param_5128" value="s5128">DisplayPort</label>
</dd>
        </dl>

        <dl>
            <dt>其他接口</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>
        <%--I/O接口--%>

        <%--输入设备--%>
        <dl>
            <dt>指取设备</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>键盘描述</dt>
            <dd>
                <label for="param_7308" title="机械键盘"><input type="radio" id="param_7308"
                                                            value="s7308">机械键盘</label>
                <label for="param_4322" title="背光键盘"><input type="radio" id="param_4322" value="s4322">背光键盘</label>
                <label for="param_4323" title="可拆卸键盘"><input type="radio" id="param_4323" value="s4323">可拆卸键盘</label>
                <label for="param_4324" title="防渗漏键盘"><input type="radio" id="param_4324" value="s4324">防渗漏键盘</label>
                <label for="param_4439" title="含独立数字键盘"><input type="radio" id="param_4439" value="s4439">含独立数字键盘</label>
</dd>
        </dl>

        <dl>
            <dt>指纹识别</dt>
            <dd>
                <label for="param_2744" title="指纹识别"><input type="radio" id="param_2744" value="s2744">指纹识别</label>
            </dd>
        </dl>
        <%--输入设备--%>

        <%--电源描述--%>
        <dl>
            <dt>电池类型</dt>
            <dd>
                <label for="param_2754" title="6芯锂电池"><input type="radio" id="param_2754" value="s2754">6芯锂电池</label>
                <label for="param_2756" title="8芯锂电池"><input type="radio" id="param_2756"
                                                              value="s2756">8芯锂电池</label>
                <label for="param_2757" title="9芯锂电池"><input type="radio" id="param_2757" value="s2757">9芯锂电池</label>
</dd>
        </dl>

        <dl>
            <dt>续航时间</dt>
            <dd>
                <label for="param_3851" title="9小时以上"><input type="radio" id="param_3851" value="s3851">9小时以上</label>
                <label for="param_3850" title="7-9小时"><input type="radio" id="param_3850"
                                                              value="s3850">7-9小时</label>
                <label for="param_3849" title="5-7小时"><input type="radio" id="param_3849" value="s3849">5-7小时</label>
                <label for="param_3848" title="5小时以下"><input type="radio" id="param_3848" value="s3848">5小时以下</label>
</dd>
        </dl>

        <dl>
            <dt>电源适配器</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>
        <%--电源描述--%>

        <%--外观--%>
        <dl>
            <dt>笔记本重量
                <small>(kg)</small>
            </dt>
            <dd>
                <label for="param_3845" title="1.2Kg以下"><input type="radio" id="param_3845"
                                                               value="s3845">1.2Kg以下</label>
                <label for="param_862" title="1.2-1.5Kg"><input type="radio" id="param_862" value="s862">1.2-1.5Kg</label>
                <label for="param_863" title="1.5-2.0Kg"><input type="radio" id="param_863" value="s863">1.5-2.0Kg</label>
                <label for="param_864" title="2.0Kg以上"><input type="radio" id="param_864" value="s864">2.0Kg以上</label>
</dd>
        </dl>

        <dl>
            <dt>长度
                <small>(mm)</small>
            </dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>宽度
                <small>(mm)</small>
            </dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>厚度
                <small>(mm)</small>
            </dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>外壳材质</dt>
            <dd>
                <label for="param_4707" title="镁铝合金"><input type="radio" id="param_4707"
                                                            value="s4707">镁铝合金</label>
                <label for="param_4708" title="碳纤维"><input type="radio" id="param_4708" value="s4708">碳纤维</label>
                <label for="param_4709" title="玻璃纤维"><input type="radio" id="param_4709" value="s4709">玻璃纤维</label>
</dd>
        </dl>

        <dl>
            <dt>外壳描述</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>
        <%--外观--%>

        <%--其他--%>
        <dl>
            <dt>安全性能</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>散热系统</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>附带软件</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>
        <%--其他--%>

        <%--笔记本附件--%>
        <dl>
            <dt>包装清单</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>
        <%--笔记本附件--%>

        <%--保修信息--%>
        <dl>
            <dt>保修政策</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>质保时间</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>质保备注</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>客服电话</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>电话备注</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>详细内容</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>
        <%--保修信息--%>

        <%--处理器--%>
        <dl>
            <dt>CPU型号</dt>
            <dd>
                <label for="param_8136" title="酷睿i9 9880H"><input type="radio" id="param_8136" value="s8136">酷睿i9
                    9880H</label>
                <label for="param_8135" title="酷睿i9 9980HK"><input type="radio" id="param_8135"
                                                                   value="s8135">酷睿i9
                    9980HK</label>
                <label for="param_7927" title="酷睿i9 9900K"><input type="radio" id="param_7927" value="s7927">酷睿i9 9900K</label>
                <label for="param_8071" title="酷睿i7 9750H"><input type="radio" id="param_8071" value="s8071">酷睿i7 9750H</label>
                <label for="param_8073" title="酷睿i5 9300H"><input type="radio" id="param_8073" value="s8073">酷睿i5 9300H</label>
                <label for="param_8072" title="酷睿i5 9400"><input type="radio" id="param_8072" value="s8072">酷睿i5
                    9400</label>
                <label for="param_7926" title="酷睿i7 9700K"><input type="radio" id="param_7926" value="s7926">酷睿i7 9700K</label>
                <label for="param_7925" title="酷睿i5 9600K"><input type="radio" id="param_7925" value="s7925">酷睿i5 9600K</label>
                <label for="param_7842" title="酷睿i7 8565U"><input type="radio" id="param_7842" value="s7842">酷睿i7 8565U</label>
                <label for="param_7841" title="酷睿i5 8265U"><input type="radio" id="param_7841" value="s7841">酷睿i5 8265U</label>
                <label for="param_7843" title="酷睿i3 8145U"><input type="radio" id="param_7843" value="s7843">酷睿i3 8145U</label>
                <label for="param_7642" title="酷睿i9 8950HK"><input type="radio" id="param_7642" value="s7642">酷睿i9
                    8950HK</label>
                <label for="param_7641" title="酷睿i7 8750H"><input type="radio" id="param_7641" value="s7641">酷睿i7 8750H</label>
                <label for="param_7354" title="酷睿i7 8550U"><input type="radio" id="param_7354" value="s7354">酷睿i7 8550U</label>
                <label for="param_7644" title="酷睿i5 8300H"><input type="radio" id="param_7644" value="s7644">酷睿i5 8300H</label>
                <label for="param_7701" title="酷睿i3 8100"><input type="radio" id="param_7701" value="s7701">酷睿i3
                    8100</label>
                <label for="param_7350" title="酷睿i5 8250U"><input type="radio" id="param_7350" value="s7350">酷睿i5 8250U</label>
                <label for="param_7294" title="酷睿i7 7820HK"><input type="radio" id="param_7294" value="s7294">酷睿i7
                    7820HK</label>
                <label for="param_7293" title="酷睿i7 7700HQ"><input type="radio"
                                                                   id="param_7293"
                                                                   value="s7293">酷睿i7
                    7700HQ</label>
                <label for="param_7292" title="酷睿i5 7300HQ"><input type="radio" id="param_7292"
                                                                   value="s7292">酷睿i5
                    7300HQ</label>
                <label for="param_6992" title="酷睿i7 7500U"><input type="radio" id="param_6992" value="s6992">酷睿i7
                    7500U</label>
                <label for="param_6991" title="酷睿i5 7200U"><input type="radio" id="param_6991" value="s6991">酷睿i5
                    7200U</label>
                <label for="param_6330" title="酷睿i7 6820HK"><input type="radio" id="param_6330"
                                                                   value="s6330">酷睿i7
                    6820HK</label>
                <label for="param_6614" title="酷睿i7 6700K"><input type="radio" id="param_6614" value="s6614">酷睿i7
                    6700K</label>
                <label for="param_6435" title="酷睿i7 6700HQ"><input type="radio" id="param_6435"
                                                                   value="s6435">酷睿i7
                    6700HQ</label>
                <label for="param_6613" title="酷睿i7 6600U"><input type="radio" id="param_6613" value="s6613">酷睿i7
                    6600U</label>
                <label for="param_6612" title="酷睿i7 6560U"><input type="radio" id="param_6612" value="s6612">酷睿i7
                    6560U</label>
                <label for="param_6326" title="酷睿i7 6500U"><input type="radio" id="param_6326" value="s6326">酷睿i7
                    6500U</label>
                <label for="param_6436" title="酷睿i5 6300HQ"><input type="radio" id="param_6436"
                                                                   value="s6436">酷睿i5
                    6300HQ</label>
                <label for="param_6611" title="酷睿i5 6300U"><input type="radio" id="param_6611" value="s6611">酷睿i5
                    6300U</label>
                <label for="param_6325" title="酷睿i5 6200U"><input type="radio" id="param_6325" value="s6325">酷睿i5
                    6200U</label>
                <label for="param_6610" title="酷睿i3 6100U"><input type="radio" id="param_6610" value="s6610">酷睿i3
                    6100U</label>
                <label for="param_6298" title="酷睿i7 5700HQ"><input type="radio" id="param_6298"
                                                                   value="s6298">酷睿i7
                    5700HQ</label>
                <label for="param_6300" title="酷睿i7 5600U"><input type="radio" id="param_6300" value="s6300">酷睿i7
                    5600U</label>
                <label for="param_6303" title="酷睿i7 5500U"><input type="radio" id="param_6303" value="s6303">酷睿i7
                    5500U</label>
                <label for="param_6295" title="酷睿i5 5300U"><input type="radio" id="param_6295" value="s6295">酷睿i5
                    5300U</label>
                <label for="param_6294" title="酷睿i5 5200U"><input type="radio" id="param_6294" value="s6294">酷睿i5
                    5200U</label>
                <label for="param_6287" title="酷睿i3 5010U"><input type="radio" id="param_6287" value="s6287">酷睿i3
                    5010U</label>
                <label for="param_6286" title="酷睿i3 5005U"><input type="radio" id="param_6286" value="s6286">酷睿i3
                    5005U</label>
                <label for="param_5056" title="酷睿i3 4005U"><input type="radio" id="param_5056" value="s5056">酷睿i3
                    4005U</label>
                <label for="param_5587" title="酷睿i3 4030U"><input type="radio" id="param_5587" value="s5587">酷睿i3
                    4030U</label>
                <label for="param_5667" title="酷睿i5 4210M"><input type="radio" id="param_5667" value="s5667">酷睿i5
                    4210M</label>
                <label for="param_4721" title="酷睿i5 4200U"><input type="radio" id="param_4721" value="s4721">酷睿i5
                    4200U</label>
                <label for="param_5589" title="酷睿i5 4210U"><input type="radio" id="param_5589" value="s5589">酷睿i5
                    4210U</label>
                <label for="param_6609" title="酷睿i7 4510U"><input type="radio" id="param_6609" value="s6609">酷睿i7
                    4510U</label>
                <label for="param_5596" title="酷睿i7 4710MQ"><input type="radio" id="param_5596"
                                                                   value="s5596">酷睿i7
                    4710MQ</label>
                <label for="param_5776" title="酷睿i7 4710HQ"><input type="radio" id="param_5776"
                                                                   value="s5776">酷睿i7
                    4710HQ</label>
                <label for="param_6607" title="酷睿M7 6Y75"><input type="radio" id="param_6607"
                                                                 value="s6607">酷睿M7 6Y75</label>
                <label for="param_6606" title="酷睿M5 6Y57"><input type="radio" id="param_6606" value="s6606">酷睿M5
                    6Y57</label>
                <label for="param_6605" title="酷睿M5 6Y54"><input type="radio" id="param_6605"
                                                                 value="s6605">酷睿M5 6Y54</label>
                <label for="param_6604" title="酷睿M3 6Y30"><input type="radio" id="param_6604" value="s6604">酷睿M3
                    6Y30</label>
                <label for="param_6603" title="酷睿M 5Y71"><input type="radio" id="param_6603" value="s6603">酷睿M 5Y71</label>
                <label for="param_6602" title="酷睿M 5Y51"><input type="radio" id="param_6602" value="s6602">酷睿M
                    5Y51</label>
                <label for="param_6601" title="酷睿M 5Y10"><input type="radio" id="param_6601" value="s6601">酷睿M
                    5Y10</label>
                <label for="param_6439" title="奔腾四核 N3700"><input type="radio" id="param_6439" value="s6439">奔腾四核
                    N3700</label>
                <label for="param_6438" title="奔腾四核 N3540"><input type="radio" id="param_6438" value="s6438">奔腾四核
                    N3540</label>
                <label for="param_5624" title="奔腾双核 3558U"><input type="radio" id="param_5624" value="s5624">奔腾双核
                    3558U</label>
                <label for="param_6440" title="赛扬双核 N3050"><input type="radio" id="param_6440" value="s6440">赛扬双核
                    N3050</label>
                <label for="param_6442" title="赛扬双核 N2840"><input type="radio" id="param_6442" value="s6442">赛扬双核
                    N2840</label>
                <label for="param_6441" title="赛扬双核 3205U"><input type="radio" id="param_6441" value="s6441">赛扬双核
                    3205U</label>
                <label for="param_6444" title="赛扬四核 N3150"><input type="radio" id="param_6444" value="s6444">赛扬四核
                    N3150</label>
                <label for="param_6443" title="赛扬四核 N2940"><input type="radio" id="param_6443" value="s6443">赛扬四核
                    N2940</label>
                <label for="param_6600" title="Atom Z8300"><input type="radio" id="param_6600" value="s6600">Atom
                    Z8300</label>
                <label for="param_6599" title="Atom Z3735F"><input type="radio" id="param_6599"
                                                                   value="s6599">Atom
                    Z3735F</label>
                <label for="param_8082" title="Ryzen 7-3750H"><input type="radio" id="param_8082"
                                                                     value="s8082">Ryzen
                    7-3750H</label>
                <label for="param_8081" title="Ryzen 5 3500U"><input type="radio" id="param_8081"
                                                                     value="s8081">Ryzen 5
                    3500U</label>
                <label for="param_8080" title="Ryzen 5-3550H"><input type="radio" id="param_8080"
                                                                     value="s8080">Ryzen
                    5-3550H</label>
                <label for="param_7767" title="Ryzen 7 2700U"><input type="radio" id="param_7767"
                                                                     value="s7767">Ryzen 7
                    2700U</label>
                <label for="param_7766" title="Ryzen 5 2500U"><input type="radio" id="param_7766"
                                                                     value="s7766">Ryzen 5
                    2500U</label>
                <label for="param_7768" title="Ryzen 3 2300U"><input type="radio" id="param_7768"
                                                                     value="s7768">Ryzen 3
                    2300U</label>
                <label for="param_7769" title="Ryzen 7 1700"><input type="radio" id="param_7769"
                                                                    value="s7769">Ryzen 7
                    1700</label>
                <label for="param_6454" title="A10-8700P"><input type="radio" id="param_6454"
                                                                 value="s6454">A10-8700P</label>
                <label for="param_5533" title="A10-7300"><input type="radio" id="param_5533"
                                                                 value="s5533">A10-7300</label>
                <label for="param_6598" title="A8-8600P"><input type="radio" id="param_6598"
                                                                 value="s6598">A8-8600P</label>
                <label for="param_6597" title="A8-7410"><input type="radio" id="param_6597" value="s6597">A8-7410</label>
                <label for="param_5787" title="A8-7100"><input type="radio" id="param_5787" value="s5787">A8-7100</label>
                <label for="param_5788" title="A8-6410"><input type="radio" id="param_5788" value="s5788">A8-6410</label>
                <label for="param_6596" title="A6-7310"><input type="radio" id="param_6596" value="s6596">A6-7310</label>
                <label for="param_5786" title="A6-6310"><input type="radio" id="param_5786" value="s5786">A6-6310</label>
                <label for="param_6595" title="A4-7210"><input type="radio" id="param_6595" value="s6595">A4-7210</label>
                <label for="param_6594" title="A4-6210"><input type="radio" id="param_6594" value="s6594">A4-6210</label>
                <label for="param_6593" title="FX-8800P"><input type="radio" id="param_6593" value="s6593">FX-8800P</label>
                <label for="param_5793" title="E2-6110"><input type="radio" id="param_5793" value="s5793">E2-6110</label>
                <label for="param_5792" title="E1-6010"><input type="radio" id="param_5792" value="s5792">E1-6010</label>
        </dl>

        <dl>
            <dt>CPU主频</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>最高睿频</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>核心/线程数</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>


        <dl>
            <dt>三级缓存</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>总线规格</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>核心架构</dt>
            <dd>
                <label for="param_7840" title="Whiskey Lake"><input type="radio" id="param_7840" value="s7840">Whiskey
                    Lake</label>
                <label for="param_7512" title="Coffee Lake"><input type="radio" id="param_7512"
                                                                   value="s7512">Coffee
                    Lake</label>
                <label for="param_7352" title="Kaby Lake R"><input type="radio" id="param_7352"
                                                                   value="s7352">Kaby Lake R</label>
                <label for="param_7351" title="Kaby Lake"><input type="radio" id="param_7351" value="s7351">Kaby
                    Lake</label>
                <label for="param_6329" title="Skylake"><input type="radio" id="param_6329"
                                                               value="s6329">Skylake</label>
                <label for="param_6572" title="Cherry Trail"><input type="radio" id="param_6572" value="s6572">Cherry
                    Trail</label>
                <label for="param_6317" title="Broadwell"><input type="radio" id="param_6317"
                                                                 value="s6317">Broadwell</label>
                <label for="param_6328" title="Braswell"><input type="radio" id="param_6328"
                                                                 value="s6328">Braswell</label>
                <label for="param_4697" title="Haswell"><input type="radio" id="param_4697" value="s4697">Haswell</label>
                <label for="param_5561" title="Bay Trail"><input type="radio" id="param_5561" value="s5561">Bay Trail</label>
                <label for="param_4290" title="Ivy Bridge"><input type="radio" id="param_4290" value="s4290">Ivy Bridge</label>
                <label for="param_6573" title="Sandy Bridge"><input type="radio" id="param_6573" value="s6573">Sandy Bridge</label>
</dd>
        </dl>

        <dl>
            <dt>制程工艺</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>功耗</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>
        <%--处理器--%>

        <%--存储设备--%>
        <dl>
            <dt>内存容量</dt>
            <dd>
                <label for="param_6648" title="32GB及以上"><input type="radio" id="param_6648"
                                                               value="s6648">32GB及以上</label>
                <label for="param_5730" title="16GB"><input type="radio" id="param_5730" value="s5730">16GB</label>
                <label for="param_4108" title="8GB"><input type="radio" id="param_4108" value="s4108">8GB</label>
                <label for="param_2192" title="4GB"><input type="radio" id="param_2192" value="s2192">4GB</label>
                <label for="param_108" title="2GB"><input type="radio" id="param_108" value="s108">2GB</label>
</dd>
        </dl>

        <dl>
            <dt>内存类型</dt>
            <dd>
                <label for="param_6506" title="DDR4"><input type="radio" id="param_6506"
                                                            value="s6506">DDR4</label>
                <label for="param_6503" title="DDR3"><input type="radio" id="param_6503" value="s6503">DDR3</label>
                <label for="param_6504" title="DDR3L"><input type="radio" id="param_6504" value="s6504">DDR3L</label>
                <label for="param_6616" title="LPDDR3"><input type="radio" id="param_6616" value="s6616">LPDDR3</label>
</dd>
        </dl>

        <dl>
            <dt>固态硬盘容量</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>机械硬盘容量</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>硬盘描述</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>

        <dl>
            <dt>光驱类型</dt>
            <dd>
                <label for="param_6240" title="内置DVD刻录机"><input type="radio" id="param_6240" value="p6240">内置DVD刻录机</label>
                <label for="param_9553" title="内置蓝光光驱"><input type="radio" id="param_9553" value="p9553">内置蓝光光驱</label>
                <label for="param_25343" title="可选外置光驱"><input type="radio" id="param_25343" value="p25343">可选外置光驱</label>
                <label for="param_14692" title="无内置光驱"><input type="radio" id="param_14692" value="p14692">无内置光驱</label>
</dd>
        </dl>
        <%--存储设备--%>

        <%--显卡--%>
        <dl>
            <dt>显卡类型</dt>
            <dd>
                <label for="param_5065" title="发烧级显卡"><input type="radio" id="param_5065" value="s5065">发烧级显卡</label>
                <label for="param_5064" title="性能级显卡"><input type="radio" id="param_5064"
                                                              value="s5064">性能级显卡</label>
                <label for="param_2111" title="入门级显卡"><input type="radio" id="param_2111" value="s2111">入门级显卡</label>
                <label for="param_5066" title="专业级图形显卡"><input type="radio" id="param_5066" value="s5066">专业级图形显卡</label>
                <label for="param_1951" title="双显卡"><input type="radio" id="param_1951" value="s1951">双显卡</label>
                <label for="param_1256" title="核心显卡"><input type="radio" id="param_1256" value="s1256">核心显卡</label>
</dd>
        </dl>


        <dl>
            <dt>显卡芯片</dt>
            <dd>
                <label for="param_2631" title="NVIDIA显卡"><input type="radio" id="param_2631" value="s2631">NVIDIA显卡</label>
                <label for="param_8075" title="GTX16系列"><input type="radio" id="param_8075" value="s8075">GTX16系列</label>
                <label for="param_8076" title="GTX 1660Ti"><input type="radio" id="param_8076" value="s8076">GTX 1660Ti</label>
                <label for="param_8077" title="GTX 1650"><input type="radio" id="param_8077" value="s8077">GTX 1650</label>
                <label for="param_8027" title="MX200系列"><input type="radio" id="param_8027" value="s8027">MX200系列</label>
                <label for="param_8028" title="MX250"><input type="radio" id="param_8028" value="s8028">MX250</label>
                <label for="param_8029" title="MX230"><input type="radio" id="param_8029" value="s8029">MX230</label>
                <label for="param_8001" title="RTX 20系列"><input type="radio" id="param_8001" value="s8001">RTX 20系列</label>
                <label for="param_8002" title="RTX2080"><input type="radio" id="param_8002" value="s8002">RTX2080</label>
                <label for="param_8003" title="RTX2070"><input type="radio" id="param_8003" value="s8003">RTX2070</label>
                <label for="param_8004" title="RTX2060"><input type="radio" id="param_8004" value="s8004">RTX2060</label>
                <label for="param_6967" title="GTX 10系列"><input type="radio" id="param_6967" value="s6967">GTX 10系列</label>
                <label for="param_7244" title="GTX1050Ti"><input type="radio" id="param_7244" value="s7244">GTX1050Ti</label>
                <label for="param_7243" title="GTX1050"><input type="radio" id="param_7243" value="s7243">GTX1050</label>
                <label for="param_6968" title="GTX1080"><input type="radio" id="param_6968" value="s6968">GTX1080</label>
                <label for="param_6969" title="GTX1070"><input type="radio" id="param_6969" value="s6969">GTX1070</label>
                <label for="param_6970" title="GTX1060"><input type="radio" id="param_6970" value="s6970">GTX1060</label>
                <label for="param_6017" title="GTX 9系列"><input type="radio" id="param_6017" value="s6017">GTX 9系列</label>
                <label for="param_6584" title="GTX980/GTX980M"><input type="radio"
                                                                      id="param_6584"
                                                                      value="s6584">GTX980/GTX980M</label>
                <label for="param_6587" title="GTX970M"><input type="radio" id="param_6587" value="s6587">GTX970M</label>
                <label for="param_7255" title="GTX965M"><input type="radio" id="param_7255" value="s7255">GTX965M</label>
                <label for="param_6586" title="GTX960M"><input type="radio" id="param_6586" value="s6586">GTX960M</label>
                <label for="param_6585" title="GTX950M"><input type="radio" id="param_6585" value="s6585">GTX950M</label>
                <label for="param_5534" title="GTX 8系列"><input type="radio" id="param_5534" value="s5534">GTX 8系列</label>
                <label for="param_6310" title="GeForce 9系列"><input type="radio" id="param_6310" value="s6310">GeForce 9系列</label>
                <label for="param_6590" title="GeForce 940M"><input type="radio" id="param_6590" value="s6590">GeForce 940M</label>
                <label for="param_6589" title="GeForce 930M"><input type="radio" id="param_6589" value="s6589">GeForce 930M</label>
                <label for="param_6588" title="GeForce 920M"><input type="radio" id="param_6588" value="s6588">GeForce 920M</label>
                <label for="param_5419" title="GeForce 8系列"><input type="radio" id="param_5419" value="s5419">GeForce 8系列</label>
                <label for="param_4739" title="GT 7系列"><input type="radio" id="param_4739" value="s4739">GT 7系列</label>
                <label for="param_4732" title="Quadro NVS系列"><input type="radio" id="param_4732" value="s4732">Quadro NVS系列</label>
                <label for="param_7346" title="MX150"><input type="radio" id="param_7346" value="s7346">MX150</label>
                <label for="param_7771" title="MX130"><input type="radio" id="param_7771" value="s7771">MX130</label>
                <label for="param_2632" title="AMD显卡"><input type="radio" id="param_2632" value="s2632">AMD显卡</label>
                <label for="param_7770" title="RX系列"><input type="radio" id="param_7770" value="s7770">RX系列</label>
                <label for="param_6466" title="R9系列"><input type="radio" id="param_6466" value="s6466">R9系列</label>
                <label for="param_6465" title="R7系列"><input type="radio" id="param_6465" value="s6465">R7系列</label>
                <label for="param_6464" title="R5系列"><input type="radio" id="param_6464" value="s6464">R5系列</label>
                <label for="param_4740" title="HD 8000系列"><input type="radio" id="param_4740" value="s4740">HD 8000系列</label>
        </dl>

        <dl>
            <dt>显存容量</dt>
            <dd>
                <label for="param_6468" title="8GB"><input type="radio" id="param_6468"
                                                           value="s6468">8GB</label>
                <label for="param_6467" title="6GB"><input type="radio" id="param_6467" value="s6467">6GB</label>
                <label for="param_4109" title="4GB"><input type="radio" id="param_4109" value="s4109">4GB</label>
                <label for="param_2194" title="3GB"><input type="radio" id="param_2194" value="s2194">3GB</label>
                <label for="param_2195" title="2GB"><input type="radio" id="param_2195" value="s2195">2GB</label>
                <label for="param_2196" title="1GB"><input type="radio" id="param_2196" value="s2196">1GB</label>
</dd>
        </dl>

        <dl>
            <dt>显存类型</dt>
            <dd>
                <label for="param_7304" title="GDDR5"><input type="radio" id="param_7304" value="s7304">GDDR5</label>
                <label for="param_7305" title="GDDR3"><input type="radio" id="param_7305" value="s7305">GDDR3</label>
            </dd>
        </dl>

        <dl>
            <dt>显存位宽</dt>
            <dd>
                <label for="param_14097" title="64bit"><input type="radio" id="param_14097"
                                                              value="p14097">64bit</label>
                <label for="param_14098" title="128bit"><input type="radio" id="param_14098" value="p14098">128bit</label>
                <label for="param_18429" title="192bit"><input type="radio" id="param_18429" value="p18429">192bit</label>
                <label for="param_14106" title="256bit"><input type="radio" id="param_14106" value="p14106">256bit</label>
</dd>
        </dl>
        <%--显卡--%>

        <dl>
            <dt>图片</dt>
            <dd>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>
                <label for=""><input type="radio" name="" id="" value=""></label>


            </dd>
        </dl>


    </div>

</div>


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
                            <li><a href="#">联想</a></li>
                            <li><a href="#">惠普</a></li>
                            <li><a href="#">戴尔</a></li>
                            <li><a href="#">苹果</a></li>
                            <li><a href="#">微软</a></li>
                            <li><a href="#">Alienware</a></li>
                            <li><a href="#">机械师</a></li>

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
