<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<c:url value='/Register.controller'/>"method="post">
		<div>
			<label for="orderid">訂單編號:</label>&nbsp;<small><Font color='red' size="-3">${error.errorIDEmpty}</Font></small>
		</div>
		<div>
			<div>
				<label for="start">起點:</label>&nbsp;<small><Font color='black' size="-3">${error.errorPasswordEmpty}</Font></small>
			</div>
			<label for="endstart">訖點:</label>&nbsp;<small><Font color='black' size="-3">${error.errorLastname}</Font></small>
		</div>
		<div>
			<label for="uptime">起程時間:</label>&nbsp;<small><Font color='black' size="-3">${error.errorFirstname}</Font></small>
		</div>
		<div>
			<label for="downtime">落地時間:</label>&nbsp;<small><Font color='black'  size="-3">${error.errorCountry}</Font></small>
		</div>
		<div>
			<label for="adult">成人數:</label>&nbsp;<small><Font color='black'  size="-3">${error.errorBirthday}</Font></small>
		</div>
		<div>
			<label for="child">孩童數:</label>&nbsp;<small><Font color='black'  size="-3">${error.errorPhonenumber}</Font></small>
		</div>
		<div>
			<label for="flight">機型:</label>&nbsp;<small><Font color='black'  size="-3">${error.errorPhonenumber}</Font></small>
		</div>
		<div>
			<label for="model">Model:</label>&nbsp;<small><Font color='black'  size="-3">${error.errorPhonenumber}</Font></small>
		</div>
	</form>
</body>
</html>