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

    <form action="${pageContext.request.contextPath}/addOneProduct.do" method="post">

    <div class="s_condition clearfix" id="s_filter">
        <div class="title_ser"><strong>添加产品</strong><span></span>
        </div>





        <dl id="manuSer">
            <dt>笔记本电脑品牌</dt>
            <dd>
                <label for="manu_160" title="联想"><input type="radio" id="manu_160" name="tmName" value="联想">联想</label>
                <label for="manu_223" title="惠普"><input type="radio" id="manu_223" name="tmName" value="惠普">惠普</label>
                <label for="manu_21" title="戴尔"><input type="radio" id="manu_21" name="tmName" value="戴尔">戴尔</label>
                <label for="manu_613" title="华为"><input type="radio" id="manu_613" name="tmName" value="华为">华为</label>
                <label for="manu_227" title="华硕"><input type="radio" id="manu_227" name="tmName" value="华硕">华硕</label>
                <label for="manu_218" title="Acer宏碁"><input type="radio" id="manu_218" name="tmName" value="Acer宏基">Acer宏碁</label>
                <label for="manu_364" title="微软"><input type="radio" id="manu_364" name="tmName" value="微软">微软</label>
                <label for="manu_544" title="苹果"><input type="radio" id="manu_544" name="tmName" value="苹果">苹果</label>
                <label for="manu_32108" title="ThinkPad"><input type="radio" id="manu_32108" name="tmName" value="ThinkPad">ThinkPad</label>
                <label for="manu_33520" title="Alienware"><input type="radio" id="manu_33520" name="tmName" value="Alienware">Alienware</label>
                <label for="manu_1191" title="神舟"><input type="radio" id="manu_1191" name="tmName" value="神舟">神舟</label>
                <label for="manu_35578" title="机械革命"><input type="radio" id="manu_35578" name="tmName" value="机械革命">机械革命</label>
                <label for="manu_98" title="三星"><input type="radio" id="manu_98" name="tmName" value="三星">三星</label>
                <label for="manu_35393" title="雷神"><input type="radio" id="manu_35393" name="tmName" value="雷神">雷神</label>
                <label for="manu_36359" title="机械师"><input type="radio" id="manu_36359" name="tmName" value="机械师">机械师</label>
                <label for="manu_133" title="MSI微星"><input type="radio" id="manu_133" name="tmName" value="MSI微星">MSI微星</label>
                <label for="manu_41373" title="ROG"><input type="radio" id="manu_41373" name="tmName" value="ROG">ROG</label>
                <label for="manu_50840" title="荣耀"><input type="radio" id="manu_50840" name="tmName" value="荣耀">荣耀</label>
                <label for="manu_34645" title="小米"><input type="radio" name="tmName" id="manu_34645" value="小米">小米</label>
                <label for="manu_36793" title="中柏"><input type="radio" id="manu_36793" name="tmName" value="中柏">中柏</label>
                <label for="manu_1590" title="雷蛇"><input type="radio" id="manu_1590" name="tmName" value="雷蛇">雷蛇</label>
                <%--=====================================================================--%>


                <label for="manu_24" title="清华同方"><input type="radio" id="manu_24" name="tmName" value="清华同方">清华同方</label>
                <label for="manu_36391" title="炫龙"><input type="radio" id="manu_36391" name="tmName" value="炫龙">炫龙</label>
                <label for="manu_143" title="LG"><input type="radio" id="manu_143" name="tmName" value="LG">LG</label>
                <label for="manu_55731" title="红米"><input type="radio" id="manu_55731" name="tmName" value="红米">红米</label>
                <label for="manu_54255" title="a豆"><input type="radio" id="manu_54255" name="tmName" value="a豆">a豆</label>
                <label for="manu_53851" title="吾空"><input type="radio" id="manu_53851" name="tmName" value="吾空">吾空</label>
                <label for="manu_221" title="海尔"><input type="radio" id="manu_221" name="tmName" value="海尔">海尔</label>
                <label for="manu_36607" title="火影"><input type="radio" id="manu_36607" name="tmName" value="火影">火影</label>
                <label for="manu_37353" title="麦本本"><input type="radio" id="manu_37353" name="tmName" value="麦本本">麦本本</label>
                <label for="manu_50829" title="VAIO"><input type="radio" id="manu_50829" name="tmName" value="VAIO">VAIO</label>
                <label for="manu_34305" title="Terrans Force"><input type="radio" id="manu_34305" name="tmName" value="Terrans Force">Terrans Force</label>
                <label for="manu_234" title="技嘉"><input type="radio" id="manu_234" name="tmName" value="技嘉">技嘉</label>
                <label for="manu_209" title="东芝"><input type="radio" id="manu_209" name="tmName" value="东芝">东芝</label>
                <label for="manu_54562" title="壹号本"><input type="radio" id="manu_54562" name="tmName" value="壹号本">壹号本</label>
                <label for="manu_283" title="富士通"><input type="radio" id="manu_283" name="tmName" value="富士通">富士通</label>
                <label for="manu_1922" title="谷歌"><input type="radio" id="manu_1922" name="tmName" value="谷歌">谷歌</label>
                <label for="manu_34329" title="锡恩帝"><input type="radio" name="tmName" id="manu_34329" value="锡恩帝">锡恩帝</label>
                <label for="manu_265" title="昂达"><input type="radio" id="manu_265" name="tmName" value="昂达">昂达</label>
                <label for="manu_84" title="松下"><input type="radio" id="manu_84" name="tmName" value="松下">松下</label>
                <label for="manu_47841" title="宝扬"><input type="radio" id="manu_47841" name="tmName" value="宝扬">宝扬</label>
                <label for="manu_35232" title="海鲅"><input type="radio" id="manu_35232" name="tmName" value="海鲅">海鲅</label>
                <label for="manu_2251" title="酷比魔方"><input type="radio" id="manu_2251" name="tmName" value="酷比魔方">酷比魔方</label>
                <label for="manu_52061" title="博本"><input type="radio" id="manu_52061" name="tmName" value="博本">博本</label>
                <label for="manu_51642" title="ENZ"><input type="radio" id="manu_51642" name="tmName" value="ENZ">ENZ</label>
                <label for="manu_50972" title="爱尔轩"><input type="radio" id="manu_50972" name="tmName" value="爱尔轩">爱尔轩</label>
                <label for="manu_34055" title="索立信"><input type="radio" id="manu_34055" name="tmName" value="索立信">索立信</label>
                <label for="manu_47070" title="刀客"><input type="radio" id="manu_47070" name="tmName" value="刀客">刀客</label>
                <label for="manu_34130" title="镭波"><input type="radio" id="manu_34130" name="tmName" value="镭波">镭波</label>
                <label for="manu_49394" title="紫麦"><input type="radio" id="manu_49394" name="tmName" value="紫麦">紫麦</label>
                <label for="manu_54916" title="AVITA"><input type="radio" id="manu_54916" name="tmName" value="AVITA">AVITA</label>
                <label for="manu_51268" title="金属大师"><input type="radio" id="manu_51268" name="tmName" value="金属大师">金属大师</label>
                <label for="manu_33832" title="SOSOON"><input type="radio" id="manu_33832" name="tmName" value="SOSOON">SOSOON</label>
                <label for="manu_26" title="长城"><input type="radio" id="manu_26" name="tmName" value="长城">长城</label>
                <label for="manu_23" title="七喜"><input type="radio" id="manu_23" name="tmName" value="七喜">七喜</label>
                <label for="manu_171" title="TCL"><input type="radio" id="manu_171" name="tmName" value="TCL">TCL</label>
                <label for="manu_212" title="方正"><input type="radio" id="manu_212" name="tmName" value="方正">方正</label>
                <label for="manu_249" title="紫光"><input type="radio" id="manu_249" name="tmName" value="紫光">紫光</label>
                <label for="manu_167" title="索尼"><input type="radio" id="manu_167" name="tmName" value="索尼">索尼</label>
                <label for="manu_151" title="NEC"><input type="radio" id="manu_151" name="tmName" value="NEC">NEC</label>
                <label for="manu_51186" title="翼昇"><input type="radio" id="manu_51186" name="tmName" value="翼昇">翼昇</label>
                <label for="manu_125" title="Intel"><input type="radio" id="manu_125" name="tmName" value="Intel">Intel</label>
                <label for="manu_300" title="夏普"><input type="radio" id="manu_300" name="tmName" value="夏普">夏普</label>
                <label for="manu_314" title="优派"><input type="radio" id="manu_314" name="tmName" value="优派">优派</label>
                <label for="manu_34021" title="科之光"><input type="radio" id="manu_34021" name="tmName" value="科之光">科之光</label>
                <label for="manu_34018" title="明唐"><input type="radio" id="manu_34018" name="tmName" value="明唐">明唐</label>
                <label for="manu_19776" title="瀚斯宝丽"><input type="radio" id="manu_19776" name="tmName" value="瀚斯宝丽">瀚斯宝丽</label>
                <label for="manu_33677" title="典籍"><input type="radio" id="manu_33677" name="tmName" value="典籍">典籍</label>
                <label for="manu_32479" title="索泰"><input type="radio" id="manu_32479" name="tmName" value="索泰">索泰</label>
                <label for="manu_33033" title="现代IT世家"><input type="radio" id="manu_33033" name="tmName" value="现代IT世家">现代IT世家</label>
                <label for="manu_34201" title="富登"><input type="radio" id="manu_34201" name="tmName" value="富登">富登</label>
                <label for="manu_34264" title="万顺达"><input type="radio" id="manu_34264" name="tmName" value="万顺达">万顺达</label>
                <label for="manu_36595" title="联想扬天"><input type="radio" id="manu_36595" name="tmName" value="联想扬天">联想扬天</label>
                <label for="manu_407" title="明基"><input type="radio" id="manu_407" name="tmName" value="明基">明基</label>
                <label for="manu_813" title="Gateway"><input type="radio" id="manu_813" name="tmName" value="Gateway">Gateway</label>
                <label for="manu_833" title="多彩"><input type="radio" id="manu_833" name="tmName" value="多彩">多彩</label>
                <label for="manu_34946" title="Wbin"><input type="radio" id="manu_34946" name="tmName" value="Wbin">Wbin</label>
                <label for="manu_34842" title="DCMOFA"><input type="radio" id="manu_34842" name="tmName" value="DCMOFA">DCMOFA</label>
                <label for="manu_34681" title="神酷"><input type="radio" id="manu_34681" name="tmName" value="神酷">神酷</label>
                <label for="manu_974" title="新蓝"><input type="radio" id="manu_974" name="tmName" value="新蓝">新蓝</label>
                <label for="manu_33046" title="eMachines"><input type="radio" id="manu_33046" name="tmName" value="eMachines">eMachines</label>
                <label for="manu_970" title="台电"><input type="radio" id="manu_970" name="tmName" value="台电">台电</label>
                <label for="manu_33057" title="HD Computer"><input type="radio" id="manu_33057" name="tmName" value="HD Computer">HD Computer</label>
                <label for="manu_33168" title="COYOB"><input type="radio" id="manu_33168" name="tmName" value="COYOB">COYOB</label>
                <label for="manu_33141" title="磐正Q-Mi"><input type="radio" id="manu_33141" name="tmName" value="磐正Q-Mi">磐正Q-Mi</label>
                <label for="manu_1071" title="万利达"><input type="radio" id="manu_1071" name="tmName" value="万利达">万利达</label>
                <label for="manu_33967" title="索华"><input type="radio" name="tmName" id="manu_33967" value="索华">索华</label>
                <label for="manu_413" title="七彩虹"><input type="radio" id="manu_413" name="tmName" value="七彩虹">七彩虹</label>
                <label for="manu_33922" title="天玑"><input type="radio" id="manu_33922" name="tmName" value="天玑">天玑</label>
                <label for="manu_34002" title="ESER宇朔"><input type="radio" id="manu_34002" name="tmName" value=">ESER宇朔">ESER宇朔</label>
                <label for="manu_33290" title="睿逸"><input type="radio" id="manu_33290" name="tmName" value="睿逸">睿逸</label>
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
            <dd><input type="date" name="publishTime" id="datepicker1"></dd>
        </dl>

        <dl>
            <dt>产品类型</dt>
            <dd>
            <dd>
                <label for="param_5900" title="商用"><input type="radio" id="param_5900" name="pType"
                                                          value="商用">商用</label>
                <label for="param_5901" title="家用"><input type="radio" id="param_5901" name="pType"
                                                          value="家用">家用</label>
            </dd>
            </dd>
        </dl>

        <dl>
            <dt>产品定位</dt>
            <dd>
                <label for="param_1227" title="游戏本"><input type="radio" id="param_1227" name="pPosition" value="游戏本">游戏本</label>
                <label for="param_2393" title="二合一笔记本"><input type="radio" id="param_2393" name="pPosition"
                                                              value="二合一笔记本">二合一笔记本</label>
                <label for="param_1229" title="轻薄笔记本"><input type="radio" id="param_1229" name="pPosition"
                                                             value="轻薄笔记本">轻薄笔记本</label>
                <label for="param_1226" title="商务办公本"><input type="radio" id="param_1226" name="pPosition"
                                                             value="商务办公本">商务办公本</label>
                <label for="param_3599" title="影音娱乐本"><input type="radio" id="param_3599" name="pPosition"
                                                             value="影音娱乐本">影音娱乐本</label>
                <label for="param_1224" title="校园学生本"><input type="radio" id="param_1224" name="pPosition"
                                                             value="校园学生本">校园学生本</label>
            </dd>
        </dl>

        <dl>
            <dt>操作系统</dt>
            <dd>
                <label for="param_6313" title="Windows 10"><input type="radio" id="param_6313" name="pOS"
                                                                  value="Windows 10" checked>Windows 10</label>
                <label for="param_5218" title="Windows 8/8.1"><input type="radio" id="param_5218" name="pOS"
                                                                     value="Windows 8/8.1">Windows 8/8.1</label>
                <label for="param_6580" title="Windows 7"><input type="radio" id="param_6580" name="pOS"
                                                                 value="Windows 7">Windows 7</label>
                <label for="param_2411" title="DOS/Linux"><input type="radio" id="param_2411" name="pOS"
                                                                 value="DOS/Linux">DOS/Linux</label>
                <label for="param_2413" title="Mac OS苹果系统"><input type="radio" id="param_2413" name="pOS"
                                                                  value="Mac OS苹果系统">Mac OS苹果系统</label>
                <label for="param_5529" title="Google Chrome OS"><input type="radio" id="param_5529" name="pOS"
                                                                        value="Google Chrome OS">Google Chrome
                    OS</label>
            </dd>
        </dl>

        <dl>
            <dt>主板芯片组</dt>
            <dd>
                <input type="text" name="pChipset"></dd>
        </dl>
        <%--基本参数--%>

        <%--显示屏--%>
        <dl>
            <dt>触控支持</dt>
            <dd>
                <label for="touch_1" title="不支持触控"><input type="radio" id="touch_1" name="pTouch" value="0" checked>不支持触控</label>
                <label for="touch_0" title="支持触控"><input type="radio" id="touch_0" name="pTouch" value="1">支持触控</label>
            </dd>
        </dl>

        <dl>
            <dt>屏幕尺寸
                <small>(英寸)</small>
            </dt>
            <dd>
                <label><input type="number" name="pScreenSize">英寸</label>
            </dd>
        </dl>

        <dl>
            <dt>屏幕分辨率</dt>
            <dd>
                <label><input type="number" name="pScreenResolution1">*<input type="number"
                                                                              name="pScreenResolution2"></label>
            </dd>
        </dl>

        <dl>
            <dt>屏幕技术</dt>
            <dd>
                <label for="param_5227" title="LED背光"><input type="radio" id="param_5227" name="pTechnology"
                                                             value="LED背光">LED背光</label>
                <label for="param_4316" title="IPS显示屏"><input type="radio" id="param_4316" name="pTechnology"
                                                              value="IPS显示屏">IPS显示屏</label>
                <label for="param_4317" title="视网膜显示屏"><input type="radio" id="param_4317" name="pTechnology"
                                                              value="视网膜显示屏">视网膜显示屏</label>
                <label for="param_6652" title="防炫目屏"><input type="radio" id="param_6652" name="pTechnology"
                                                            value="防炫目屏">防炫目屏</label>
                <label for="param_6592" title="窄边框"><input type="radio" id="param_6592" name="pTechnology" value="窄边框">窄边框</label>
            </dd>
        </dl>
        <%--显示屏--%>

        <%--多媒体设备--%>
        <dl>
            <dt>摄像头</dt>
            <dd>
                <label for="param_6463" title="双摄像头"><input type="radio" id="param_6463" name="pCamera" value="双摄像头">双摄像头</label>
                <label for="param_6462" title="实感3D摄像头"><input type="radio" id="param_6462" name="pCamera"
                                                               value="实感3D摄像头">实感3D摄像头</label>
                <label for="param_5107" title="720p HD摄像头"><input type="radio" id="param_5107" name="pCamera"
                                                                  value="720p HD摄像头">720p HD摄像头</label>
                <label for="param_2750" title="集成摄像头"><input type="radio" id="param_2750" name="pCamera" value="集成摄像头">集成摄像头</label>
            </dd>
        </dl>

        <dl>
            <dt>音频系统</dt>
            <dd>
                <label><input type="text" name="pAudio"></label>
            </dd>
        </dl>

        <dl>
            <dt>扬声器</dt>
            <dd><label><input type="text" name="pSpeaker"></label>
            </dd>
        </dl>

        <dl>
            <dt>麦克风</dt>
            <dd>
                <label><input type="text" name="pMike"></label>
            </dd>
        </dl>
        <%--多媒体设备--%>

        <%--网络通信--%>
        <dl>
            <dt>无线网卡</dt>
            <dd>
                <label><input type="text" name="pWlan"></label>

            </dd>
        </dl>

        <dl>
            <dt>有线网卡</dt>
            <dd>
                <label><input type="text" name="pLan"></label>
            </dd>
        </dl>

        <dl>
            <dt>蓝牙</dt>
            <dd>
                <label for="Bluetooth5.0" title="蓝牙5.0"><input type="radio" id="Bluetooth5.0" name="pBluetooth"
                                                               value="蓝牙5.0">蓝牙5.0</label>
                <label for="Bluetooth4.2" title="蓝牙4.2"><input type="radio" id="Bluetooth4.2" name="pBluetooth"
                                                               value="蓝牙4.2">蓝牙4.2</label>
                <label for="Bluetooth4.1" title="蓝牙4.1"><input type="radio" id="Bluetooth4.1" name="pBluetooth"
                                                               value="蓝牙4.1">蓝牙4.1</label>
                <label for="Bluetooth4.0" title="蓝牙4.0"><input type="radio" id="Bluetooth4.0" name="pBluetooth"
                                                               value="蓝牙4.0">蓝牙4.0</label>
                <label for="Bluetooth3.0" title="蓝牙5.0"><input type="radio" id="Bluetooth3.0" name="pBluetooth"
                                                               value="蓝牙3.0">蓝牙3.0</label>
                <label for="Bluetooth2.1" title="蓝牙5.0"><input type="radio" id="Bluetooth2.1" name="pBluetooth"
                                                               value="蓝牙2.1">蓝牙2.1</label>
                <label for="Bluetooth2.0" title="蓝牙5.0"><input type="radio" id="Bluetooth2.0" name="pBluetooth"
                                                               value="蓝牙2.0">蓝牙2.0</label>
                <label for="Bluetooth1.2" title="蓝牙5.0"><input type="radio" id="Bluetooth1.2" name="pBluetooth"
                                                               value="蓝牙1.2">蓝牙1.2</label>
                <label for="Bluetooth1.0" title="蓝牙5.0"><input type="radio" id="Bluetooth1.0" name="pBluetooth"
                                                               value="蓝牙1.0">蓝牙1.0</label>

            </dd>
        </dl>
        <%--网络通信--%>

        <%--I/O接口--%>
        <dl>
            <dt>数据接口</dt>
            <dd>
                <label><input type="text" name="pDataInterface"></label>
            </dd>
        </dl>

        <dl>
            <dt>音频接口</dt>
            <dd>
                <label><input type="text" name="pAudioInterface"></label>
            </dd>
        </dl>

        <dl>
            <dt>视频接口</dt>
            <dd>
                <label><input type="text" name="pVideoInterface"></label>
            </dd>
        </dl>

        <dl>
            <dt>其他接口</dt>
            <dd>
                <label><input type="text" name="pOtherInterface"></label>
            </dd>
        </dl>
        <%--I/O接口--%>

        <%--输入设备--%>
        <dl>
            <dt>指取设备</dt>
            <dd>
                <label><input type="text" name="pFingerEquipment"></label>
            </dd>
        </dl>

        <dl>
            <dt>键盘描述</dt>
            <dd>
                <label><input type="text" name="pKeyboard"></label>
            </dd>
        </dl>

        <dl>
            <dt>指纹识别</dt>
            <dd>
                <label for="pFI1" title="指纹识别"><input type="radio" id="pFI1" name="pFingerprintIdentific" value="1">支持指纹识别</label>
                <label for="pFI2" title="指纹识别"><input type="radio" id="pFI2" name="ppFingerprintIdentific" value="0">不支持指纹识别</label>
            </dd>
        </dl>
        <%--输入设备--%>

        <%--电源描述--%>
        <dl>
            <dt>电池类型</dt>
            <dd>
                <label><input type="text" name="pBatteryType" ></label>
            </dd>
        </dl>

        <dl>
            <dt>续航时间</dt>
            <dd>
                <label><input type="number" name="pDuration" >小时</label>
            </dd>
        </dl>

        <dl>
            <dt>电源适配器</dt>
            <dd>
                <label><input type="text" name="pPowerAdapter" ></label>
            </dd>
        </dl>
        <%--电源描述--%>

        <%--外观--%>
        <dl>
            <dt>笔记本重量
                <small>(kg)</small>
            </dt>
            <dd>
                <label><input type="number" name="pWeight" ></label>
            </dd>
        </dl>

        <dl>
            <dt>长度
                <small>(mm)</small>
            </dt>
            <dd>
                <label><input type="number" name="pLengh" ></label>
            </dd>
        </dl>

        <dl>
            <dt>宽度
                <small>(mm)</small>
            </dt>
            <dd>
                <label><input type="number" name="pWidth" ></label>
            </dd>
        </dl>

        <dl>
            <dt>厚度
                <small>(mm)</small>
            </dt>
            <dd>
                <label><input type="number" name="pThickness" ></label>
            </dd>
        </dl>

        <dl>
            <dt>外壳材质</dt>
            <dd>
                <label for="param_4707" title="镁铝合金"><input type="radio" id="param_4707" name="pShellMaterial" value="铝镁合金">镁铝合金</label>
                <label for="param_4708" title="碳纤维"><input type="radio" id="param_4708" name="pShellMaterial" value="碳纤维">碳纤维</label>
                <label for="param_4709" title="玻璃纤维"><input type="radio" id="param_4709" name="pShellMaterial" value="玻璃纤维">玻璃纤维</label>
            </dd>
        </dl>

        <dl>
            <dt>外壳描述</dt>
            <dd>
                <label><input type="text" name="pSheelDescription" ></label>
            </dd>
        </dl>
        <%--外观--%>

        <%--其他--%>
        <dl>
            <dt>安全性能</dt>
            <dd>
                <label><input type="text" name="pSafety" ></label>
            </dd>
        </dl>

        <dl>
            <dt>散热系统</dt>
            <dd>
                <label><input type="text" name="pDissipation" ></label>

            </dd>
        </dl>

        <dl>
            <dt>附带软件</dt>
            <dd>
                <label><input type="text" name="pSoftware" ></label>

            </dd>
        </dl>
        <%--其他--%>

        <%--笔记本附件--%>
        <dl>
            <dt>包装清单</dt>
            <dd>
                <label><input type="text" name="pPackageList" ></label>

            </dd>
        </dl>
        <%--笔记本附件--%>

        <%--保修信息--%>
        <dl>
            <dt>保修政策</dt>
            <dd>
                <label for="pGuarantee1"><input type="radio" name="pGuarantee" id="pGuarantee1" value="全国联保，享受三包服务" checked>全国联保，享受三包服务</label>
                <label for="pGuarantee2"><input type="radio" name="pGuarantee" id="pGuarantee2" value="全球联保">全球联保</label>
            </dd>
        </dl>

        <dl>
            <dt>质保时间</dt>
            <dd>
                <label><input type="number" name="pWarranty" >年</label>
            </dd>
        </dl>

        <dl>
            <dt>质保备注</dt>
            <dd>
                <label><input type="text" name="pWarrantyRemark" ></label>
            </dd>
        </dl>

        <dl>
            <dt>客服电话</dt>
            <dd>
                <label><input type="tel" name="pTel" ></label>
            </dd>
        </dl>

        <dl>
            <dt>电话备注</dt>
            <dd>
                <label><input type="text" name="pTelRemark" ></label>
            </dd>
        </dl>

        <dl>
            <dt>详细内容</dt>
            <dd>
                <label><input type="text" name="pDetail" ></label>
            </dd>
        </dl>
        <%--保修信息--%>

        <%--处理器--%>
        <dl>
            <dt>CPU型号</dt>
            <dd>
                <label for="param_8136" title="酷睿i9 9880H"><input type="radio" id="param_8136" name="CPU" value="酷睿i9 9880H">酷睿i9 9880H</label>
                <label for="param_8135" title="酷睿i9 9980HK"><input type="radio" id="param_8135" name="CPU" value="酷睿i9 9980HK">酷睿i9 9980HK</label>
                <label for="param_7927" title="酷睿i9 9900K"><input type="radio" id="param_7927" name="CPU" value="酷睿i9 9900K">酷睿i9 9900K</label>
                <label for="param_8071" title="酷睿i7 9750H"><input type="radio" id="param_8071" name="CPU" value="酷睿i7 9750H">酷睿i7 9750H</label>
                <label for="param_8073" title="酷睿i5 9300H"><input type="radio" id="param_8073" name="CPU" value="酷睿i5 9300H">酷睿i5 9300H</label>
                <label for="param_8072" title="酷睿i5 9400"><input type="radio" id="param_8072" name="CPU" value="酷睿i5 9400">酷睿i5 9400</label>
                <label for="param_7926" title="酷睿i7 9700K"><input type="radio" id="param_7926" name="CPU" value="酷睿i7 9700K">酷睿i7 9700K</label>
                <label for="param_7925" title="酷睿i5 9600K"><input type="radio" id="param_7925" name="CPU" value="酷睿i5 9600K">酷睿i5 9600K</label>
                <label for="param_7842" title="酷睿i7 8565U"><input type="radio" id="param_7842" name="CPU" value="酷睿i7 8565U">酷睿i7 8565U</label>
                <label for="param_7841" title="酷睿i5 8265U"><input type="radio" id="param_7841" name="CPU" value="酷睿i5 8265U">酷睿i5 8265U</label>
                <label for="param_7843" title="酷睿i3 8145U"><input type="radio" id="param_7843" name="CPU" value="酷睿i3 8145U">酷睿i3 8145U</label>
                <label for="param_7642" title="酷睿i9 8950HK"><input type="radio" id="param_7642" name="CPU" value="酷睿i9 8950HK">酷睿i9 8950HK</label>
                <label for="param_7641" title="酷睿i7 8750H"><input type="radio" id="param_7641" name="CPU" value="酷睿i7 8750H">酷睿i7 8750H</label>
                <label for="param_7354" title="酷睿i7 8550U"><input type="radio" id="param_7354" name="CPU" value="酷睿i7 8550U">酷睿i7 8550U</label>
                <label for="param_7644" title="酷睿i5 8300H"><input type="radio" id="param_7644" name="CPU" value="酷睿i5 8300H">酷睿i5 8300H</label>
                <label for="param_7701" title="酷睿i3 8100"><input type="radio" id="param_7701" name="CPU" value="酷睿i3 8100">酷睿i3 8100</label>
                <label for="param_7350" title="酷睿i5 8250U"><input type="radio" id="param_7350" name="CPU" value="酷睿i5 8250U">酷睿i5 8250U</label>
                <label for="param_7294" title="酷睿i7 7820HK"><input type="radio" id="param_7294" name="CPU" value="酷睿i7 7820HK">酷睿i7 7820HK</label>
                <label for="param_7293" title="酷睿i7 7700HQ"><input type="radio" id="param_7293" name="CPU" value="酷睿i7 7700HQ">酷睿i7 7700HQ</label>
                <label for="param_7292" title="酷睿i5 7300HQ"><input type="radio" id="param_7292" name="CPU" value="酷睿i5 7300HQ">酷睿i5 7300HQ</label>
                <label for="param_6992" title="酷睿i7 7500U"><input type="radio" id="param_6992" name="CPU" value="酷睿i7 7500U">酷睿i7 7500U</label>
                <label for="param_6991" title="酷睿i5 7200U"><input type="radio" id="param_6991" name="CPU" value="酷睿i5 7200U">酷睿i5 7200U</label>
                <label for="param_6330" title="酷睿i7 6820HK"><input type="radio" id="param_6330" name="CPU" value="酷睿i7 6820HK">酷睿i7 6820HK</label>
                <label for="param_6614" title="酷睿i7 6700K"><input type="radio" id="param_6614" name="CPU" value="酷睿i7 6700K">酷睿i7 6700K</label>
                <label for="param_6435" title="酷睿i7 6700HQ"><input type="radio" id="param_6435" name="CPU" value="酷睿i7 6700HQ">酷睿i7 6700HQ</label>
                <label for="param_6613" title="酷睿i7 6600U"><input type="radio" id="param_6613" name="CPU" value="酷睿i7 6600U">酷睿i7 6600U</label>
                <label for="param_6612" title="酷睿i7 6560U"><input type="radio" id="param_6612" name="CPU" value="酷睿i7 6560U">酷睿i7 6560U</label>
                <label for="param_6326" title="酷睿i7 6500U"><input type="radio" id="param_6326" name="CPU" value="酷睿i7 6500U">酷睿i7 6500U</label>
                <label for="param_6436" title="酷睿i5 6300HQ"><input type="radio" id="param_6436" name="CPU" value="酷睿i5 6300HQ">酷睿i5 6300HQ</label>
                <label for="param_6611" title="酷睿i5 6300U"><input type="radio" id="param_6611" name="CPU" value="酷睿i5 6300U">酷睿i5 6300U</label>
                <label for="param_6325" title="酷睿i5 6200U"><input type="radio" id="param_6325" name="CPU" value="酷睿i5 6200U">酷睿i5 6200U</label>
                <label for="param_6610" title="酷睿i3 6100U"><input type="radio" id="param_6610" name="CPU" value="酷睿i3 6100U">酷睿i3 6100U</label>
                <label for="param_6298" title="酷睿i7 5700HQ"><input type="radio" id="param_6298" name="CPU" value="酷睿i7 5700HQ">酷睿i7 5700HQ</label>
                <label for="param_6300" title="酷睿i7 5600U"><input type="radio" id="param_6300" name="CPU" value="酷睿i7 5600U">酷睿i7 5600U</label>
                <label for="param_6303" title="酷睿i7 5500U"><input type="radio" id="param_6303" name="CPU" value="酷睿i7 5500U">酷睿i7 5500U</label>
                <label for="param_6295" title="酷睿i5 5300U"><input type="radio" id="param_6295" name="CPU" value="酷睿i5 5300U">酷睿i5 5300U</label>
                <label for="param_6294" title="酷睿i5 5200U"><input type="radio" id="param_6294" name="CPU" value="酷睿i5 5200U">酷睿i5 5200U</label>
                <label for="param_6287" title="酷睿i3 5010U"><input type="radio" id="param_6287" name="CPU" value="酷睿i3 5010U">酷睿i3 5010U</label>
                <label for="param_6286" title="酷睿i3 5005U"><input type="radio" id="param_6286" name="CPU" value="酷睿i3 5005U">酷睿i3 5005U</label>
                <label for="param_5056" title="酷睿i3 4005U"><input type="radio" id="param_5056" name="CPU" value="酷睿i3 4005U">酷睿i3 4005U</label>
                <label for="param_5587" title="酷睿i3 4030U"><input type="radio" id="param_5587" name="CPU" value="酷睿i3 4030U">酷睿i3 4030U</label>
                <label for="param_5667" title="酷睿i5 4210M"><input type="radio" id="param_5667" name="CPU" value="酷睿i5 4210M">酷睿i5 4210M</label>
                <label for="param_4721" title="酷睿i5 4200U"><input type="radio" id="param_4721" name="CPU" value="酷睿i5 4200U">酷睿i5 4200U</label>
                <label for="param_5589" title="酷睿i5 4210U"><input type="radio" id="param_5589" name="CPU" value="酷睿i5 4210U">酷睿i5 4210U</label>
                <label for="param_6609" title="酷睿i7 4510U"><input type="radio" id="param_6609" name="CPU" value="酷睿i7 4510U">酷睿i7 4510U</label>
                <label for="param_5596" title="酷睿i7 4710MQ"><input type="radio" id="param_5596" name="CPU" value="酷睿i7 4710MQ">酷睿i7 4710MQ</label>
                <label for="param_5776" title="酷睿i7 4710HQ"><input type="radio" id="param_5776" name="CPU" value="酷睿i7 4710HQ">酷睿i7 4710HQ</label>
                <label for="param_6607" title="酷睿M7 6Y75"><input type="radio" id="param_6607" name="CPU" value="酷睿M7 6Y75">酷睿M7 6Y75</label>
                <label for="param_6606" title="酷睿M5 6Y57"><input type="radio" id="param_6606" name="CPU" value="酷睿M5 6Y57">酷睿M5 6Y57</label>
                <label for="param_6605" title="酷睿M5 6Y54"><input type="radio" id="param_6605" name="CPU" value="酷睿M5 6Y54">酷睿M5 6Y54</label>
                <label for="param_6604" title="酷睿M3 6Y30"><input type="radio" id="param_6604" name="CPU" value="酷睿M3 6Y30">酷睿M3 6Y30</label>
                <label for="param_6603" title="酷睿M 5Y71"><input type="radio" id="param_6603" name="CPU" value="酷睿M 5Y71">酷睿M 5Y71</label>
                <label for="param_6602" title="酷睿M 5Y51"><input type="radio" id="param_6602" name="CPU" value="酷睿M 5Y51">酷睿M 5Y51</label>
                <label for="param_6601" title="酷睿M 5Y10"><input type="radio" id="param_6601" name="CPU" value="睿M 5Y10">酷睿M 5Y10</label>
                <label for="param_6439" title="奔腾四核 N3700"><input type="radio" id="param_6439" name="CPU" value="奔腾四核 N3700">奔腾四核 N3700</label>
                <label for="param_6438" title="奔腾四核 N3540"><input type="radio" id="param_6438" name="CPU" value="奔腾四核 N3540">奔腾四核 N3540</label>
                <label for="param_5624" title="奔腾双核 3558U"><input type="radio" id="param_5624" name="CPU" value="腾双核 3558U">奔腾双核 3558U</label>
                <label for="param_6440" title="赛扬双核 N3050"><input type="radio" id="param_6440" name="CPU" value="赛扬双核 N3050">赛扬双核 N3050</label>
                <label for="param_6442" title="赛扬双核 N2840"><input type="radio" id="param_6442" name="CPU" value="赛扬双核 N2840">赛扬双核 N2840</label>
                <label for="param_6441" title="赛扬双核 3205U"><input type="radio" id="param_6441" name="CPU" value="赛扬双核 3205U">赛扬双核 3205U</label>
                <label for="param_6444" title="赛扬四核 N3150"><input type="radio" id="param_6444" name="CPU" value="赛扬四核 N3150">赛扬四核 N3150</label>
                <label for="param_6443" title="赛扬四核 N2940"><input type="radio" id="param_6443" name="CPU" value="扬四核 N2940">赛扬四核 N2940</label>
                <label for="param_6600" title="Atom Z8300"><input type="radio" id="param_6600" name="CPU" value="Atom Z8300">Atom Z8300</label>

                <%--=========================================================================--%>
                <label for="param_6599" title="Atom Z3735F"><input type="radio" id="param_6599"
                                                                   value="Atom Z3735F">Atom
                    Z3735F</label>
                <label for="param_8082" title="Ryzen 7-3750H"><input type="radio" id="param_8082"
                                                                     value="Ryzen 7-3750H">Ryzen
                    7-3750H</label>
                <label for="param_8081" title="Ryzen 5 3500U"><input type="radio" id="param_8081"
                                                                     value="Ryzen 5 3500U">Ryzen 5
                    3500U</label>
                <label for="param_8080" title="Ryzen 5-3550H"><input type="radio" id="param_8080"
                                                                     value="Ryzen 5-3550H">Ryzen
                    5-3550H</label>
                <label for="param_7767" title="Ryzen 7 2700U"><input type="radio" id="param_7767"
                                                                     value="Ryzen 7 2700U">Ryzen 7
                    2700U</label>
                <label for="param_7766" title="Ryzen 5 2500U"><input type="radio" id="param_7766"
                                                                     value="Ryzen 5 2500U">Ryzen 5
                    2500U</label>
                <label for="param_7768" title="Ryzen 3 2300U"><input type="radio" id="param_7768"
                                                                     value="Ryzen 3 2300U">Ryzen 3
                    2300U</label>
                <label for="param_7769" title="Ryzen 7 1700"><input type="radio" id="param_7769"
                                                                    value="Ryzen 7 1700">Ryzen 7
                    1700</label>
                <label for="param_6454" title="A10-8700P"><input type="radio" id="param_6454"
                                                                 value="A10-8700P">A10-8700P</label>
                <label for="param_5533" title="A10-7300"><input type="radio" id="param_5533"
                                                                value="A10-7300">A10-7300</label>
                <label for="param_6598" title="A8-8600P"><input type="radio" id="param_6598"
                                                                value="A8-8600P">A8-8600P</label>
                <label for="param_6597" title="A8-7410"><input type="radio" id="param_6597"
                                                               value="A8-7410">A8-7410</label>
                <label for="param_5787" title="A8-7100"><input type="radio" id="param_5787"
                                                               value="A8-7100">A8-7100</label>
                <label for="param_5788" title="A8-6410"><input type="radio" id="param_5788"
                                                               value="sA8-6410">A8-6410</label>
                <label for="param_6596" title="A6-7310"><input type="radio" id="param_6596"
                                                               value="A6-7310">A6-7310</label>
                <label for="param_5786" title="A6-6310"><input type="radio" id="param_5786"
                                                               value="A6-6310">A6-6310</label>
                <label for="param_6595" title="A4-7210"><input type="radio" id="param_6595"
                                                               value=">A4-7210">A4-7210</label>
                <label for="param_6594" title="A4-6210"><input type="radio" id="param_6594"
                                                               value="A4-6210">A4-6210</label>
                <label for="param_6593" title="FX-8800P"><input type="radio" id="param_6593"
                                                                value="FX-8800P">FX-8800P</label>
                <label for="param_5793" title="E2-6110"><input type="radio" id="param_5793"
                                                               value="E2-6110">E2-6110</label>
                <label for="param_5792" title="E1-6010"><input type="radio" id="param_5792"
                                                               value="E1-6010">E1-6010</label>
        </dl>

        <dl>
            <dt>CPU主频</dt>
            <dd>
                <label><input type="number" name="pCPUHZ" ></label>
            </dd>
        </dl>

        <dl>
            <dt>最高睿频</dt>
            <dd>
                <label><input type="number" name="pCPUMHZ" ></label>
            </dd>
        </dl>

        <dl>
            <dt>核心/线程数</dt>
            <dd>
