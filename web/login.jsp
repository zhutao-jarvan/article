<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>注册登录</title>
</head>
<body>
<form method="post" action="jsp/loginController.jsp">
    <label for="username">用户名:</label>
    <input type="text"  name="username" id="username" value="" />
    <label for="password">密码:</label>
    <input type="password"  name="password" id="password" value="" />
    <input type="submit" value="登录"  name="submit" />
    <input type="reset" value="注册" name="reset" />
</form>
</body>
</html>