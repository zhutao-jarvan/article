<%--
  Created by IntelliJ IDEA.
  User: jarvan
  Date: 2018/2/11
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <style>
      *{
        padding: 0 ;
        margin: 0 ;
        font-family: "微软雅黑" ;
      }
      .header {
        height: 72px ;
        background: #458fce ;
      }
      .logo {float: left;}
      .header .logo {
        color: #fff ;
        line-height: 72px ;
        font-size: 30px ;
        margin-left: 20px ;
        display:inline-block ;
        font-weight:500 ;
      }
      ul li {
        list-style: none ;
      }
      .header ul li.first {
        margin-left: 30px ;
      }
      .header ul li {
        float: left ;
        color: #fff ;
        display: inline-block ;
        width: 112px ;
        height: 72px ;
        text-align: center ;
        line-height:72px ;
        cursor: pointer ;
      }
      a {
        color: #fff ;
        text-decoration: none ;
      }
      .header ul li:hover {
        background:#74b0e2 ;
      }

      .login {
        float: right ;
        color: #fff ;
        line-height: 72px ;
        margin-right: 20px ;
      }
    </style>
  </head>
  <body>
  <div class="header">
    <div class='logo'>原创文字</div>
    <ul>
      <li class="first"><a href="javascript:void(0)">首页</a></li>
      <li><a href="javascript:void(0)"> 原创故事</a></li>
      <li><a href="javascript:void(0)"> 热门专题</a></li>
      <li><a href="javascript:void(0)"> 欣赏美文</a></li>
      <li><a href="javascript:void(0)"> 赞助</a></li>
    </ul>
  </div>

  <div class="login">
    <span><a href="javascript:void(0)">登陆</a></span>
    <span>|</span>
    <span><a href="javascript:void(0)">注册</a></span>
  </div>
  </body>
</html>
