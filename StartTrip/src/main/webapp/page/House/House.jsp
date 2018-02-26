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


<form action="SelectHouse" method="post">
<table>
     <tr>
		<td>國家 : </td>
		<td><input type="text" name="Country" ></td>
		
	</tr>
	<tr>
		<td>地區 : </td>
		<td><input type="text" name="Area" ></td>
		
	</tr>
	
	<c:if test="${not empty select}">
	<c:forEach var="row" items="${select}">
	<table>
	<tr>
	    <h1><a href="http://localhost:8080/StartTrip/page/House/SelectRoom?name=${row.name}">民宿:${row.name}</a></h1>
	    <td>國家:${row.country}</td>
		<td>地區:${row.area}</td>
		<td>電話:${row.telephone}</td>
		<td>地址:${row.addres}</td>
		<td>民宿介紹:${row.explain}</td>	
	</tr>
	</table>
	
	</c:forEach>
	
	</c:if>
	
	

	
			
	
</table>
<input type="submit" name="prodaction" value="Select">

</form>






</body>
</html>