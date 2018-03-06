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

<c:if test="${not empty select}">
	<c:forEach var="row" items="${select}">
	
	    <c:url value="/page/House/Times.jsp" var="path">
			<c:param name="name" value="${row.name}" />
			<c:param name="roomName" value="${row.roomName}" />
			<c:param name="price" value="${row.price}" />
			<c:param name="number" value="${row.number}" />
			<c:param name="expire1" value="${row.explain1}" />
			<c:param name="expire2" value="${row.explain2}" />
			<c:param name="expire3" value="${row.explain3}" />
			<c:param name="picture" value="${row.picture}" />
		</c:url>
	
	<table>
	<tr>
	    <img src=${row.picture}>
	    <h1>民宿:${row.name}</h1>
	    <td><a href="${path}">房間名子:${row.roomName}</a></td>
		<td>價錢:${row.price}</td>
		<td>入住人數:${row.number}</td>
		<td>註解:1.${row.explain1} 2.${row.explain2} 3.${row.explain3}</td>
			
	</tr>
	</table>
	
	</c:forEach>
	
	</c:if>

</body>
</html>