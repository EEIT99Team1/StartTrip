<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>查詢結果</title>

<link href="<c:url value='/css/title.css'/>" type="text/css" rel="stylesheet" />
<link href="<c:url value='/css/footer.css'/>" type="text/css" rel="stylesheet" />
<link href="<c:url value='/css/search/searchbody.css'/>" type="text/css" rel="stylesheet" />
<link href="<c:url value='/css/search/jquery-ui.min.css'/>" type="text/css" rel="stylesheet">
<link href="<c:url value='/css/login/bouncebutton.css'/>" type="text/css" rel="stylesheet" />

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>

	<jsp:include page="/page/shared/myjs/headerstylejs.jsp" />
	<jsp:include page="/page/search/myjs/searchbar.jsp" />
</head>
<body>
	<jsp:include page="/page/shared/indexheader.jsp" />
	<br/><br/><br/>
	<div id="clone"></div>
	<h1 style="margin-left:100px;">機票查詢結果</h1>
	<hr/>
	
	 <div id="searchbar"class="searchbar">
            <aside class="aside">
                <table>
                    <thead><tr><td colspan="3">航班篩選</td> </tr> </thead>
                    <tbody>
                        <tr>
                            <td style="width:10%"><input type="checkbox" value="" /></td>
                            <td style="width:20%"><img src="<c:url value='/image/search/航空1.png'/>" /></td>
                            <td style="width:50%;">中華航空</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" value="" /></td>
                            <td><img src="<c:url value='/image/search/航空2.png'/>" /></td>
                            <td>馬來西亞航空</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" value="" /></td>
                            <td><img src="<c:url value='/image/search/航空3.png'/>" /></td>
                            <td>長榮航空</td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" value="" /></td>
                            <td><img src="<c:url value='/image/search/航空4.png'/>" /></td>
                            <td>日本航空</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" value="" /></td>
                            <td><img src="<c:url value='/image/search/航空5.png'/>" /></td>
                            <td>酷航</td>
                        </tr>
                    </tbody>
                </table>
                <button class="barbutton">
                	<img class="barbuttonimg" src="<c:url value='/image/search/right.png'/>">
                </button>
            </aside>
        </div>
	
	
	<div id="flightsResult" class="mainbody" style="width:50%;">
