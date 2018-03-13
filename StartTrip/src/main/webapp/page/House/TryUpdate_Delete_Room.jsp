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
<form action="SelectRoom" method="get">
name:<input type="text" name="name">
<input type="submit" name="account" value="go">
</form>


<c:if test="${not empty select}">
	<c:forEach var="row" items="${select}">
	
	<form action="UpdateDeleteRoom" method="post">
	<table>
	<tr>
	 <td>name:<input type="text" name="name" value="${row.name}"></td>
	</tr>
	<tr>
	 <td>roomName:<input type="text" name="roomname" value="${row.roomName}"></td>
	</tr>
	<tr>
	 <td>number:<input type="text" name="number" value="${row.number}"></td>
	</tr>
	<tr>
	 <td>price:<input type="text" name="price" value="${row.price}"></td>
	</tr>
	<tr>
	 <td>expire1:<input type="text" name="expire1" value="${row.explain1}"></td>
	</tr>
	<tr>
	 <td>expire2:<input type="text" name="expire2" value="${row.explain2}"></td>
	</tr>
	<tr>
	 <td>expire3:<input type="text" name="expire3" value="${row.explain3}"></td>
	</tr>
	<tr>
	 <td><input type="submit" name="account" value="修改" ></td>
	 <td><input type="submit" name="account" value="刪除" ></td>
	</tr>
	</table>
		
	</form>

	</c:forEach>
	
	</c:if>

${update}



</body>
</html>