<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/css/backstage/default.css' />" rel="stylesheet"
	type="text/css" />
<link href="<c:url value='/css/backstage/fonts.css' />" rel="stylesheet" type="text/css" />
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<title>ManagerLogin</title>
</head>
<body>	
	<div id="page" class="container">
		<jsp:include page="/page/backstage/headerBackstage.jsp"></jsp:include>
		<div id="main">
			<form action="<c:url value="/LoginManager.controller"/>" method="get">
				<h2><label for="username">username:</label><input id="username" name="username"/>
				<label for="password">password:</label><input id="password" name="password"/>
				<input type="submit" value="登入" /></h2>
			</form>
<%-- 			<div>${errorMsg.erroridorpassword}${successMsg.welcomeManager}</div> --%>
		</div>
	</div>
<script>
$(document).ready(function(){
	var success = "${successMsg.welcomeManager}";
	if(success!=""){
		$("form").empty();
// 		$("form").attr("action","'<c:url value='/LoginManager.controller'/>'");
		$("form").html(success+"&nbsp;<input type='submit' value='登出' />");
	}
	
})

</script>
</body>
</html>