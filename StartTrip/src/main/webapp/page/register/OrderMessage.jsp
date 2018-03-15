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
<title>歷史訂單</title>
<style>
#form {
/* set width in form, not fieldset (still takes up more room w/ fieldset width */
font:100% verdana,arial,sans-serif;
margin: auto;
margin-bottom:10px;
padding: 0;
min-width: 500px;
max-width: 1000px;
width: 1400px; 
/* position:absolute; */
height:230px;
top:0; bottom:0; left:0; right:0;
border:8px #FFD382 groove;
background-color: white;
}

#form div{
text-align:center;
margin:8px  auto 0px;
padding: auto;
}

#historyorder{
text-align: center;
margin-top: 80px;
font-size: 1cm;
font-family: fantasy;
}

.front{
float:left;
margin-left: 10px;
}

.ordermessagefront{
padding:auto;
margin-right: 50px;
}
.ordermessageback{
padding:auto;
margin-left: 50px;
}
</style>
</head>
<body>
<jsp:include page="/page/shared/header.jsp" />
<div>
<div id="historyorder">歷史訂單</div>
<c:forEach  var="flight" items="${flightbean}">
<div id="form">
		<div>
			<label for="orderid">訂單編號:</label>&nbsp;<small><Font color='red' size="-3">${flight.orderid}</Font></small>
		</div>
		<div>
			<label class="front" for="start">起飛地點:</label>&nbsp;<small class="ordermessagefront"><Font color='black' size="-3">${flight.start}</Font></small>
			<label class="back" for="endstart">降落地點:</label>&nbsp;<small class="ordermessageback"><Font color='black' size="-3">${flight.endstart}</Font></small>
		</div>
		<div>
			<label class="front" for="uptime">起程時間:</label>&nbsp;<small class="ordermessagefront"><Font color='black' size="-3">${flight.uptime}</Font></small>
			<label class="back" for="downtime">落地時間:</label>&nbsp;<small class="ordermessageback"><Font color='black'  size="-3">${flight.downtime}</Font></small>
		</div>
		<div style="border: double;">
			
		</div>
		<div>
			<label class="front" for="adult">成人數量:</label>&nbsp;<small class="ordermessagefront"><Font color='black'  size="-3">${flight.adult}</Font></small>
			<label class="back" for="child">孩童數量:</label>&nbsp;<small class="ordermessageback"><Font color='black'  size="-3">${flight.child}</Font></small>
		</div>
		<div>
			<label class="front" for="flight">航班代碼:</label>&nbsp;<small class="ordermessagefront"><Font color='black'  size="-3">${flight.flight}</Font></small>
			<label class="back" for="model">飛機型號:</label>&nbsp;<small class="ordermessageback"><Font color='black'  size="-3">${flight.model}</Font></small>
		</div>
</div>
</c:forEach>
<jsp:include page="/page/shared/footer.jsp" />
<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</div>
</body>
</html>