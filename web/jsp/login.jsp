<%--
  Created by IntelliJ IDEA.
  User: jarvan
  Date: 2018/3/7
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <html>
        <head>
            <title>登录</title>
            <link href="../css/common.css" rel="stylesheet" type="text/css" />
        </head>
<body>
<%@include file="header.jsp"%>
<form method="post" action="loginController.jsp">
    <label for="username">用户名:</label>
    <input type="text"  name="username" id="username" value="" />
    <label for="password">密码:</label>
    <input type="password"  name="password" id="password" value="" />
    <input type="submit" value="登录"  name="submit" />
    <input type="reset" value="注册" name="reset" />
</form>
</body>
</html>
