<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>首頁</title>


<!-- 彈跳視窗需要 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="google-signin-client_id"
	content="731303854433-8mlq24ikh4gnnbdff1dbhkmpgk3hou01.apps.googleusercontent.com">


	<link href="<c:url value='/css/search/jquery-ui.min.css'/>"type="text/css" rel="stylesheet">
	<link href="<c:url value='/css/search/index.css'/>" type="text/css"rel="stylesheet" />
	<link href="<c:url value='/css/login/bouncebutton.css'/>"type="text/css" rel="stylesheet" />
	<link href="<c:url value='/css/login/FB&Googlebutton.css'/>" rel="stylesheet" >
	
	
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
	<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>

	<jsp:include page="/page/shared/myjs/datepickerjs.jsp" />

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
						出發地:<input class="citytext" type="text" name="goplace" value="TPE台北桃園(TPE)" required="required"autocomplete="off"/> 
						目的地:<input class="citytext" type="text" name="endplace" required="required" autocomplete="off"/>
					</div>
				</div>
				<div class="searchdiv">
					<h3>人數:</h3>
					<input type="submit" class="searchsubmit"  value="查詢" />

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

						去程: <input type="text"autocomplete="off"id="datego" name="gotime" required="required" size="40"/>
						<br> 
						<div id="datebackdiv">
						回程: <input type="text"autocomplete="off"id="dateback"name="backtime" required="required"size="40" />
						</div>

					</div>

				</div>
				<div class="searchdiv" style="padding-bottom: 2%">

					<input type="radio" name="way" id="double" required value="Return" checked />

						<label for="double">來回</label> 
					<input type="radio" class="form-control"name="way" id="one" value="OneWay" />
						<label for="one">單程</label>
					艙等: <select name="cabin">
						<option value="Y">經濟艙</option>
						<option value="S">豪華經濟艙</option>
						<option value="C">商務艙</option>
						<option value="J">豪華商務艙</option>
						<option value="F">頭等艙</option>
						<option value="P">豪華頭等艙</option>
					</select>
				</div>
			</div>
		</form>
		
		<script>
			$(".searchsubmit").click(function() {
				$("#loadingback").css({"display":"block"})
				$("#loadshowbox").css({"display":"block"})
			})
		</script>
	</article>
<jsp:include page="/page/shared/footer.jsp" />
<div id="dialogEmail" title="客服信箱" >
    	<form action="<c:url value='/CustomerServiceMail' />" method="post">
			<div >
				<label id="CSEmail">Email：</label>
					<input maxlength="40"type="text" name="csEmailinput" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" 
					tabindex="1" placeholder="請填寫正確Email" spellcheck="false" required />
				<div><label >內容種類：</label>
					<select name="cdComplaint" >
						<option selected value="stservice">服務</option>
						<option value="product">商品</option>
						<option value="other">其他</option>
					</select>
				</div>
				<label id="CSContent" >文字內容：</label>
				<div >
				<input type="text" class="heighttext" placeholder="限200字內，禁不雅言語。" name="csContentinput" spellcheck="false" maxlength="200" required/>
				</div>
				<div>
					<input type="submit" value="送出" onclick="sdCSmail()" />
				</div>
			</div>
		</form>
	</div>
<script>
$(function() {
	$("#dialogEmail").dialog({autoOpen : false,modal: true,draggable: false,
		position: { my: "right top", at: "right bottom",},
		show : {effect : "blind",duration : 1000},
		hide : {effect : "blind",duration : 1000}});
	$("#openerEmail").on("click", function() {
		$("#dialogEmail").dialog("open");
	});
});
</script>

<jsp:include page="/page/shared/myjs/loginjs.jsp" />
<jsp:include page="/page/search/myjs/firstsearchjs.jsp" />



		<div class="loadingback"id="loadingback" ></div>
		<div class="loadshowbox" id="loadshowbox"><img src="<c:url value='/image/search/loading.gif'/>"></div>
	</body>
</html>
