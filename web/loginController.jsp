<%--
  Created by IntelliJ IDEA.
  User: jarvan
  Date: 2018/2/21
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //设置请求的编码
    //request.setCharacterEncoding("UTF-8");
    //获取客户端传递过来参数
    String username = request.getParameter("username");
    String password = request.getParameter("pass");
    System.out.println(username);
    System.out.println(password);
    //如果用户名和密码不为空
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
