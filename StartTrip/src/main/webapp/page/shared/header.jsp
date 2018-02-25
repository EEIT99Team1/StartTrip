<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="<c:url value='/style/title.css'/>" rel="stylesheet" />
<header>
	<a href="<c:url value="/index.jsp"/>"><img src="<c:url value="/image/01.png"/>"/></a>
	<nav>
		<ul>
			<li><a href="<c:url value="/index.jsp"/>">機票</a></li>
			<li>飯店</li>
			<li><input type="button" value="登入" style="float: right;" /></li>
		</ul>
	</nav>
</header>