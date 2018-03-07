<%--
  Created by IntelliJ IDEA.
  User: jarvan
  Date: 2018/3/3
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header">
    <div class='logo'>原创文字</div>
    <ul>
        <li class="first"><a href="javascript:void(0)">首页</a></li>
        <li><a href="javascript:void(0)"> 原创故事</a></li>
        <li><a href="javascript:void(0)"> 热门专题</a></li>
        <li><a href="javascript:void(0)"> 欣赏美文</a></li>
        <li><a href="javascript:void(0)"> 赞助</a></li>
    </ul>
    <div class="login">
        <c:choose>
            <c:when test="${empty sessionScope.username}">
                <span><a href="jsp/login.jsp">登陆</a></span>
                <span>|</span>
                <span><a href="javascript:void(0)">注册</a></span>
            </c:when>
            <c:otherwise>
                <span><a href="javascript:void(0)">欢迎您，${sessionScope.username}</a></span>
                <span> | </span>
                <span><a href="javascript:void(0)">退出</a></span>
            </c:otherwise>
        </c:choose>
    </div>
</div>
