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
    <input type="submit" value="登录"  name="submit" onclick="userLoginRgister()"/>
    <input type="reset" value="注册" name="reset" />
</form>
<script>
    function userLoginRgister() {
        var xmlhttp = new XMLHttpRequest();
        var username = document.getElementById("username");
        var password = document.getElementById("password");
        var data = "username=" + username + "&password" + password;
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                var resp = xmlhttp.responseText;
                switch (resp) {
                    case "0": //登录成功，3秒跳转首页
                        break;
                    case "1": //用户名错误
                        break;
                    case "2": //密码错误
                        break;
                    default:
                        break;
                }
            }
        }
        xmlhttp.open("POST", "loginController.jsp", true);
        xmlhttp.send(data);
    }
</script>
</body>
</html>
