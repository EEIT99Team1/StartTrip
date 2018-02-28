<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>查詢結果</title>
<link href="<c:url value="/style/title.css"/>" rel="stylesheet" />
<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>
</head>
<body>
	<%@ include file='/page/shared/header.jsp'%>

	<div class="mborder">
		<div class="planeimg">
			<img src="<c:url value="/image/01.png"/>" />
		</div>
		<a href="03ticketcheck.jsp" class="taketicket"> <input
			type="button" value="訂票" />
		</a>
		<div>

			機場${searchData.goplace}<br /> 時間${searchData.gotime}<br />

			<hr />

			機場<br /> 時間<br />
		</div>

	</div>


	<div class="mborder" id="d1">
		<div class="planeimg">
			<img src="<c:url value="/image/01.png"/>" />
		</div>
		<a href="03ticketcheck.jsp" class="taketicket"> <input
			type="button" value="訂票" />
		</a>
		<div>
			機場<br /> 時間<br />
			<hr />
			機場<br /> 時間<br />
		</div>

	</div>

	<script>
		$(document).ready(function() {
			var text = ${responseXml};
			var parser = new DOMParser();
			var xmlDoc = parser.parseFromString(text, "text/xml");
			var PricedItinerarys = xmlDoc.getElementsByTagName("PricedItinerary");
			for(var i=0,max=PricedItinerarys.length;i<max;i++){
				//去程飛機資訊
				var startFlight=PricedItinerarys[i].getElementsByTagName("FlightSegment")[0];
				
				var departureDateTime=startFlight.getAttribute("DepartureDateTime");
				var arrivalDateTime=startFlight.getAttribute("ArrivalDateTime");
				var resBookDesigCode=startFlight.getAttribute("ResBookDesigCode");

			}
		});
	</script>
</body>
</html>