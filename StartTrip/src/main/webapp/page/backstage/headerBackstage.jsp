<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="header">
	<div id="logo">
		<h1><a href="#">後台管理系統</a></h1>
	</div>
	<div id="menu">
		<ul>
			
			<li class="page_item1"><a href="<c:url value="/page/backstage/managementPlaywall.jsp"/>" accesskey="2" title="">輪播牆管理</a></li>
			<li class="page_item2"><a href="<c:url value="/page/backstage/statementsAna.jsp"/>" accesskey="3" title="">報表系統</a></li>
			<li class="page_item3"><a href="<c:url value="/CustomerManagementController.controller"/>" accesskey="4" title="">會員管理</a></li>
			<li class="page_item4"><a href="#" accesskey="5" title="">商品管理</a></li>
			<li class="page_item5"><a href="#" accesskey="5" title="">飯店管理</a></li>
			<li><a href="#" accesskey="5" title=""></a></li>
		</ul>
	</div>
</div>