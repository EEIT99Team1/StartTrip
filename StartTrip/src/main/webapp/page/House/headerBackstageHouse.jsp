<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="header">
	<div id="logo">
		<h1><a href="#">後台管理系統</a></h1>
	</div>
	<div id="menu">
		<ul>
			<li><a href="http://localhost:8080/StartTrip/page/House/SelectHouse_update?name=${HouseLogin.name}&account=${HouseLogin.account}" >飯店資訊</a></li>
			<li><a href="<c:url value="/page/House/BackstageInsertRoom.jsp"/>" accesskey="2" title="">客房新增</a></li>
			<li><a href="http://localhost:8080/StartTrip/page/House/SelectRoom?name=${HouseLogin.name}&account=go">客房修改</a></li>
			<li><a href="<c:url value="/page/House/BackstageDeleteTimes.jsp"/>" accesskey="4" title="">預約取消</a></li>	
		</ul>
	</div>
</div>