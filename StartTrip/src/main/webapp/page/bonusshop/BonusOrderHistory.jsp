<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
<title>紅利商店歷史訂單</title>
<style>
*{
	margin:0;
	padding:0;
}

#bonusform {
/* set width in form, not fieldset (still takes up more room w/ fieldset width */
font:100% verdana,arial,sans-serif;
margin: auto;
margin-bottom:10px;
padding: 0;
min-width: 500px;
max-width: 600px;
width: 560px; 
/* position:absolute; */
height:200px;
top:0; bottom:0; left:0; right:0;
border:8px #FFD382 groove;
background-color: white;
}

#bonusform div{
text-align:center;
margin:8px  auto 0px;
padding: auto;
}

#bonushistoryorder{
text-align: center;
margin-top: 80px;
font-size: 1cm;
font-family: fantasy;
}
</style>
</head>
<body>
<jsp:include page="/page/shared/indexheader.jsp" />
<div id="bonushistoryorder">紅利商店歷史訂單</div>
<c:forEach var="order" items="${orderbean}">
<c:forEach var="shop" items="${bonushopBean}">
<c:if test="${shop.id eq order.id}">
	<c:set var="productname" value="${shop.name}"/>
	<c:set var="productbonus" value="${shop.bonus}"/>
</c:if>
</c:forEach>
	<c:set var="tatol" value="${order.wmuchs*productbonus}"></c:set>
<div id="bonusform">
		<div>
			<label>訂單編號:</label>&nbsp;<small><Font color='red' size="-3">${order.wid}</Font></small>
		</div>
		<div>
			<label>商品編號:</label>&nbsp;<small><Font color='black' size="-3">${order.id}</Font></small><br/>
			<label>商品名稱:</label>&nbsp;<small><Font color='black' size="-3">${productname}</Font></small><br/>
			<label>選購數量:</label>&nbsp;<small><Font class="shopmuch" color='black' size="-3">${order.wmuchs}</Font></small><br/>
			<label>商品金額:</label>&nbsp;<small><Font class="shopbonus" color='black' size="-3">${productbonus}</Font></small><br/>
			<label>總金額:</label>&nbsp;<small><Font color='black'  size="-3">${tatol}</Font></small><br/>
		</div>
</div>
</c:forEach>
<jsp:include page="/page/shared/footer.jsp" />
<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>