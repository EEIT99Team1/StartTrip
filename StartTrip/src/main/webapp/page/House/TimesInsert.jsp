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
<form action="InsertTimes" method="post">
<table style="margin: auto;margin-top: 20px">
    <tr>
		<td>民宿 : </td>
		<td><input type="text" name="name" value="${param.name}" ></td>		
	</tr>
	<tr>
		<td>房間名 : </td>
		<td><input type="text" name="roomName" value="${param.roomName}"></td>		
	</tr>
	<tr>
		<td>入住時間 : </td>
		<td><input type="text" name="gotime" value="${param.gotime}"></td>		
	</tr>
	<tr>
		<td>入住天數 : </td>
		<td><input type="text" name="outtime" value="${param.outtime}"></td>		
	</tr>
	<tr>
		<td>總價 : </td>
		<td><input type="text" name="price" value="${price}"></td>		
	</tr>
	<tr>
		<td>房客姓名 : </td>
		<td><input type="text" name="people" ></td>		
	</tr>
	<tr>
		<td>房客電話 : </td>
		<td><input type="text" name="telephone" ></td>		
	</tr>
	</table>
	
	<input type="submit" value="go" style="display:block;margin:0 auto;margin-top:20px">
	<h1 align="center" style="color:red;">${select}</h2>
</form>
</body>
</html>