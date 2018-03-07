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

<link href="../../css/search/hometitle.css" rel="stylesheet">

<!-- <link href="../../css/search/jquery-ui.min.css" rel="stylesheet"> -->
<!-- <link href="../../css/login/bouncebutton.css" rel="stylesheet"> -->
<!-- <script src="https://apis.google.com/js/platform.js" async defer></script> -->
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->


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
$(function() {
	$("#datepicker").datepicker();
	$.datepicker.setDefaults({
		dateFormat : "yy/mm/dd"
	});
})
</script>
</c:if>


<script>

	$(function() {
		$("#datepicker").datepicker();
		$.datepicker.setDefaults({
			dateFormat : "yy-mm-dd"
		});
	})

</script>

<title>Insert title here</title>


</head>
<body>
	<p>
		日期999：<input type="text" id="datepicker">
	</p>
	<div id="calendar" style="width: 872px; margin: 0 auto;"></div>
	
	
	
<form action="GoToTimes" method="get">
<img  src=${picture}>
<input style="display:none" type="text" name="picture" value="${picture}"/>

    <tr>
		<td>Name1 : </td>
		<td><input type="text" name="name" value="${name}" ></td>		
	</tr>
	<tr>
		<td>roomName : </td>
		<td><input type="text" name="roomName" value="${roomName}" ></td>		
	</tr>
	 <tr>
		<td>price : </td>
		<td><input type="text" name="price" value="${price}"></td>		
	</tr>
	<input type="submit" value="go">
</form>
</body>
</html>