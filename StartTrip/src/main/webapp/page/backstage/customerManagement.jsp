<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/css/backstage/default.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/css/backstage/fonts.css' />" rel="stylesheet" type="text/css" />

<title>會員管理系統</title>
</head>
<body>
	<div id="page" class="container">
		<jsp:include page="/page/backstage/headerBackstage.jsp"></jsp:include>
			<div id="main">
				<form action="<c:url value="/CustomerChangeToBlackListController.controller"/>"> 
					<c:forEach var="customerList" items="${customerList}" varStatus="status">
					<span class="customerList">${customerList.email}</span>
					<input id="blacklistcheckbox" type="checkbox" value="${status.count}" name="blacklistcheckbox">
					<label for="blacklistcheckbox">加入黑名單</label><br/>
					</c:forEach>
					<button type="submit">Subscribe</button>
				</form>
			</div>
	</div>
	</body>
</html>