<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
    <meta charset="utf-8" />
    <title>訂購完成</title>
    <style>
        table {
            margin: auto;
            margin-top: 25px;
            width: 600px;
            line-height: 25px;
            border-collapse: collapse;
            opacity:0.8;
            background: -webkit-linear-gradient(top,#A6FFFF,#84C1FF);
        }
    </style>
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
    <h1>訂購完成，感謝您的購買</h1>
    <hr />

    <table>
    
        <tr>
            <td>訂單編號:</td>

        </tr>
        <tr>
            <td>訂購人信箱:</td>
        </tr>
        <tr>

            <td>乘客資訊:</td>
        </tr>
        <tr>
            <td>時間:</td>
        </tr>
        
    </table>
    <hr />
    <div>
        <input type="submit" value="列印明細" />
        <a href="<c:url value='/index.jsp'/>">
        <input type="button" value="回查詢首頁" /></a>
    </div>
    
    		
	<jsp:include page="/page/shared/footer.jsp"/>
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>