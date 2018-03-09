<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>首頁</title>


<!-- 彈跳視窗需要 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="google-signin-client_id"
	content="731303854433-8mlq24ikh4gnnbdff1dbhkmpgk3hou01.apps.googleusercontent.com">


<link href="<c:url value='/css/search/jquery-ui.min.css'/>"type="text/css" rel="stylesheet">

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>

<script>
	$(function() {
		$("#datego").datepicker()
	});
	$(function() {
		$("#dateback").datepicker();
	});

	$(function() {
		$("#datepicker").datepicker();
		$.datepicker.setDefaults({
			dateFormat : "yy-mm-dd"
		});
	})
</script>

</head>
<body>
	
	<jsp:include page="/page/shared/indexheader.jsp" />
	

	<article class="mainbody">
		<form class="search" action="FlightGet.controller" method="get">
			<div>
				<div class="searchdiv">
					<h3>地點:</h3>
					<img src="<c:url value='/image/search/mappoint.png'/>" />
					<div class="searchline">
						出發地:<input class="citytext" type="text" name="goplace" /> 
						目的地:<input class="citytext" type="text" name="endplace" />
					</div>
				</div>
				<div class="searchdiv">
					<h3>人數:</h3>
					<input type="submit" class="searchsubmit" value="查詢" />

					<div class="searchline">
						大人: <select name="adult">
								<option value="1">1人</option>
								<option value="2">2人</option>
								<option value="3">3人</option>
								<option value="4">4人</option>
							  </select> 
						小孩: <select name="child">
								<option value="0">0人</option>
								<option value="1">1人</option>
								<option value="2">2人</option>
								<option value="3">3人</option>
								<option value="4">4人</option>
							  </select>
					</div>

				</div>
				<div class="searchdiv">
					<h3>日期:</h3>
					<div class="searchline">
						去程: <input type="text" id="datego" name="gotime" /> 
						回程: <input type="text" id="dateback" name="backtime" />
					</div>

				</div>
				<div class="searchdiv" style="padding-bottom: 2%">
					<input type="radio" name="way" id="double" required value="Return"checked />
						<label for="double">來回</label> 
					<input type="radio"name="way" id="one" value="OneWay" />
						<label for="one">單程</label>
					艙等: <select name="cabin">
						<option value="Y">經濟客艙</option>
						<option value="Y">商務艙</option>
						<option value="Y">豪華商務艙</option>
						<option value="Y">頭等艙</option>
					</select>
				</div>
			</div>
		</form>
	</article>

<jsp:include page="/page/shared/footer.jsp" />
<jsp:include page="/page/shared/myjs/loginjs.jsp" />
<jsp:include page="/page/search/myjs/firstsearchjs.jsp" />
	</body>
</html>
