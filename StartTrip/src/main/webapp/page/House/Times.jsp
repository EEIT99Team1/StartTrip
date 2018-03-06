<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/StartTrip/js/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<form action="SelectTimes" method="get">
<table>




<img  src=${param.picture}>
<input style="display:none" type="text" name="picture" value="${param.picture}"/>

    <tr>
		<td>Name1 : </td>
		<td><input type="text" name="name" value="${param.name}" ></td>		
	</tr>
	<tr>
		<td>roomName : </td>
		<td><input type="text" name="roomName" value="${param.roomName}" ></td>		
	</tr>
	 <tr>
		<td>price : </td>
		<td><input type="text" name="price" value="${param.price}"></td>		
	</tr>
	<tr>
		<td>gotime : </td>
		<td><input type="text" name="gotime" ></td>		
	</tr>
	<tr>
		<td>入住天數 : </td>
		<td><input type="text" name="outtime" ></td>		
	</tr>
</table>
	
	
	<input type="submit" value="go">
	<h1>${select}</h1>
	
	
</form>
</body>
</html>