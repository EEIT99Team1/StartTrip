<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>test.controller</h1>
<form action='<c:url value="/test.controller"/>'>
	ID:<input type="text" name="id"/><br/>
	Name:<input type="text" name="name"/><br/>
	<input type="submit" value="submit"/>
</form>
<h1>passenger.controller</h1>
<form action='<c:url value="/passenger.controller"/>'>
	<input type="submit" value="submit"/>
</form>
</body>
</html>