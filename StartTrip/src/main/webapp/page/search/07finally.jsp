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
            opacity:0.7;
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
<h3>機票資訊</h3><hr/>
    
    <div>
	    <table  class="checktable">
			<tr>
				<td>大人人數:</td>
				<td>${go1.adult}</td>
			</tr>
			<tr>
				<td>小孩人數:</td>
				<td>${go1.child}</td>
			</tr>
		</table>
	</div>

	<div>
		<table class="checktable">
			<thead class="checkthead">
	        	<tr>
	                <td></td>
	                <td>班機機型</td>
	                <td>起飛</td>
	                <td style="width: 20px"></td>
	                <td>降落</td>
	                <td>飛行時間</td>
	                <td></td>
	        	</tr>
			</thead>
	        <tbody>
	            <tr>
	                <th rowspan="6">去程:</th>
	                <td rowspan="3">${go1.model}</td>
	                <td rowspan="2">${go1.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${go1.downtime}</td>
	                <td rowspan="3">()3時10分</td>
	                <td>${go1.flight}</td>
	            </tr>
	            <tr>
	                <td>():經濟艙(F)</td>
	            </tr>
	            <tr>
	                <td>${go1.start}</td>
	                <td></td>
	                <td>${go1.endstart}</td>
	                <td>():30kg</td>
	            </tr>
	            <tr>
	                <td rowspan="3">${go2.model}</td>
	                <td rowspan="2">${go2.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${go2.downtime}</td>
	                <td rowspan="3">()3時10分</td>
	                <td>${go2.flight}</td>
	            </tr>
	            <tr>
	                <td>():經濟艙(F)</td>
	            </tr>
	            <tr>
	                <td>${go2.start}</td>
	                <td></td>
	                <td>${go2.endstart}</td>
	                <td>():30kg</td>
	            </tr>
	        </tbody>
	    </table>
	    </br>
	    </br>
	    <table class="checktable">
	        <thead class="checkthead">
	        	<tr>
	                <td></td>
	                <td>班機機型</td>
	                <td>起飛</td>
	                <td style="width: 20px"></td>
	                <td>降落</td>
	                <td>飛行時間</td>
	                <td></td>
	        	</tr>
			</thead>
	        <tbody>
	            <tr>
	                <th rowspan="6">回程:</th>
	                <td rowspan="3">${back1.model}</td>
	                <td rowspan="2">${back1.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${back1.downtime}</td>
	                <td rowspan="3">()3時10分</td>
	                <td>${back1.flight}</td>
	            </tr>
	            <tr>
	                <td>():經濟艙(F)</td>
	            </tr>
	            <tr>
	                <td>${back1.start}</td>
	                <td></td>
	                <td>${back1.endstart}</td>
	                <td>():30kg</td>
	            </tr>
	            <tr>
	                <td rowspan="3">${back2.model}</td>
	                <td rowspan="2">${back2.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${back2.downtime}</td>
	                <td rowspan="3">()3時10分</td>
	                <td>${back2.flight}</td>
	            </tr>
	            <tr>
	                <td>():經濟艙(F)</td>
	            </tr>
	            <tr>
	                <td>${back2.start}</td>
	                <td></td>
	                <td>${back2.endstart}</td>
	                <td>():30kg</td>
	            </tr>
	        </tbody>
	        
        </table>
	</div>
	<div>
	<table class="checktable">
			<thead>
				<tr>
					<th>訂購人資料</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>電子郵件:</td>
					<td>${obean.email}</td>
				</tr>
			</tbody>
			<thead>
				<tr>
					<th>乘客資料</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>姓氏(護照上的英文姓):</td>
					<td>${pbean.firstname}</td>
				</tr>
				<tr>
					<td>名字(護照上的英文名):</td>
					<td>${pbean.lastname}</td>
				</tr>
				<tr>
					<td>聯絡電話:</td>
					<td>${pbean.phone}</td>
				</tr>
				<tr>
				    <td>孩童:</td>
				    <td></td>
				</tr>
			    <tr>
				    <td>生日:</td>
				    <td>${pbean.brithday}</td>
			    </tr>
			    <tr>
				    <td>幾個月</td>
				    <td>${pbean.brithmonth}</td>
			    </tr>
			
			</tbody>
		</table>
	</div>
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