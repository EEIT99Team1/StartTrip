<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<jsp:include page="/css/headerlink.jsp" />
<link href="<c:url value='/css/House/room.css'/>" type="text/css" rel="stylesheet" />
<title>民宿</title>
<link rel="shortcut icon" href="<c:url value='/page/login/img/webicon.ico'/>" />
</head>
<body>
<jsp:include page="/page/shared/header.jsp" />
<script >
</script>

<div style="margin:5%">
<c:if test="${not empty select}">
	<c:forEach var="row" items="${select}">
	
	    <c:url value="http://localhost:8080/StartTrip/page/House/GoToTimes?picture=${row.picture}&name=${row.number}&roomName=${row.roomName}&price=${row.price}&day=${day}&gotime=${gotime}&people=${people}&telephone=${telephone}"
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
	
<!-- 	<table style="margin: auto;margin-top:30px"> -->
	   
<%-- 	    <h1 align="center">房間名子:${row.roomName}</h1> --%>
<%-- 	    <h3 align="center"><a href="${path}"><img src=${row.picture}></a></h3>     --%>
<%-- 		<h3 align="center">價錢:${row.price}</h3> --%>
<%-- 		<h3 align="center">入住人數:${row.number}</h3> --%>
<%-- 		<h3 align="center">註解:1.${row.explain1} 2.${row.explain2} 3.${row.explain3}</h3> --%>
<%-- 		<h3 align="center">價錢:${row.price}</h3> --%>
<!-- 	</table> -->
	
	
	<div class="w1" >
 <fieldset class="w2">
  <h2  style="color:blue;margin:3px">${row.roomName}</h2>
<img  style="width:100%;" src="${row.picture}">
</fieldset>
<h3 style="margin:10px;color:#93ff93;padding-left:23%">入住人數:  ${row.number}</h3>
<p style= "margin:10px;padding-left:23%">客房設備:</p>
<p style= "margin:10px;margin-bottom:15px;padding-left:25%">${row.explain1}</p>
<p style= "margin:10px;padding-left:23%">服務:</p>
<p style= "margin:10px;margin-bottom:15px;padding-left:25%">${row.explain2} </p>
<p style= "margin:10px;padding-left:23%">規則:</p>
<p style= "margin:10px;margin-bottom:0px;padding-left:25%">${row.explain3}</p>
<h1 align="right" style= "margin-right:3%;color:#ff5809;margin-bottom:3px">NT:${row.price}</h1>
<a class="aa" href="${path}"><span style="margin-left:87%;font-size:30px;background-color:#ff5809;padding-left:2%;padding-right:2%;color:#FFFFFF;font-weight:900;">訂房</span></a>

</div>
	
	
	
	
	
	
	</c:forEach>
	
	</c:if>
</div>
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />


<script>
$(function() {			
	
	$('.w1').mouseover(function () {
		$(this).css('border','7px solid #f3b65e');
	})
	
	$('.w1').mouseout(function () {
		$(this).css('border','2px solid #A1A1A1');
	})
	

})


</script>




</body>
</html>