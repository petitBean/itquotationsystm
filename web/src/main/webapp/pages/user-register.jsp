<%--
  Created by IntelliJ IDEA.
  User: 86137
  Date: 2019/7/2
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="user-login-form" action="${pageContext.request.contextPath}/user/register.do" method="post">
    用户名<input type="text" name="userName">
    密码 <input type="text" name="userPsw">
    <input type="submit" value="登录">
</form>
</body>
</html>
