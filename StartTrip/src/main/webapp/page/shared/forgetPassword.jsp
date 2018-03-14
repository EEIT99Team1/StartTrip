<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>生成驗證碼</title>
  <head>
    <base href="<%=basePath%>">
     
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <script type="text/javascript">
        function refreshcode(){
            document.getElementById("code").src="CodeMakerServlet?a="+Math.random()+100;
            return false;
        }
    </script>
  </head>
   
  <body>
      請輸入您的註冊電子信箱<br/><br/>
      <form method=post action="<c:url value='/MailServlet' />">
      信箱：<input  type="text" name="email" size="40" value="${param.email}"/><br/><br/>
      驗證碼：<input type="text" size="4" maxlength="4" name="rand"/>
    <img id="code" src="CodeMakerServlet" title="看不清，點擊更換驗證碼" style="cursor : pointer;"  onclick="return refreshcode()"/>
      <input type=submit value="提交" >
      </form>
  </body>
</html>