<%--
  Created by IntelliJ IDEA.
  User: jarvan
  Date: 2018/3/9
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <title>注册</title>
    <link href="../css/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@include file="header.jsp"%>
<div>
    <label for="username">用户名:</label>
    <input type="text"  name="username" id="username" value="" />
    <label for="password">密码:</label>
    <input type="password"  name="password" id="password" value="" />
    <input type="submit" value="注册"  name="register" onclick="userRegister('register')"/>
    <span id="hint"></span>
</div>
<script>
    function userRegister(action) {
        var xmlhttp = new XMLHttpRequest();
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        var data = "{\"username\":\"" + username + "\",\"password\":\"" + password + "\",\"action\":\"" + action + "\"}";
        document.getElementById("hint").innerHTML = "";
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                var resp = xmlhttp.responseText;
                console.log("xmlhttp.resonseText: " + resp);
                document.getElementById("hint").style.color = "red";
                switch (resp) {
                    case "0": //注册成功，3秒跳转首页
                        document.getElementById("hint").innerHTML = "注册成功";
                        document.getElementById("hint").style.color = "green";
                        window.setTimeout("window.location='index.jsp'",3000);
                        break;
                    case "-1": //用户名和密码不能为空！
                        document.getElementById("hint").innerHTML = "用户名和密码不能为空";
                        break;
                    case "-2": //用户名存在！
                        document.getElementById("hint").innerHTML = "用户名存在";
                        break;
                    case "-3": //用户名或密码错误！
                        document.getElementById("hint").innerHTML = "用户名或密码不合法";
                        break;
                    default:
                        document.getElementById("hint").innerHTML = "服务器错误";
                        break;
                }
            }
        }
        xmlhttp.open("POST", "registerController.jsp", true);
        xmlhttp.send(data);
    }
</script>
</body>
</html>