<%--                <label for=""><input type="radio" name="" id="" value="">二核心二线程</label>
                <label for=""><input type="radio" name="" id="" value="">二核心四线程</label>
                <label for=""><input type="radio" name="" id="" value="">四核心四线程</label>
                <label for=""><input type="radio" name="" id="" value="">四核心八线程</label>
                <label for=""><input type="radio" name="" id="" value="">六核心六线程</label>
                <label for=""><input type="radio" name="" id="" value="">六核心十二线程</label>--%>

                    <label><input type="number" name="pCPUAcount" >核心   <input type="number" name="pThread" >线程</label>

            </dd>
        </dl>


        <dl>
            <dt>三级缓存</dt>
            <dd>
                <label><input type="number" name="pCache" ></label>
            </dd>
        </dl>

        <dl>
            <dt>总线规格</dt>
            <dd>
                <label><input type="number" name="pBus" ></label>
            </dd>
        </dl>

        <dl>
            <dt>核心架构</dt>
            <dd>
                <label for="param_7840" title="Whiskey Lake"><input type="radio" id="param_7840" name="pStructure" value="Whiskey Lake">Whiskey Lake</label>
                <label for="param_7512" title="Coffee Lake"><input type="radio" id="param_7512" name="pStructure" value="Coffee Lake">Coffee Lake</label>
                <label for="param_7352" title="Kaby Lake R"><input type="radio" id="param_7352" name="pStructure" value="Kaby Lake R">Kaby Lake R</label>
                <label for="param_7351" title="Kaby Lake"><input type="radio" id="param_7351" name="pStructure" value="Kaby Lake">Kaby Lake</label>
                <label for="param_6329" title="Skylake"><input type="radio" id="param_6329" name="pStructure" value="Skylake">Skylake</label>
                <label for="param_6572" title="Cherry Trail"><input type="radio" id="param_6572" name="pStructure" value="Cherry Trail">Cherry Trail</label>
                <label for="param_6317" title="Broadwell"><input type="radio" id="param_6317" name="pStructure" value="Broadwell">Broadwell</label>
                <label for="param_6328" title="Braswell"><input type="radio" id="param_6328" name="pStructure" value="Braswell">Braswell</label>
                <label for="param_4697" title="Haswell"><input type="radio" id="param_4697" name="pStructure" value="Haswell">Haswell</label>
                <label for="param_5561" title="Bay Trail"><input type="radio" id="param_5561" name="pStructure" value="Bay Trail">Bay Trail</label>
                <label for="param_4290" title="Ivy Bridge"><input type="radio" id="param_4290" name="pStructure" value="Ivy Bridge">Ivy Bridge</label>
                <label for="param_6573" title="Sandy Bridge"><input type="radio" id="param_6573" name="pStructure" value="Sandy Bridge">Sandy Bridge</label>
            </dd>
        </dl>

        <dl>
            <dt>制程工艺<small>(nm)</small></dt>
            <dd>
                <label><input type="number" name="pCraft" ></label>

            </dd>
        </dl>

        <dl>
            <dt>功耗<small>(W)</small></dt>
            <dd>
                <label><input type="number" name="pConsumption" ></label>
            </dd>
        </dl>
        <%--处理器--%>

        <%--存储设备--%>
        <dl>
            <dt>内存容量</dt>
            <dd>
                <label for="param_6648" title="32GB"><input type="radio" id="param_6648" name="pRAM" value="32">32GB</label>
                <label for="param_5730" title="16GB"><input type="radio" id="param_5730" name="pRAM" value="16">16GB</label>
                <label for="param_4108" title="8GB"><input type="radio" id="param_4108" name="pRAM" value="8">8GB</label>
                <label for="param_2192" title="4GB"><input type="radio" id="param_2192" name="pRAM" value="4">4GB</label>
                <label for="param_108" title="2GB"><input type="radio" id="param_108" name="pRAM" value="2">2GB</label>
            </dd>
        </dl>

        <dl>
            <dt>内存类型</dt>
            <dd>
                <label for="param_6506" title="DDR4"><input type="radio" id="param_6506" name="pRAMType" value="DDR4">DDR4</label>
                <label for="param_6503" title="DDR3"><input type="radio" id="param_6503" name="pRAMType" value="DDR3">DDR3</label>
                <label for="param_6504" title="DDR3L"><input type="radio" id="param_6504" name="pRAMType" value="DDR3L">DDR3L</label>
                <label for="param_6616" title="LPDDR3"><input type="radio" id="param_6616" name="pRAMType" value="LPDDR3">LPDDR3</label>
            </dd>
        </dl>

        <dl>
            <dt>固态硬盘容量</dt>
            <dd>
                <label for="pSSD64"><input type="radio" name="pSSD" id="pSSD64" value="64">64G</label>
                <label for="pSSD128"><input type="radio" name="pSSD" id="pSSD128" value="128">128G</label>
                <label for="pSSD256"><input type="radio" name="pSSD" id="pSSD256" value="256">256G</label>
                <label for="pSSD512"><input type="radio" name="pSSD" id="pSSD512" value="512">512G</label>
                <label for="pSSD1"><input type="radio" name="pSSD" id="pSSD1" value="1">1T</label>
                <label for="pSSD2"><input type="radio" name="pSSD" id="pSSD2" value="2">2T</label>

            </dd>
        </dl>

        <dl>
            <dt>机械硬盘容量</dt>
            <dd>
                <label for="pDisk64"><input type="radio" name="pDisk" id="pDisk64" value="64">64G</label>
                <label for="pDisk128"><input type="radio" name="pDisk" id="pDisk128" value="128">128G</label>
                <label for="pDisk256"><input type="radio" name="pDisk" id="pDisk256" value="256">256G</label>
                <label for="pDisk512"><input type="radio" name="pDisk" id="pDisk512" value="512">512G</label>
                <label for="pDisk1"><input type="radio" name="pDisk" id="pDisk1" value="1">1T</label>
                <label for="pDisk2"><input type="radio" name="pDisk" id="pDisk2" value="2">2T</label>
            </dd>
        </dl>

        <dl>
            <dt>硬盘描述</dt>
            <dd>
                <label><input type="text" name="pROMDescription" ></label>
            </dd>
        </dl>

        <dl>
            <dt>光驱类型</dt>
            <dd>
                <label for="param_6240" title="内置DVD刻录机"><input type="radio" id="param_6240" name="pCD" value="内置DVD刻录机">内置DVD刻录机</label>
                <label for="param_9553" title="内置蓝光光驱"><input type="radio" id="param_9553" name="pCD" value="内置蓝光光驱">内置蓝光光驱</label>
                <label for="param_25343" title="可选外置光驱"><input type="radio" id="param_25343" name="pCD" value="可选外置光驱">可选外置光驱</label>
                <label for="param_14692" title="无内置光驱"><input type="radio" id="param_14692" name="pCD" value="无内置光驱">无内置光驱</label>
            </dd>
        </dl>
        <%--存储设备--%>

        <%--显卡--%>
        <dl>
            <dt>显卡类型</dt>
            <dd>
                <label for="param_5065" title="发烧级显卡"><input type="radio" id="param_5065" name="pGPUType" value="发烧级显卡">发烧级显卡</label>
                <label for="param_5064" title="性能级显卡"><input type="radio" id="param_5064" name="pGPUType" value="性能级显卡">性能级显卡</label>
                <label for="param_2111" title="入门级显卡"><input type="radio" id="param_2111" name="pGPUType" value="入门级显卡">入门级显卡</label>
                <label for="param_5066" title="专业级图形显卡"><input type="radio" id="param_5066" name="pGPUType" value="专业级图形显卡">专业级图形显卡</label>
                <label for="param_1951" title="双显卡"><input type="radio" id="param_1951" name="pGPUType" value="双显卡">双显卡</label>
                <label for="param_1256" title="核心显卡"><input type="radio" id="param_1256" name="pGPUType" value="核心显卡">核心显卡</label>
            </dd>
        </dl>


        <dl>
            <dt>显卡芯片</dt>
            <dd>
                <%--<label for="param_2631" title="NVIDIA显卡"><input type="radio" id="param_2631" name="pGPUName" value="NVIDIA显卡">NVIDIA显卡</label>--%>
                <%--<label for="param_8075" title="GTX16系列"><input type="radio" id="param_8075" name="pGPUName" value="GTX16系列">GTX16系列</label>--%>
                <label for="param_8076" title="GTX 1660Ti"><input type="radio" id="param_8076" name="pGPUName" value="GTX 1660Ti">GTX1660Ti</label>
                <%--<label for="param_8077" title="GTX 1650"><input type="radio" id="param_8077" name="pGPUName" value="GTX 1650">GTX 1650</label>--%>
                <label for="param_8027" title="MX200系列"><input type="radio" id="param_8027" name="pGPUName" value="MX200系列">MX200系列</label>
                <label for="param_8028" title="MX250"><input type="radio" id="param_8028" name="pGPUName" value="MX250">MX250</label>
                <label for="param_8029" title="MX230"><input type="radio" id="param_8029" name="pGPUName" value="MX230">MX230</label>
                <%--<label for="param_8001" title="RTX 20系列"><input type="radio" id="param_8001" name="pGPUName" value="RTX 20系列">RTX 20系列</label>--%>
                <label for="param_8002" title="RTX2080"><input type="radio" id="param_8002" name="pGPUName" value="RTX2080">RTX2080</label>
                <label for="param_8003" title="RTX2070"><input type="radio" id="param_8003" name="pGPUName" value="RTX2070">RTX2070</label>
                <label for="param_8004" title="RTX2060"><input type="radio" id="param_8004" name="pGPUName" value="RTX2060">RTX2060</label>
                <%--<label for="param_6967" title="GTX 10系列"><input type="radio" id="param_6967" name="pGPUName" value="s6967">GTX 10系列</label>--%>
                <label for="param_7244" title="GTX1050Ti"><input type="radio" id="param_7244" name="pGPUName" value="GTX1050Ti">GTX1050Ti</label>
                <label for="param_7243" title="GTX1050"><input type="radio" id="param_7243" name="pGPUName" value="GTX1050">GTX1050</label>
                <label for="param_6968" title="GTX1080"><input type="radio" id="param_6968" name="pGPUName" value="GTX1080">GTX1080</label>
                <label for="param_6969" title="GTX1070"><input type="radio" id="param_6969" name="pGPUName" value="GTX1070">GTX1070</label>
                <label for="param_6970" title="GTX1060"><input type="radio" id="param_6970" name="pGPUName" value="GTX1060">GTX1060</label>
                <%--<label for="param_6017" title="GTX 9系列"><input type="radio" id="param_6017" name="pGPUName" value="s6017">GTX 9系列</label>--%>
                <label for="param_6584" title="GTX980/GTX980M"><input type="radio" id="param_6584" name="pGPUName" value="GTX980">GTX980</label>
                <label for="param_6587" title="GTX970M"><input type="radio" id="param_6587" name="pGPUName" value="GTX970M">GTX970M</label>
                <label for="param_7255" title="GTX965M"><input type="radio" id="param_7255" name="pGPUName" value="GTX965M">GTX965M</label>
                <label for="param_6586" title="GTX960M"><input type="radio" id="param_6586" name="pGPUName" value="GTX960M">GTX960M</label>
                <label for="param_6585" title="GTX950M"><input type="radio" id="param_6585" name="pGPUName" value="GTX950M">GTX950M</label>
                <%--<label for="param_5534" title="GTX 8系列"><input type="radio" id="param_5534" name="pGPUName" value="s5534">GTX 8系列</label>--%>
                <%--<label for="param_6310" title="GeForce 9系列"><input type="radio" id="param_6310" name="pGPUName" value="s6310">GeForce 9系列</label>--%>
                <label for="param_6590" title="GeForce 940M"><input type="radio" id="param_6590" name="pGPUName" value="GeForce 940M">GeForce 940M</label>
                <label for="param_6589" title="GeForce 930M"><input type="radio" id="param_6589" name="pGPUName" value="GeForce 930M">GeForce 930M</label>
                <label for="param_6588" title="GeForce 920M"><input type="radio" id="param_6588" name="pGPUName" value="GeForce 920M">GeForce 920M</label>
                <label for="param_5419" title="GeForce 8系列"><input type="radio" id="param_5419" name="pGPUName" value="GeForce 8系列">GeForce 8系列</label>
                <%--<label for="param_4739" title="GT 7系列"><input type="radio" id="param_4739" name="pGPUName" value="s4739">GT 7系列</label>--%>
                <%--<label for="param_4732" title="Quadro NVS系列"><input type="radio" id="param_4732" name="pGPUName" value="s4732">Quadro NVS系列</label>--%>
                <label for="param_7346" title="MX150"><input type="radio" id="param_7346" name="pGPUName" value="MX150">MX150</label>
                <label for="param_7771" title="MX130"><input type="radio" id="param_7771" name="pGPUName" value="MX130">MX130</label>
                <label for="param_2632" title="AMD显卡"><input type="radio" id="param_2632" name="pGPUName" value="AMD显卡">AMD显卡</label>
                <label for="param_7770" title="RX系列"><input type="radio" id="param_7770" name="pGPUName" value="RX系列">RX系列</label>
                <label for="param_6466" title="R9系列"><input type="radio" id="param_6466" name="pGPUName" value="R9系列">R9系列</label>
                <label for="param_6465" title="R7系列"><input type="radio" id="param_6465" name="pGPUName" value="R7系列">R7系列</label>
                <label for="param_6464" title="R5系列"><input type="radio" id="param_6464" name="pGPUName" value="R5系列">R5系列</label>
                <%--<label for="param_4740" title="HD 8000系列"><input type="radio" id="param_4740" name="pGPUName" value="s4740">HD 8000系列</label>--%>
        </dl>

        <dl>
            <dt>显存容量</dt>
            <dd>
                <label for="param_6468" title="8GB"><input type="radio" id="param_6468" name="pGPURAM" value="8">8GB</label>
                <label for="param_6467" title="6GB"><input type="radio" id="param_6467" name="pGPURAM" value="6">6GB</label>
                <label for="param_4109" title="4GB"><input type="radio" id="param_4109" name="pGPURAM" value="4">4GB</label>
                <label for="param_2194" title="3GB"><input type="radio" id="param_2194" name="pGPURAM" value="3">3GB</label>
                <label for="param_2195" title="2GB"><input type="radio" id="param_2195" name="pGPURAM" value="2">2GB</label>
                <label for="param_2196" title="1GB"><input type="radio" id="param_2196" name="pGPURAM" value="1">1GB</label>
            </dd>
        </dl>

        <dl>
            <dt>显存类型</dt>
            <dd>
                <label for="param_7304" title="GDDR5"><input type="radio" id="param_7304" name="pGDDR" value="5">GDDR5</label>
                <label for="param_7305" title="GDDR3"><input type="radio" id="param_7305" name="pGDDR" value="3">GDDR3</label>
            </dd>
        </dl>

        <dl>
            <dt>显存位宽</dt>
            <dd>
                <label for="param_14097" title="64bit"><input type="radio" id="param_14097" name="pGPUBit" value="64">64bit</label>
                <label for="param_14098" title="128bit"><input type="radio" id="param_14098" name="pGPUBit" value="128">128bit</label>
                <label for="param_18429" title="192bit"><input type="radio" id="param_18429" name="pGPUBit" value="192">192bit</label>
                <label for="param_14106" title="256bit"><input type="radio" id="param_14106" name="pGPUBit" value="256">256bit</label>
            </dd>
        </dl>
        <%--显卡--%>

       <%-- <dl>
            <dt>图片</dt>
            <dd>
                <label><input type="file" name="pPicture" ></label>
            </dd>
        </dl>--%>




    </div>


    <div style="alignment: center;position: center;margin:0 auto; width:180px; height:20px;">
        <input type="submit" value="添加" style="background-color: #5bc0de;width: 80px;alignment: center;position: center">
        <input type="reset"  style="background-color: #5bc0de;width: 80px;alignment: center;position: center">
    </div>
    </form>

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
