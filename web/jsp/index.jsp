<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="../css/common.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
  <%@include file="header.jsp"%>

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
              obj.src="../img/" + curIndex + ".jpg";
          }
      </script>
      <img src="../img/1.jpg" width="970" height="280" id="showpic" />
    </div>
  </div>
</html>