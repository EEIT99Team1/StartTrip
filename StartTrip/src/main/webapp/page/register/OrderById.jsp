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
<style>
 .orderidform{
 /* set width in form, not fieldset (still takes up more room w/ fieldset width */
font:100% verdana,arial,sans-serif;
margin: auto;
margin-bottom:10px;
padding: 0;
min-width: 500px;
max-width: 600px;
width: 560px; 
/* position:absolute; */
/* height:200px; */
top:0; bottom:0; left:0; right:0;
border:8px #FFD382 groove;
background-color: white;
 }
.orderidform div{
  	text-align:center;
	margin:8px  auto 0px;
	padding: auto;
	margin-bottom: 10px;
 }
 .ordertitle{
 	text-align: center;
	margin-top: 90px;
	font-size: 1cm;
	font-family: fantasy;
 }
 
 .orderidbutton {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}
.orderidbutton {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
}

.orderidbutton:hover {
    background-color: #008CBA;
    color: white;
}

</style>
<link rel="shortcut icon" href="<c:url value='/page/login/img/webicon.ico'/>" />
</head>
<body>
<jsp:include page="/page/shared/header.jsp" />
<br><br><br><br><br>
<div class="ordertitle">歷史機票訂單編號</div>
<div class="orderidform">
<c:forEach  var="flight" items="${flightbean}">
<c:if test="${orderid != flight.orderid}">
	<div>
		<label for="orderid">訂單編號:</label>&nbsp;
		<input class="orderidbutton" style="width:100px" type="button" value="${flight.flightorderid}" onclick="location.href='<c:url value="/UseOrderIdSearchOrderHistory.controller"/>?choice=${flight.orderid}&flightorderid=${flight.flightorderid}'">
	</div>
</c:if>
<c:set value="${flight.orderid}" var="orderid" scope="session" ></c:set>
</c:forEach>
</div>
<jsp:include page="/page/shared/footer.jsp" />
<jsp:include page="/page/shared/myjs/loginjs.jsp" />

</body>
</html>