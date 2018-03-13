<%@page import="java.util.List"%>
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
<script>
chartData = {
		"2018":[]
}

$(function() {
    var selValue = localStorage.getItem("selValue");
    if(selValue != null) {
        $("select[name=selectBy]").val(selValue);
    }

    $("select[name=selectBy]").on("change", function() {
        localStorage.setItem("selValue", $(this).val());
    });
})
</script>
<c:forEach var="selData" items="${forder}">
<%-- 	<span>${selData[0]}</span> --%>
<%-- 	<span>${selData[1]}</span> --%>
	<script>
	chartData["2018"].push({"sector": "${selData[0]}", "size": ${selData[1]}});
	
	</script>
</c:forEach>
</head>
<body>
	<form action='<c:url value="/Flightorder.controller"/>' method="get">
		<select name="selectBy" id="sel" >
			<option value="start" >start</option>
			<option value="endstart">endstart</option>
			<option value="uptime">uptime</option>
			<option value="downtime">downtime</option>
			<option value="adult">adult</option>
			<option value="child">child</option>
			<option value="model">model</option>
		</select> <input type="submit" value="submit" id="sub" onClick="save()"/>
	</form>
	<c:if test="${not empty forder}">
		<table>
			<thead>
				<tr>
					<td>搜尋項目</td>
					<td>次數</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="row" items="${forder}">
					<tr>
						<td>${row[0]}</td>
						<td>${row[1]}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	
	

		<!-- HTML -->
		<div id="chartdiv"></div>	
		
<script>
		/**
		 * Create the chart
		 */
		 $(function(){
		var currentYear = 2018;
		var chart = AmCharts.makeChart( "chartdiv", {
		  "type": "pie",
		  "theme": "light",
		  "dataProvider": [],
		  "valueField": "size",
		  "titleField": "sector",
		  "startDuration": 0,
		  "innerRadius": 80,
		  "pullOutRadius": 20,
		  "marginTop": 30,
		  "titles": [{
		    "text": "StartTrip圓餅圖"
		  }],
		  "allLabels": [{
		    "y": "54%",
		    "align": "center",
		    "size": 25,
		    "bold": true,
		    "text": "2018",
		    "color": "#555"
		  }, {
		    "y": "49%",
		    "align": "center",
		    "size": 15,
		    "text": "Year",
		    "color": "#555"
		  }],
		  "listeners": [ {
		    "event": "init",
		    "method": function( e ) {
		      var chart = e.chart;

		      function getCurrentData() {
		        var data = chartData[currentYear];
// 		        currentYear++;
// 		        if (currentYear > 2014)
// 		          currentYear = 1995;
		        return data;
		      }

		      function loop() {
		        chart.allLabels[0].text = currentYear;
		        var data = getCurrentData();
		        chart.animateData( data, {
		          duration: 1000,
		          complete: function() {
		            setTimeout( loop, 3000 );
		          }
		        } );
		      }

		      loop();
		    }
		  } ],
		   "export": {
		   "enabled": true
		  }
		} );
		 })
		</script>
		
</body>
</html>