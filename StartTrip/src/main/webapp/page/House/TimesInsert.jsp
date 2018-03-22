<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>民宿</title>
<link rel="shortcut icon" href="<c:url value='/page/login/img/webicon.ico'/>" />
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<jsp:include page="/css/headerlink.jsp" />
</head>
<body>
<jsp:include page="/page/shared/header.jsp" />


<div style="margin-top:5%">
<form action="InsertTimes" method="post">
<table style="margin: auto;margin-top: 20px">
    <tr>
		<td>民宿 : </td>
		<td><input type="text" value="${param.name}" disabled="disabled"></td>
		<td><input style="display:none;" type="text" name="name" value="${param.name}" ></td>		
	</tr>
	<tr>
		<td>房間名 : </td>
		<td><input type="text" disabled="disabled" value="${param.roomName}"></td>
		<td><input style="display:none;" type="text" name="roomName" value="${param.roomName}"></td>		
	</tr>
	<tr>
		<td>入住時間 : </td>
		<td><input type="text" disabled="disabled" value="${param.gotime}"></td>
		<td><input style="display:none;" type="text" name="gotime" value="${param.gotime}"></td>		
	</tr>
	<tr>
		<td>入住天數 : </td>
		<td><input type="text" disabled="disabled" value="${param.outtime}"></td>
		<td><input style="display:none;" type="text" name="outtime" value="${param.outtime}"></td>		
	</tr>
	<tr>
		<td>總價 : </td>
		<td><input type="text" disabled="disabled" value="${price}"></td>
		<td><input style="display:none;" type="text" name="price" value="${price}"></td>		
	</tr>
	<tr>
		<td>房客姓名 : </td>
		<td><input type="text" name="people" value="${LoginOK.lastname}${LoginOK.firstname}" ></td>		
	</tr>
	<tr>
		<td>房客電話 : </td>
		<td><input type="text" name="telephone" value="${LoginOK.phonenumber}"></td>		
	</tr>
	<tr>
		<td>會員帳號 : </td>
		<td>${LoginOK.email}</td>		
	</tr>
	
	
	
	</table>
	
	<input type="submit" value="go" style="display:block;margin:0 auto;margin-top:20px">
	<h2 align="center" style="color:red;">${select}</h2>
	
	<c:if test="${not empty insert}">
	<script>
	 alert('${insert}');

	 location.href="<c:url value='/page/House/House.jsp'/>";
	 </script>
	
	</c:if>
</div>	
</form>
	
<jsp:include page="/page/shared/myjs/loginjs.jsp" />	
</body>
</html>