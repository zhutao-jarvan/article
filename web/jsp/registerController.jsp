<%@ page import="utils.StringUtils" %>
<%@ page import="bean.User" %>
<%@ page import="service.*" %>
<%@ page import="bean.*" %>
<%@ page import="utils.PostJsonUtils" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="bean.RegisterUser" %><%--
  Created by IntelliJ IDEA.
  User: zhutao
  Date: 2018/3/12
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%    //获取客户端传递过来参数
    InputStream in = request.getInputStream();
    int size = request.getContentLength();
    RegisterUser registerUser = PostJsonUtils.getRegisterData(in, size);
    String username = registerUser.getUsername();
    String password = registerUser.getPassword();

    //如果用户名和密码不为空
    if(StringUtils.isEmpty(username) || StringUtils.isEmpty(password)){
        out.print(-1);//错误码-1 :   用户名和密码不能为空！
    }else{
        //初始化LoginService
        RegisterService registerService = new RegisterService();
        //接下来判断用户名是否存在
         out.print(registerService.addUser(registerUser));
    }
%>