<!-- 		<div style="border:4px solid #8C0044"> -->
<!-- 		<table style="border:2px solid #003C9D;width:100%" > -->
<!-- 			<thead></thead> -->
<%-- 			<tbody>	<tr><td rowspan="5">酷航空</td><td>TPE</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>HKG</td><td></td><td style="width:20%" rowspan="2">15000元</td></tr> --%>
<!-- 					<tr><td>06:40</td><td></td><td>10:50</td><td>3時10分，直飛</td></tr> -->
<!-- 					<tr><td colspan="4">-----------------------------------------------------------------------</td><td style="width:20%" rowspan="3"><button>訂購</button></td></tr> -->
<%-- 					<tr><td>HKG</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>TPE</td><td></td></tr> --%>
<!-- 					<tr><td>20:40</td><td></td><td>23:10</td><td>3時30分，直飛</td></tr> -->
<!-- 			</tbody> -->
<!-- 		</table> -->
<!-- 		<button id="flightInfox">航班資訊</button> -->
<!-- 		<div id="dflightInfox" style="display:none"> -->
<!-- 		<table style="border:2px solid #003C9D;width:100%" > -->
<%-- 			<thead><tr><th>去程 : </th><th>TPE<img src='<c:url value="/image/search/003-plane.png"/>'/></th><th>HKG</th></tr></thead> --%>
<!-- 			<tbody> -->
<%-- 			<tr><td rowspan="4">NX322</td><td>2018-04-01</td><td></td><td>2018-04-01</td><td><img src='<c:url value="/image/search/003-plane.png"/>'/>:789</td></tr> --%>
<%-- 			<tr><td>06:40</td><td>3時10分</td><td>09:50</td><td><img src='<c:url value="/image/search/002-desk-chair.png"/>'/>:經濟艙(F)</td></tr> --%>
<%-- 			<tr><td>TPE(台北)</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>HKG(香港)</td><td><img src='<c:url value="/image/search/001-suitcase.png"/>'/>:30kg</td></tr> --%>
<!-- 			</tbody> -->
<!-- 		</table> -->
<!-- 		<table style="border:2px solid #003C9D;width:100%"> -->
<%-- 			<thead><tr><th>回程 : </th><th>HKG<img src='<c:url value="/image/search/003-plane.png"/>'/></th><th>TPE</th></tr></thead> --%>
<!-- 			<tbody> -->
<%-- 			<tr><td rowspan="4">NX322</td><td>2018-04-01</td><td></td><td>2018-04-01</td><td><img src='<c:url value="/image/search/003-plane.png"/>'/>:789</td></tr> --%>
<%-- 			<tr><td>06:40</td><td>3時10分</td><td>09:50</td><td><img src='<c:url value="/image/search/002-desk-chair.png"/>'/>:經濟艙(F)</td></tr> --%>
<%-- 			<tr><td>TPE(台北)</td><td><img src='<c:url value="/image/search/004-arrows.png"/>'/></td><td>HKG(香港)</td><td><img src='<c:url value="/image/search/001-suitcase.png"/>'/>:30kg</td></tr> --%>
<!-- 			</tbody> -->
<!-- 		</table><br/> -->
<!-- 		<p>托運行李</p>  -->
<!-- 		<p>1.託運行李相關規定請參照航空公司官方網站行李限制說明。</p> -->
<!-- 		<p>2.聯合營運航班需依實際承運航空公司託運行李相關規定為主。</p> -->
<!-- 		<p>3.託運行李若以件數計算，則每1件不得超過20公斤；若以重量計算，則不得超過表列之公斤數。</p> -->
<!-- 		<p>4.託運行李資訊是根據航空公司於訂位系統中的票價規則進行自動分析而取得，本公司不保證其準確性，得依實際開票時之確認為準， 開票後如有變動，恕不另行通知。</p> -->
<!-- 		<p>5.行李是否可直掛目的地，須依航空公司、當地政府、機場規定為準。</p> -->
<!-- 		</div> -->
<!-- 		</div><br/> -->
	</div><!-- flightsResult結束 -->
	
	<jsp:include page="/page/shared/footer.jsp" />
	<script>
 	function takedata(){
 		
 		var place = $(this).parent().parent().parent().parent().parent();
		var tbodygo=place.find("div:eq(0) table:eq(0) tbody:eq(0)");
		
		//去程
		//轉機的第一筆資料
		var gomodel1=tbodygo.find("tr:eq(0) td:eq(0)").text();
		var gogodate1=tbodygo.find("tr:eq(0) td:eq(1)").text();
		var goarriveddate1=tbodygo.find("tr:eq(0) td:eq(3)").text();
		var goflight1=tbodygo.find("tr:eq(0) td:eq(4)").text();
		
		var gogotime1 = tbodygo.find("tr:eq(1) td:eq(0)").text();
		var goflighttime1 = tbodygo.find("tr:eq(1) td:eq(1)").text();
		var goarrivedtime1 = tbodygo.find("tr:eq(1) td:eq(2)").text();
		var gocabin1=tbodygo.find("tr:eq(1) td:eq(3)").text();
		
		var gostartplace1 = tbodygo.find("tr:eq(2) td:eq(0)").text();
		var goarrivedplace1 = tbodygo.find("tr:eq(2) td:eq(2)").text();
		var goweight1 = tbodygo.find("tr:eq(2) td:eq(3)").text();
		
// 		console.log(tbodygo.find("tr:eq(3)")[0]!=undefined);
//		是否有轉機 true=有

		if(tbodygo.find("tr:eq(3)")[0]!=undefined){
			var gomodel2=tbodygo.find("tr:eq(3) td:eq(0)").text();
			var gogodate2=tbodygo.find("tr:eq(3) td:eq(1)").text();
			var goarriveddate2=tbodygo.find("tr:eq(3) td:eq(3)").text();
			var goflight2=tbodygo.find("tr:eq(3) td:eq(4)").text();
			
			var gogotime2 = tbodygo.find("tr:eq(4) td:eq(0)").text();
			var goflighttime2 = tbodygo.find("tr:eq(4) td:eq(1)").text();
			var goarrivedtime2 = tbodygo.find("tr:eq(4) td:eq(2)").text();
			var gocabin2=tbodygo.find("tr:eq(4) td:eq(3)").text();
			
			var gostartplace2 = tbodygo.find("tr:eq(5) td:eq(0)").text();
			var goarrivedplace2 = tbodygo.find("tr:eq(5) td:eq(2)").text();
			var goweight2 = tbodygo.find("tr:eq(5) td:eq(3)").text();

		}
		if(place.find("div:eq(0) table:eq(0) tbody:eq(1)")[0]!=undefined){
			var tbodyback=place.find("div:eq(0) table:eq(0) tbody:eq(1)");
			//回程
			//轉機的第一筆資料
			var backmodel1 = tbodyback.find("tr:eq(0) td:eq(0)").text();
			var backgodate1 = tbodyback.find("tr:eq(0) td:eq(1)").text();
			var backarriveddate1 = tbodyback.find("tr:eq(0) td:eq(3)").text();
			var backflight1 = tbodyback.find("tr:eq(0) td:eq(4)").text();
			
			var backgotime1 = tbodyback.find("tr:eq(1) td:eq(0)").text();
			var backflighttime1 = tbodyback.find("tr:eq(1) td:eq(1)").text();
			var backarrivedtime1 = tbodyback.find("tr:eq(1) td:eq(2)").text();
			var backcabin1=tbodyback.find("tr:eq(1) td:eq(3)").text();
			
			var backstartplace1 = tbodyback.find("tr:eq(2) td:eq(0)").text();
			var backarrivedplace1 = tbodyback.find("tr:eq(2) td:eq(2)").text();
			var backweight1 = tbodyback.find("tr:eq(2) td:eq(3)").text();
			
// 			console.log("back1")
// 			console.log(backmodel1)
// 	 		console.log(backgodate1)
// 	 		console.log(backarriveddate1)
// 	 		console.log(backflight1)
			
// 	 		console.log(backgotime1)
// 	 		console.log(backflighttime1)
// 	 		console.log(backarrivedtime1)
// 	 		console.log(backcabin1)
			
// 	 		console.log(backstartplace1)
// 	 		console.log(backarrivedplace1)
// 	 		console.log(backweight1)
			
			if(tbodyback.find("tr:eq(3)")[0]!=undefined){
				var backmodel2 = tbodyback.find("tr:eq(3) td:eq(0)").text();
				var backgodate2 = tbodyback.find("tr:eq(3) td:eq(1)").text();
				var backarriveddate2 = tbodyback.find("tr:eq(3) td:eq(3)").text();
				var backflight2 = tbodyback.find("tr:eq(3) td:eq(4)").text();
				
				var backgotime2 = tbodyback.find("tr:eq(4) td:eq(0)").text();
				var backflighttime2 = tbodyback.find("tr:eq(4) td:eq(1)").text();
				var backarrivedtime2 = tbodyback.find("tr:eq(4) td:eq(2)").text();
				var backcabin2=tbodyback.find("tr:eq(4) td:eq(3)").text();
				
				var backstartplace2 = tbodyback.find("tr:eq(5) td:eq(0)").text();
				var backarrivedplace2 = tbodyback.find("tr:eq(5) td:eq(2)").text();
				var backweight2 = tbodyback.find("tr:eq(5) td:eq(3)").text();
				
// 				console.log("back2")
// 				console.log(backmodel2)
// 		 		console.log(backgodate2)
// 		 		console.log(backarriveddate2)
// 		 		console.log(backflight2)
				
// 		 		console.log(backgotime2)
// 		 		console.log(backflighttime2)
// 		 		console.log(backarrivedtime2)
// 		 		console.log(backcabin2)
				
// 		 		console.log(backstartplace2)
// 		 		console.log(backarrivedplace2)
// 		 		console.log(backweight2)
			}
		}
		
		
		
		
// 		console.log(gomodel2)
// 		console.log(gogodate2)
// 		console.log(goarriveddate2)
// 		console.log(goflight2)
		
// 		console.log(gogotime2)
// 		console.log(goflighttime2)
// 		console.log(goarrivedtime2)
// 		console.log(gocabin2)
		
// 		console.log(gostartplace2)
// 		console.log(goarrivedplace2)
// 		console.log(goweight2)
		
	}
 	
 	//ajax傳資料給後端
 	$.ajax({
 		type:"POST",
 		data:{
 			"gomodel1":gomodel1,
 			"gogodate1":gogodate1,
 			"goarriveddate1":goarriveddate1,
			"goflight1":goflight1,
			"gogotime1":gogotime1,
			"goflighttime1":goflighttime1,
			"goarrivedtime1":goarrivedtime1,
			"gocabin1":gocabin1,
			"gostartplace1":gostartplace1,
			"goarrivedplace1":goarrivedplace1,
			"goweight1":goweight1,
 		
			"gomodel2":gomodel2,
			"gomodel2":gogodate2,
			"goarriveddate2":goarriveddate2,
			"goflight2":goflight2,
			"gogotime2":gogotime2,
			"goflighttime2":goflighttime2,
			"goarrivedtime2":goarrivedtime2,
			"gocabin2":gocabin2,
			"gostartplace2":gostartplace2,
			"goarrivedplace2":goarrivedplace2,
			"goweight2":goweight2,
			
			
			"backmodel1":backmodel1,
			"backgodate1":backgodate1,
			"backarriveddate1":backarriveddate1,
			"backflight1":backflight1,
		
			"backgotime1":backgotime1,
			"backflighttime1":backflighttime1,
			"backarrivedtime1":backarrivedtime1,
			"backcabin1":backcabin1,
		
			"backstartplace1":backstartplace1,
			"backarrivedplace1":backarrivedplace1,
			"backweight1":backweight1,
 		
 		}
 	})
 	
	</script>
	<jsp:include page="/page/search/myjs/searchjs.jsp" />
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
	
</body>
</html>