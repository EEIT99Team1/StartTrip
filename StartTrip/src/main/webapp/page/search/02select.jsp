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
	<jsp:include page="/page/shared/header.jsp" />
	
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

	<div id="flightsResult" style="border:2px solid red;width:50%">
		<table style="border:2px solid #003C9D;width:100%" >
			<thead></thead>
			<tbody>	<tr><td rowspan="5">酷航空</td><td>TPE</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>HKG</td><td></td><td style="width:20%" rowspan="2">15000元</td></tr>
					<tr><td>06:40</td><td></td><td>10:50</td><td>3時10分，直飛</td></tr>
					<tr><td colspan="4">-----------------------------------------------------------------------</td><td style="width:20%" rowspan="3"><button>訂購</button></td></tr>
					<tr><td>HKG</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>TPE</td><td></td></tr>
					<tr><td>20:40</td><td></td><td>23:10</td><td>3時30分，直飛</td></tr>
			</tbody>
		</table>
		<button id="bflightInfo0">航班資訊</button>
		<div id="flightInfo0">
		<table style="border:2px solid #003C9D;width:100%" >
			<thead><tr><td>去程 : TPE<img src='<c:url value="/image/search/003-plane.png"/>'/>HKG</td></tr></thead>
			<tbody>
			<tr><td rowspan="4">NX322</td><td>2018-04-01</td><td></td><td>2018-04-01</td><td><img src='<c:url value="/image/search/003-plane.png"/>'/>:789</td></tr>
			<tr><td>06:40</td><td>3時10分</td><td>09:50</td><td><img src='<c:url value="/image/search/002-desk-chair.png"/>'/>:經濟艙(F)</td></tr>
			<tr><td>TPE(台北)</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>HKG(香港)</td><td><img src='<c:url value="/image/search/001-suitcase.png"/>'/>:30kg</td></tr>
			</tbody>
		</table>
		<table style="border:2px solid #003C9D;width:100%">
			<thead><tr><td>回程 : HKG<img src='<c:url value="/image/search/003-plane.png"/>'/>TPE</td></tr></thead>
			<tbody>
			<tr><td rowspan="4">NX322</td><td>2018-04-01</td><td></td><td>2018-04-01</td><td><img src='<c:url value="/image/search/003-plane.png"/>'/>:789</td></tr>
			<tr><td>06:40</td><td>3時10分</td><td>09:50</td><td><img src='<c:url value="/image/search/002-desk-chair.png"/>'/>:經濟艙(F)</td></tr>
			<tr><td>TPE(台北)</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>HKG(香港)</td><td><img src='<c:url value="/image/search/001-suitcase.png"/>'/>:30kg</td></tr>
			</tbody>
		</table>
		<p>托運行李</p> 
		<p>1.託運行李相關規定請參照航空公司官方網站行李限制說明。</p>
		<p>2.聯合營運航班需依實際承運航空公司託運行李相關規定為主。</p>
		<p>3.託運行李若以件數計算，則每1件不得超過20公斤；若以重量計算，則不得超過表列之公斤數。</p>
		<p>4.託運行李資訊是根據航空公司於訂位系統中的票價規則進行自動分析而取得，本公司不保證其準確性，得依實際開票時之確認為準， 開票後如有變動，恕不另行通知。</p>
		<p>5.行李是否可直掛目的地，須依航空公司、當地政府、機場規定為準。</p>
		</div>
	</div>



	<script>
		$(document).ready(function() {
			var text = ${responseXml};
			var parser = new DOMParser();
			var xmlDoc = parser.parseFromString(text, "text/xml");
			var PricedItinerarys = xmlDoc.getElementsByTagName("PricedItinerary");
			console.log(PricedItinerarys.length);
			for(var i=0,maxi=PricedItinerarys.length;i<maxi;i++){
				console.log(i);
				//總金額
				var totalFare=PricedItinerarys[i].getElementsByTagName("TotalFare")[0].getAttribute("Amount");
				console.log(totalFare+"?????--");
				var go_trip  = PricedItinerarys[i].getElementsByTagName("OriginDestinationOption")[0];
				var back_trip= PricedItinerarys[i].getElementsByTagName("OriginDestinationOption")[1];
				//去程飛機資訊
				var Flight=go_trip.getElementsByTagName("FlightSegment");
				for(var j=0,maxj=Flight.length;j<maxj;j++){
					//出發時間//抵達時間//艙等//飛行時間
					var departureDateTime=Flight[j].getAttribute("DepartureDateTime");
					var arrivalDateTime=Flight[j].getAttribute("ArrivalDateTime");
					var resBookDesigCode=Flight[j].getAttribute("ResBookDesigCode");
					var elapsedTime=Flight[j].getAttribute("ElapsedTime");
	
					//出發地點//抵達地點
					var departureAirport=Flight[j].getElementsByTagName("DepartureAirport")[0].getAttribute("LocationCode");
					var arrivalAirport=Flight[j].getElementsByTagName("ArrivalAirport")[0].getAttribute("LocationCode");
					
					
					var operatingAirline=Flight[j].getElementsByTagName("OperatingAirline")[0];
					//航空公司//航班代號
					var flightCode=operatingAirline.getAttribute("Code");
					var flightNum=operatingAirline.getAttribute("FlightNumber");
					
					console.log(departureDateTime+">>>"+arrivalDateTime+"|||"+resBookDesigCode+" : " +elapsedTime);
					console.log(departureAirport+">>>"+arrivalAirport+"|||"+flightCode+" : " +flightNum);
				}
				console.log("----------------------------------------");
				//回程飛機資訊
				if(back_trip!=null){
					var Flight=back_trip.getElementsByTagName("FlightSegment");
					for(var j=0,maxj=Flight.length;j<maxj;j++){
					//出發時間//抵達時間//艙等//飛行時間
					var departureDateTime=Flight[j].getAttribute("DepartureDateTime");
					var arrivalDateTime=Flight[j].getAttribute("ArrivalDateTime");
					var resBookDesigCode=Flight[j].getAttribute("ResBookDesigCode");
					var elapsedTime=Flight[j].getAttribute("ElapsedTime");
	
					//出發地點//抵達地點
					var departureAirport=Flight[j].getElementsByTagName("DepartureAirport")[0].getAttribute("LocationCode");
					var arrivalAirport=Flight[j].getElementsByTagName("ArrivalAirport")[0].getAttribute("LocationCode");
					
					
					var operatingAirline=Flight[j].getElementsByTagName("OperatingAirline")[0];
					//航空公司//航班代號
					var flightCode=operatingAirline.getAttribute("Code");
					var flightNum=operatingAirline.getAttribute("FlightNumber");
					
					console.log(departureDateTime+">>>"+arrivalDateTime+"|||"+resBookDesigCode+" : " +elapsedTime);
					console.log(departureAirport+">>>"+arrivalAirport+"|||"+flightCode+" : " +flightNum);
					}
				}
				console.log("========================================");
			}
		});
	</script>
	<script>
		$("#bflightInfo0").click(function(){
			$("#flightInfo0").toggle(1000);
		});
	</script>
	<jsp:include page="/page/shared/footer.jsp" />
</body>
</html>