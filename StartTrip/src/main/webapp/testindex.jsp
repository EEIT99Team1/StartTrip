<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test index</title>
</head>
<body>
<h1>test.controller</h1>
<form action='<c:url value="/test.controller"/>'>
	ID:<input type="text" name="id"/><br/>
	Name:<input type="text" name="name"/><br/>
	<input type="submit" value="submit"/>
</form><hr/>
<h1>bonushopBean.controller</h1>
<form action='<c:url value="/bonushopBean.controller"/>'>
	<input type="submit" value="submit"/>
</form><hr/>
<h1>bonusorderDao.controller</h1>
<form action='<c:url value="/bonusorderDao.controller"/>'>
	<input type="submit" value="submit"/>
</form><hr/>
<h1>customerDao.controller</h1>
<form action='<c:url value="/customerDao.controller"/>'>
	<input type="submit" value="submit"/>
</form><hr/>
<h1>flightorderDao.controller</h1>
<form action='<c:url value="/flightorderDao.controller"/>'>
	<input type="submit" value="submit"/>
</form><hr/>
<h1>ordermanDao.controller</h1>
<form action='<c:url value="/ordermanDao.controller"/>'>
	<input type="submit" value="submit"/>
</form><hr/>
<h1>passenger.controller</h1>
<form action='<c:url value="/passengerDao.controller"/>'>
	<input type="submit" value="submit"/>
</form><hr/>
<h1>searchDao.controller</h1>
<form action='<c:url value="/searchDao.controller"/>'>
	<input type="submit" value="submit"/>
</form><hr/>
<h1>testConnectionSaber.controller</h1>
<form action='<c:url value="/testConnectionSaber.controller"/>'>
	<input type="submit" value="submit"/>
</form><hr/>
</body>
</html>