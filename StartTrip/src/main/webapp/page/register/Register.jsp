<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="../login/img/webicon.ico" />
<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
<link href="<c:url value='/css/search/jquery-ui.min.css'/>"type="text/css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript">
$(function() {
	$("#date").datepicker({dateFormat: 'yy-mm-dd',changeYear: true,changeMonth:true,yearRange:'-100:+0'})
});</script>
</head>
<body>
	<form action="<c:url value='/Register.controller'/>"method="post">
				<div>
			<label for="email" >Email：</label> 
			<input id="inputEmail" type="text" name="email" size="40" value="${param.email}"/>
			<small><Font color='red'  size="-3">${error.errorIDEmpty}</Font></small>
			<small><Font color='red'  size="-3">${success.successIDDup}</Font></small>
		</div>
		<br/>
			<div>
				<label for="password">密碼：</label> 
				<input type="password" name="password" size="25" >
				<small><Font color='red'  size="-3">${error.errorPasswordEmpty}</Font></small>
			</div>
			<br/>
		<div>	
			<label for="lastname">姓：</label> 
			<input id="inputLname" type="text" name="lastname" size="25" value="${param.lastname}" required/>
			<small><Font color='red'  size="-3">${error.errorLastname}</Font></small>
		</div>
		<br/>
		<div>
			<label for="firstname">名：</label> 
			<input id="inputFname" type="text" name="firstname" size="10" value="${param.firstname}" required/>
			<small><Font color='red'  size="-3">${error.errorFirstname}</Font></small>
		</div>
		<br/>
		<div>
			<label for="country">國家：</label> <select name="country" value="${param.country}"required>
				<option selected value="TW">台灣</option>
				<option value="AF">澳洲</option>
				<option value="AL">加拿大</option>
				<option value="DZ">印度</option>
				<option value="AS">俄羅斯</option>
				<option value="AD">美國</option>
				<option value="JP">日本</option>				
			</select>
		</div>
		<br/>
		<div >
				生日：<input type="text" id="date" name="birthday" value="${param.birthday}" required/> 
				<small><Font color='red'  size="-3">${error.errorBirthday}</Font></small>
		</div>
		<br/>
		<div >
				手機號碼：<input type="text" name="phonenumber" size="25" value="${param.phonenumber}" required /> 
				<small><Font color='red'  size="-3">${error.errorPhonenumber}</Font></small>
		</div>
		<br/>
	<input type="submit" name="submit" value="註冊一般會員" />
		<h1>${error.errorIDDup}</h1>
	</form>
</body>
</html>