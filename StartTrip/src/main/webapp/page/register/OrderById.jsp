<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
<jsp:include page="/css/headerlink.jsp" />
<title>機票訂單編號</title>
</head>
<body>
<jsp:include page="/page/shared/header.jsp" />
<br><br><br><br><br>
<div>歷史訂單編號</div>
<c:forEach  var="flight" items="${flightbean}">
<c:if test="${orderid != flight.orderid}">
	<div>
		<label for="orderid">訂單編號:</label>&nbsp;
		<input style="width:100px" type="button" value="${flight.flightorderid}" onclick="location.href='<c:url value="/UseOrderIdSearchOrderHistory.controller"/>?choice=${flight.orderid}&flightorderid=${flight.flightorderid}'">
	</div>
</c:if>
<c:set value="${flight.orderid}" var="orderid" scope="session" ></c:set>
</c:forEach>
<jsp:include page="/page/shared/footer.jsp" />
<jsp:include page="/page/shared/myjs/loginjs.jsp" />

</body>
</html>