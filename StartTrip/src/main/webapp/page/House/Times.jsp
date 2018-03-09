<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/jquery-ui.min.js"></script>

<script src="../../js/House/moment.min.js"></script>
<script src="../../js/House/fullcalendar.min.js"></script>
<link href="../../css/House/fullcalendar.css" rel="stylesheet">

<link href="../../css/search/jquery-ui.min.css" rel="stylesheet">

<!-- <link href="../../css/search/hometitle.css" rel="stylesheet"> -->

<title>Insert title here</title>
</head>
<body>
<jsp:include page="/page/shared/indexheader.jsp" />

<script>

	$(function() {
		$("#datepicker").datepicker();
		$.datepicker.setDefaults({
			dateFormat : "yy/mm/dd"
		});
	})

</script>







<c:if test="${not empty time}">
<script >
var ans=[];
</script>

<c:forEach var="row" items="${time}">
<script >
// alert("${row.goTime}");
var a = new Date("${row.goTime}");
var b = new Date("${row.outTime}");
ans.push({
	title :'已經被預約了',
	start: new Date(a.getFullYear(),a.getMonth(), a.getDate()),
	end: new Date(b.getFullYear(),b.getMonth(),b.getDate())
    
});
</script>

</c:forEach>


<script >
$(document).ready(function() {
$('#calendar').fullCalendar({
	//editable : true,
	events : ans
});
});
</script>

</c:if>




<img src=${picture} style="display:block;margin:0 auto; margin-top:20px" >



<form action="SelectTimes" method="get">
<table style="margin:auto; margin-top: 20px;">
<input style="display:none; " type="text" name="picture" value="${picture}"/>
    <tr>
		<td>民宿 : </td>
		<td><input type="text" name="name" value="${name}"  ></td>		        
	</tr>
	<tr>
		<td>房間 : </td>
		<td><input type="text" name="roomName" value="${param.roomName}" ></td>		
	</tr>
	 <tr>
		<td>價錢/1天 : </td>
		<td><input type="text" name="price" value="${param.price}" ></td>		
	</tr>
	<tr>
		<td>入住時間 : </td>
		<td><input type="text" name="gotime" id="datepicker" ></td>		
	</tr>
	<tr>
		<td>入住天數 : </td>
		<td><input type="text" name="outtime" ></td>		
	</tr>

</table>
	<div>
	<input type="submit" value="go" style="display:block;margin:0 auto">
	<h1 align="center" style="color:red;">${select}</h1>
	</div>
<div id="calendar" style="width: 800px; margin: 0 auto;"></div>	
</form>




</body>
</html>