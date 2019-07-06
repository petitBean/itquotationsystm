<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>盒老师</title>
	<meta name="keywords" content="盒老师">
	<meta name="content" content="盒老师">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>
<body class="login_bj" >

<div class="zhuce_body">
	<div class="logo"><a href="#"><img src="${pageContext.request.contextPath}/images/logo.png" width="114" height="54" border="0"></a></div>
    <div class="zhuce_kong">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>欢迎注册</h3>
       	  	  <form action="" method="get">
                  <input name="userName" type="text" class="kuang_txt phone" placeholder="手机号">
                  <input name="userPsw" type="text" class="kuang_txt possword" placeholder="密码">
                  <input name="userPsw" type="text" class="kuang_txt possword" placeholder="确认密码">
                  <input name="" type="text" class="kuang_txt yanzm" placeholder="验证码">
                <div>
                	<div class="hui_kuang"><img src="${pageContext.request.contextPath}/images/zc_22.jpg" width="92" height="31"></div>
                	<div class="shuaxin"><a href="#"><img src="${pageContext.request.contextPath}/images/zc_25.jpg" width="13" height="14"></a></div>
                </div>
                <div>
               		<input name="" type="checkbox" value=""><span>已阅读并同意<a href="#" target="_blank"><span class="lan">《XXXXX使用协议》</span></a></span>
                </div>
                <input name="注册" type="submit" class="btn_zhuce" value="注册">
                </form>
            </div>
        	<div class="bj_right">
            	<p>使用以下账号直接登录</p>
                <a href="#" class="zhuce_qq">QQ登录</a>
                <a href="#" class="zhuce_wb">微博登录</a>
                <a href="#" class="zhuce_wx">微信登录</a>
                <p>已有账号？<a href="${pageContext.request.contextPath}/user-login.jsp">立即登录</a></p>
            </div>
        </div>
        <P>欢迎访问中关村报价平台！</P>
    </div>
</div>

</body>
</html>