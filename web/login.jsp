<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>表单标签</title>
</head>
<body>
<form method="post" action="loginController.jsp">
    <label for="username">用户名:</label>
    <input type="text"  name="username" id="username" value="" />
    <label for="pass">密码:</label>
    <input type="password"  name="pass" id="pass" value="" />
    <input type="submit" value="登录"  name="submit" />
    <input type="reset" value="注册" name="reset" />
</form>
</body>
</html>