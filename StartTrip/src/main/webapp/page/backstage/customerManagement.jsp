<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/css/backstage/default.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/css/backstage/fonts.css' />" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="<c:url value='/page/login/img/webicon.ico'/>" />
<style>
 #main form{
 	margin:auto; 
 	border: 1px solid red; 
 	width: 300px; 
 	} 
 #main div{ 
 	margin-top:5px; 
 	border-bottom: 1px solid red; 
 	
	} 

	#menu .page_item3 a
	{
		background: #2980b9;
		color: rgba(255,255,255,1);
	}

</style>
<title>會員管理系統</title>
</head>
<body>
	<div id="page" class="container">
		<jsp:include page="/page/backstage/headerBackstage.jsp"></jsp:include>
			<div id="main" style="height: 600px">
				<h1>會員管理</h1>
				<form action="<c:url value="/CustomerChangeToBlackListController.controller"/>">
					<c:forEach var="customerList" items="${customerList}">
					<div>
					<span class="customerList" >${customerList.email}</span>
					<input class="blacklistcheckbox" type="checkbox" value="${customerList.email}" name="blacklistcheckbox">
					<label for="blacklistcheckbox">加入黑名單</label><br/>
					</div>
						<table></table>
					</c:forEach>
					<br>
					<button type="submit">送出</button>
				</form>
			</div>
	</div>
	</body>
</html>