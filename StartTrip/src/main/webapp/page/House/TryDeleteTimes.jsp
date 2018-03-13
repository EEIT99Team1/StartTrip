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


<form action="SelectTimes_delete" method="post">
<table>
<tr>
 <td>name:</td>
 <td><input type="text" name="name" ></td>
</tr>

<tr>
 <td>gotime:</td>
 <td><input type="text" name="gotime" ></td>
</tr>
${err.gotime}
<tr>
 <td>telephone:</td>
 <td><input type="text" name="telephone" ></td>
</tr>
${err.telephone}
</table>
<input type="submit" value="確定">
</form>
 
${select}
<c:if test="${not empty bean}">
	<c:forEach var="row" items="${bean}">
	
	<table style="margin: auto;margin-top:30px">
	    <h1 align="center">RoomName:${row.roomName}</h1>
		<h3 align="center">goTime:${row.goTime}</h3>
		<h3 align="center">OutTime:${row.outTime}</h3>
		<h3 align="center">People:${row.people}</h3>
		<h3 align="center">Telephone:${row.telephone}</h3>
		
	</table>
	<form action="DelectTimes" method="post" >
	 <input name="name" value="${row.name}" style="display: none;">
	 <input name="roomname" value="${row.roomName}" style="display: none;">
	 <input name="goint" value="${row.goInt}" style="display: none;">
	 <input name="outint" value="${row.outInt}" style="display: none;">
	 <input type="submit" value="刪除" style="display:block;margin:0 auto;">
	 </form>
	
	</c:forEach>
	
	</c:if>
	
	
	
	<c:if test="${not empty delect}">
	
	<script >
	alert("${delect}");
	
	</script>
	</c:if>

</body>
</html>