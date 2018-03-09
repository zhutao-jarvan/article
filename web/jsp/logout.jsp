<%--
  Created by IntelliJ IDEA.
  User: jarvan
  Date: 2018/3/7
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setAttribute("user", null);
    session.setAttribute("username", null);
    response.addHeader("location", "login.jsp");
    response.setStatus(302);
%>
