<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../../js/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/page/shared/indexheader.jsp" />
<script >


</script>
<c:if test="${not empty select}">
	<c:forEach var="row" items="${select}">
	
	    <c:url value="http://localhost:8080/StartTrip/page/House/GoToTimes?picture=${row.picture}&name=${row.number}&roomName=${row.roomName}&price=${row.price}"
	        var="path">
			<c:param name="name" value="${row.name}" />
			<c:param name="roomName" value="${row.roomName}" />
			<c:param name="price" value="${row.price}" />
			<c:param name="number" value="${row.number}" />
			<c:param name="expire1" value="${row.explain1}" />
			<c:param name="expire2" value="${row.explain2}" />
			<c:param name="expire3" value="${row.explain3}" />
			<c:param name="picture" value="${row.picture}" />
		</c:url>
	
	<table style="margin: auto;margin-top:30px">
	    <a href="${path}">
	    <h1 align="center">房間名子:${row.roomName}</h1>
	    <h3 align="center"><img src=${row.picture}></h3>
	    </a>
		<h3 align="center">價錢:${row.price}</h3>
		<h3 align="center">入住人數:${row.number}</h3>
		<h3 align="center">註解:1.${row.explain1} 2.${row.explain2} 3.${row.explain3}</h3>
			

	</table>
	
	</c:forEach>
	
	</c:if>

</body>
</html>