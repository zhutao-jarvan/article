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
      .header .logo {
        float: left;
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
        color: yellow ;
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
    <div class="login">
      <span><a href="login.jsp">登陆</a></span>
      <span>|</span>
      <span><a href="javascript:void(0)">注册</a></span>
    </div>
  </div>

  <div id="banner_main">
    <div id="banner">
      <script language =javascript >
          var curIndex=1;
          //时间间隔 单位毫秒
          var timeInterval=3000;
          setInterval(changeImg,timeInterval);
          function changeImg()
          {
              var obj=document.getElementById("showpic");
              if (curIndex==5) {
                  curIndex=1;
              } else {
                  curIndex+=1;
              }
              obj.src="img/" + curIndex + ".jpg";
          }
      </script>
      <img src="img/1.jpg" width="970" height="280" id="showpic" />
    </div>
  </div>

  </body>
</html>
