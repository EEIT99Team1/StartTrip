<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	<c:if test="${not empty select}">
		<table>
			<tbody>
				<c:forEach var="row" items="${select}">
					<c:url value="" var="path">
						<c:param name="start" value="${row.start}" />
						<c:param name="endstart" value="${row.endstart}" />
						<c:param name="uptime" value="${row.uptime}" />
						<c:param name="downtime" value="${row.downtime}" />
						<c:param name="adult" value="${row.adult}" />
						<c:param name="child" value="${row.child}" />
					</c:url>
					<tr>
						<td>${row.start}</td>
						<td><a href="${path}">${row.endstart}</a></td>
						<td>${row.uptime}</td>
						<td>${row.downtime}</td>
						<td>${row.adult}</td>
						<td>${row.child}</td>
					</tr>
				</c:forEach>
			</tbody>
			<tr>
				<td>起點:</td>
				<td><input type="text" name="start" value="${param.start}"></td>
			</tr>
			<tr>
				<td>數量:</td>
				<td><input type="text" name="count" value="${param.count}"></td>
			</tr>
		</table>
	</c:if>
</body>
</html>