<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %><html lang="en">
<head>
	<meta charset="UTF-8">
	<title>中关村it产品报价</title>
	<meta name="keywords" content="中关村it产品报价">
	<meta name="content" content="中关村it产品报价">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
</head>
<body class="login_bj" >
<div class="zhuce_body">
	<div class="logo"><a href="#"><img src="${pageContext.request.contextPath}/images/logo.png" width="114" height="54" border="0"></a></div>
    <div class="zhuce_kong login_kuang">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>登录</h3>
       	  	  <form action="${pageContext.request.contextPath}//login.do" method="post">
                <input name="userName" type="text" class="kuang_txt"  placeholder="手机号">
                <input name="userPsw" type="text" class="kuang_txt" placeholder="密码">
                <div>
               		<a href="#">忘记密码？</a><input name="" type="checkbox" value="" checked><span>记住我</span> 
                </div>
                <input name="登录" type="submit" class="btn_zhuce" value="登录">
                
                </form>
            </div>
        	<div class="bj_right">
            	<p>使用以下账号直接登录</p>
                <a href="#" class="zhuce_qq">QQ登录</a>
                <a href="#" class="zhuce_wb">微博登录</a>
                <a href="#" class="zhuce_wx">微信登录</a>
            </div>
        </div>
        <P>欢迎登录中关村报价平台！</P>
    </div>

</div>
    
</body>
</html>