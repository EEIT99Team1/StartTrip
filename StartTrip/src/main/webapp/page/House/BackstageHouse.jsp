<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1 align="center" style="margin-top: 50px">民宿後台登入</h1>
<form action="LoginHouse" method="post">

<table style="margin: auto;margin-top: 50px">
<tr>
 <td>帳號:</td>
 <td><input type="text" name="account" ></td>
</tr>
<tr>
 <td>密碼:</td>
 <td><input type="password" name="pass" ></td>
</tr>
</table>
<input type="submit" value="登入" style="display:block;margin:0 auto;margin-top:20px">
</form>
<h2 align="center" style="color:red;">${select}</h2>

</body>
</html>