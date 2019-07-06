<%--
  Created by IntelliJ IDEA.
  User: 86137
  Date: 2019/7/6
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>购物车</title>

    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/ibook/css/search.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/ibook/css/ul.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/ibook/css/detail.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ibook/css/login.css">
    <link href="${pageContext.request.contextPath}/ibook/css/bookcart.css" rel="stylesheet">


</head>

<body >
<div class="topContainer">
    <div id="topBar" style="height: 40px;background-color: #cccccc">
        <div id="topBar3" style="float: left">
            <ul><li><div class="ibook_firstpage"><a href="${pageContext.request.contextPath}/ibook/buyer/book/list"><img href="/ibook/photo/kibooicon.png" style="height: 30px;width: 30px"></a></div> </li></ul>
        </div>
    </div>
    <div class="logintop">
        <div class="siteIcon" style="float:  left;height:100px;width: 1500px;background-color: white ">
            <div id="icon" style="float: left;z-index: 0">
                <img src="${pageContext.request.contextPath}/ibook/photo/kibooicon.png" style="height: 100px ;width: 160px">
            </div>
            <div style="float: left;height: 40px;margin: 20px ">
                <h1 class="logonh" style="text-align: center">&nbsp&nbspIT 产品报价</h1>
            </div>
            <div style="float: left;height: 40px;text-align: center;margin: 30px">
                <h3>&nbsp购物车</h3>
            </div>
        </div>
    </div>

    <div class="infocontainer" style="">
        <div class="bookcart_menu"></div>
        <div class="ulcontainer" >

            <hr>
            <div class="infoul">
                <div class="cart_book_image">
                    <img src="${cart.bookInfo.bookIcon}" style="height: 80px;width: 70px">
                </div>
                <div class="cart_book_indroduction">
                    ${cart.bookInfo.bookDescribe}
                </div>
                <div class="cart_book_operation">
                    <a class="cart_book_operation_del" href="${pageContext.request.contextPath}/ibook/buyer/book/cart/delete?bookId=${cart.bookInfo.bookId}">删除</a>
                </div>
                <div class="cart_book_quantity">
                    <input class="cart_book_quantity_input" type="text" readonly value="${cart.bookNum}">
                </div>
                <div class="cart_book_price">
                    <input class="cart_book_price_input" type="text" readonly value="单价： ${cart.bookInfo.bookPrice} ￥">
                    <input class="cart_book_price_input" type="text" readonly value="合计： ${cart.bookInfo.bookPrice*cart.bookNum} ￥">
                </div>

            </div>

</div>

<div class="bottominfo">
    <div class="bottominfo_left">如有不需要的商品请在支付前从购物车移除！</div>
    <div class="bottominfo_bookquantity">
        <div class="bottominfo_bookquantity_cont">已选</div>

        <div class=" bottominfo_number"><strong><p class="bottominfo_total_amount_content">5</p></strong></div>

    <div class="bottominfo_bookquantity_cont">件商品</div>
</div>
<div class="bottominfo_total_amount">
    <div class="bottominfo_total_amount_cont"> </div>
    <div class="bottominfo_total_amount_cont">共计</div>
    <div class="bottominfo_number"><strong>￥2 </strong></div>
</div>
<div class="bottominfo_pay"><a class="" href="${pageContext.request.contextPath}/ibook/buyer/book/cart/createorder?totalAmount=${totalAmount}">去结算</a></div>
</div>
</div>

</div>
</body>

</html>
