<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="SelectRoom" method="get">
 <tr>
		<td>Name : </td>
		<td><input type="text" name="name" ></td>
		
	</tr>


<input type="submit" >
</form>



<c:if test="${not empty select}">
	<c:forEach var="row" items="${select}">
	<table>
	<tr>
	    <h1>民宿:${row.name}</h1>
	    <td>房間名子:${row.roomName}</td>
		<td>價錢:${row.price}</td>
		<td>入住人數:${row.number}</td>
		<td>註解:1.${row.explain1} 2.${row.explain2} 3.${row.explain3}</td>
			
	</tr>
	</table>
	
	</c:forEach>
	
	</c:if>

</body>
</html>