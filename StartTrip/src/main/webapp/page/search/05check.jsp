<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>乘客資料確認</title>
    <script>
//         function onLoad() {
//             document.getElementById("outputfirstname").innerHTML = localStorage["firstname"];
//             document.getElementById("outputlastname").innerHTML = localStorage["lastname"];
//             document.getElementById("outputemail").innerHTML = localStorage["email"];
//             document.getElementById("outputpassportNo").innerHTML = localStorage["passportNo"];
//         }
    </script>
	<link href="<c:url value='/css/search/jquery-ui.min.css'/>" type="text/css" rel="stylesheet">
	<link href="<c:url value='/css/login/bouncebutton.css'/>"type="text/css" rel="stylesheet" />
	<link href="<c:url value='/css/login/FB&Googlebutton.css'/>" rel="stylesheet" >

	<link href="<c:url value='/css/title.css'/>" type="text/css" rel="stylesheet" />
	<link href="<c:url value='/css/footer.css'/>" type="text/css" rel="stylesheet" />
<%-- 	<link href="<c:url value='/css/search/searchbody.css'/>" type="text/css" rel="stylesheet" /> --%>

	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
    
    
</head>
<body>
	<jsp:include page="/page/shared/header.jsp" />
	<br/><br/><br/>
    <h1> 資料確認</h1><hr/>
    <h3>機票資訊</h3><hr/>

	<form action="<c:url value='/Searchview.controller'/>" method="get">
		電子郵件: <span id="outputemail"></span><br />
	<h3>乘客資料</h3><hr/>
		姓氏(護照上的英文姓): <span></span><br />
		名字(護照上的英文名): <span></span><br />
		護照號碼: <span></span><br />
		護照到期日:

    <div>
        <input type="submit" value="確認，下一步" />
        <a href="04enter.jsp"><input type="button"value="返回" /></a>
    </div>
	</form>
			
	<jsp:include page="/page/shared/footer.jsp" />
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>