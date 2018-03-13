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
<form action="InsertRoom" method="post">
<table>
<tr>
 <td>name:</td>
 <td><input type="text" name="name" ></td>
</tr>
${err.name}
<tr>
 <td>roomname:</td>
 <td><input type="text" name="roomname" ></td>
</tr>
${err.roomname}
<tr>
 <td>price:</td>
 <td><input type="text" name="price" ></td>
</tr>
 ${err.price}
<tr>
 <td>number:</td>
 <td><input type="text" name="number" ></td>
</tr>
 ${err.number}
<tr>
 <td>explain1:</td>
 <td><input type="text" name="explain1" ></td>
</tr>
<tr>
 <td>explain2:</td>
 <td><input type="text" name="explain2" ></td>
</tr>
<tr>
 <td>explain3:</td>
 <td><input type="text" name="explain3" ></td>
</tr>
</table>
<input type="submit" value="確定">
</form>
${select}

</body>
</html>