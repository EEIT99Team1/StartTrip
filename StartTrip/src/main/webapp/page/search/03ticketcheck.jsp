<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html ">
<html>
<head>
    <meta charset="utf-8" />
    <title>訂票資料確認</title>
    
    <style type="text/css">
	        .checktable{
	            margin:auto;
	       		text-align: center;
		        border-collapse: collapse;
		        margin-bottom:380px;
	        }
	        
	        .checktable th,td{
	        	border:2px solid black;
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

<%-- 	<jsp:include page="/page/shared/myjs/headerstylejs.jsp" /> --%>
	
</head>
<body >
	
	<jsp:include page="/page/shared/header.jsp" />
	<br/><br/><br/>
	
    <h3>訂票資料確認</h3>
    <hr />
	<div>
	大人人數:${go1.adult}</br>
	小孩人數:${go1.child}
	</div>
	<hr />
    <table class="checktable">
	    <thead>
		    <tr>
			    <th></th>
			    <th>班機機型</th>
			    <th>起飛時間</th>
			    <th>起飛地點</th>
			    <th>降落時間</th>
			    <th>降落地點</th>
<!-- 			    <th>飛行時間</th>包含轉機次數 -->
			    <th>航班</th>
<!-- 			    <th>艙等</th> -->
<!-- 			    <th>行李限重</th> -->
		    </tr>
	    </thead>
    <tbody>
    	<tr>
	    	<td rowspan = "2">去程</td>
	    	<td rowspan = "2">${go1.model}</td>
	    	<td>${go1.uptime}</td>
	    	<td>${go1.start}</td>
	    	<td>${go1.downtime}</td>
	    	<td>${go1.endstart}</td>
<!-- 	    	<td></td> -->
	    	<td>${go1.flight}</td>
<!-- 	    	<td></td> -->
<!-- 	    	<td></td> -->
    	</tr>
    	<tr>
	    	<td>${go2.uptime}</td>
	    	<td>${go2.start}</td>
	    	<td>${go2.downtime}</td>
	    	<td>${go2.endstart}</td>
<!-- 	    	<td></td> -->
	    	<td>${go1.flight}</td>
<!-- 	    	<td></td> -->
	    </tr>
    	<tr>
    		<td rowspan = "2">回程</td>
	    	<td rowspan = "2">${back1.model}</td>
	    	<td>${back1.uptime}</td>
	    	<td>${back1.start}</td>
	    	<td>${back1.downtime}</td>
	    	<td>${back1.endstart}</td>
	    	<td>${back1.flight}</td>
    	</tr>
    	<tr>
    		<td>${back2.uptime}</td>
	    	<td>${back2.start}</td>
	    	<td>${back2.downtime}</td>
	    	<td>${back2.endstart}</td>
	    	<td>${back2.flight}</td>
	    </tr>
    </tbody>
    </table>
    
    
<%--     ${go1.start}<br/> --%>
<%--     ${go1.endstart}<br/> --%>
<%--     ${go1.uptime}<br/> --%>
<%--     ${go1.downtime}<br/> --%>
<%--     ${go1.adult}<br/> --%>
<%--     ${go1.child}<br/> --%>
<%--     ${go1.flight}<br/> --%>
<%--     ${go1.model}<br/> --%>
<!--     <hr /> -->
<%--     ${go2.start}<br/> --%>
<%--     ${go2.endstart}<br/> --%>
<%--     ${go2.uptime}<br/> --%>
<%--     ${go2.downtime}<br/> --%>
<%--     ${go2.adult}<br/> --%>
<%--     ${go2.child}<br/> --%>
<%--     ${go2.flight}<br/> --%>
<%--     ${go2.model}<br/> --%>
<!--     <hr /> -->
<%--     ${back1.start}<br/> --%>
<%--     ${back1.endstart}<br/> --%>
<%--     ${back1.uptime}<br/> --%>
<%--     ${back1.downtime}<br/> --%>
<%--     ${back1.adult}<br/> --%>
<%--     ${back1.child}<br/> --%>
<%--     ${back1.flight}<br/> --%>
<%--     ${back1.model}<br/> --%>
<!--     <hr /> -->
<%--     ${back2.start}<br/> --%>
<%--     ${back2.endstart}<br/> --%>
<%--     ${back2.uptime}<br/> --%>
<%--     ${back2.downtime}<br/> --%>
<%--     ${back2.adult}<br/> --%>
<%--     ${back2.child}<br/> --%>
<%--     ${back2.flight}<br/> --%>
<%--     ${back2.model}<br/> --%>
    <hr />
    <a href="04enter.jsp">
    	<input type="submit" value="確認訂票" /></a>
    <a href="02select.jsp"><input type="button" style="margin-bottom:50px;" value="取消，回上一頁"/></a>
		
	<jsp:include page="/page/shared/footer.jsp" />
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>