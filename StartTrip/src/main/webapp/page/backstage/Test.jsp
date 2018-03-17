<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/animate/animate.min.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
<link href="<c:url value='/css/backstage/statementsAna.css'/>" rel="stylesheet">
<link href="<c:url value='/css/backstage/default.css' />" rel="stylesheet"
	type="text/css" />
<link href="<c:url value='/css/backstage/fonts.css' />" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="page" class="container">
		<jsp:include page="/page/backstage/headerBackstage.jsp"></jsp:include>
<div id="main">
	<!-- HTML -->
	<div id="chartdiv">
			<div style="border:4px solid #8C0044">
		<table style="border:2px solid #003C9D;width:100%" >
			<thead></thead>
			<tbody>	<tr><td rowspan="5">酷航空</td><td>TPE</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>HKG</td><td></td><td style="width:20%" rowspan="2">15000元</td></tr>
					<tr><td>06:40</td><td></td><td>10:50</td><td>3時10分，直飛</td></tr>
					<tr><td colspan="4">-----------------------------------------------------------------------</td><td style="width:20%" rowspan="3"><button>訂購</button></td></tr>
					<tr><td>HKG</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>TPE</td><td></td></tr>
					<tr><td>20:40</td><td></td><td>23:10</td><td>3時30分，直飛</td></tr>
			</tbody>
		</table>
		<button id="flightInfox">航班資訊</button>
		<div id="dflightInfox" style="display:none">
		<table style="border:2px solid #003C9D;width:100%" >
			<thead><tr><th>去程 : </th><th>TPE<img src='<c:url value="/image/search/003-plane.png"/>'/></th><th>HKG</th></tr></thead>
			<tbody>
			<tr><td rowspan="4">NX322</td><td>2018-04-01</td><td></td><td>2018-04-01</td><td><img src='<c:url value="/image/search/003-plane.png"/>'/>:789</td></tr>
			<tr><td>06:40</td><td>3時10分</td><td>09:50</td><td><img src='<c:url value="/image/search/002-desk-chair.png"/>'/>:經濟艙(F)</td></tr>
			<tr><td>TPE(台北)</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>HKG(香港)</td><td><img src='<c:url value="/image/search/001-suitcase.png"/>'/>:30kg</td></tr>
			</tbody>
		</table>
		<table style="border:2px solid #003C9D;width:100%">
			<thead><tr><th>回程 : </th><th>HKG<img src='<c:url value="/image/search/003-plane.png"/>'/></th><th>TPE</th></tr></thead>
			<tbody>
			<tr><td rowspan="4">NX322</td><td>2018-04-01</td><td></td><td>2018-04-01</td><td><img src='<c:url value="/image/search/003-plane.png"/>'/>:789</td></tr>
			<tr><td>06:40</td><td>3時10分</td><td>09:50</td><td><img src='<c:url value="/image/search/002-desk-chair.png"/>'/>:經濟艙(F)</td></tr>
			<tr><td>TPE(台北)</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>HKG(香港)</td><td><img src='<c:url value="/image/search/001-suitcase.png"/>'/>:30kg</td></tr>
			</tbody>
		</table><br/>
		<p>托運行李</p> 
		<p>1.託運行李相關規定請參照航空公司官方網站行李限制說明。</p>
		<p>2.聯合營運航班需依實際承運航空公司託運行李相關規定為主。</p>
		<p>3.託運行李若以件數計算，則每1件不得超過20公斤；若以重量計算，則不得超過表列之公斤數。</p>
		<p>4.託運行李資訊是根據航空公司於訂位系統中的票價規則進行自動分析而取得，本公司不保證其準確性，得依實際開票時之確認為準， 開票後如有變動，恕不另行通知。</p>
		<p>5.行李是否可直掛目的地，須依航空公司、當地政府、機場規定為準。</p>
		</div>
		</div><br/>
</div>	
</div>
</div>

<script>
		/**
		 * Create the chart
		 */
$(function(){
		var currentYear = 2018;
		var chart = AmCharts.makeChart( "chartdiv"
				, {
		  "type": "pie",
// 		  "theme": "light",
// 		  "dataProvider": [],
// 		  "valueField": "size",
// 		  "titleField": "sector",
// 		  "startDuration": 0,
// 		  "innerRadius": 80,
// 		  "pullOutRadius": 20,
// 		  "marginTop": 30,
// 		  "allLabels": [{
// 		    "y": "54%",
// 		    "align": "center",
// 		    "size": 25,
// 		    "bold": true,
// 		    "text": output,
// 		    "color": "#555"}, 
// 		    {"y": "49%",
// 		    "align": "center",
// 		    "size": 15,
// 		    "text": "",
// 		    "color": "#555"}],
		  "titles": [{"text": "航班機票"}],
		   "export": {"enabled": true}
		});
})
</script>
</body>
</html>