<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>查詢結果</title>
	<style type="text/css">
	 body { 
	             background: #111111 url('../../image/search/searchback.jpg') no-repeat fixed 50% 50%;
	             /*圖片畫面置中不重複*/
	           background-size: cover; /*圖片隨頁面縮放大小*/ 
	           margin:auto; 
	       }
	</style>
	
	<jsp:include page="/css/headerlink.jsp" />

	
	<link href="<c:url value='/css/search/searchbody.css'/>" type="text/css" rel="stylesheet" />
	
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>

	<jsp:include page="/page/shared/myjs/headerstylejs.jsp" />
	<jsp:include page="/page/search/myjs/searchbar.jsp" />

</head>
<body>

	<jsp:include page="/page/shared/header.jsp" />

	<br/><br/><br/>
	<div id="clone"></div>
	<h1 style="margin-left:300px;">機票查詢結果</h1>
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

	<div id="flightsResult" class="mainbody" style="width:50%;margin:auto;">

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

	<jsp:include page="/page/search/myjs/ajaxdatasessionjs.jsp" />
	<jsp:include page="/page/search/myjs/searchjs.jsp" />
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
	
</body>
</html>