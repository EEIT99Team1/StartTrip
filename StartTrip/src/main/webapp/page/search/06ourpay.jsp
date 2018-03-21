<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乘客資料確認</title>
<link href="<c:url value='/css/search/jquery-ui.min.css'/>"
	type="text/css" rel="stylesheet">
<link href="<c:url value='/css/login/bouncebutton.css'/>"
	type="text/css" rel="stylesheet" />
<link href="<c:url value='/css/login/FB&Googlebutton.css'/>"
	rel="stylesheet">
<link rel="shortcut icon" href="<c:url value='/page/login/img/webicon.ico'/>" />
<link href="<c:url value='/css/title.css'/>" type="text/css"
	rel="stylesheet" />
<link href="<c:url value='/css/footer.css'/>" type="text/css"
	rel="stylesheet" />
<%-- 	<link href="<c:url value='/css/search/searchbody.css'/>" type="text/css" rel="stylesheet" /> --%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>

<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

<style type="text/css">

.container{
width: 900px;
background:rgba(209, 209, 209,0.7);
}

.table {
	width: 96%;
	margin:auto;

	padding:0;
}

.table th{
	vertical-align: middle;
}
.table td{
	width: 50%;
	text-align: center;
	vertical-align: middle;

}

.table1 td{
	text-align: center;
	vertical-align: middle;
	width: auto;
}
.table1th{
	text-align: center;
	vertical-align: middle;
}

body{
background:rgba(255, 244, 194,0.6);
}
.pay-card-num li{
	list-style-type:none;
}
</style>
<jsp:include page="/page/shared/myjs/headerstylejs.jsp" />
</head>
<body>
	<jsp:include page="/page/shared/header.jsp" />
	<br />
	<br />
	<br />

	
	<div class = "container">
	<br/>
	<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;付款資訊</h1>
	<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;總金額:${flightprice}</h4>
	<div class="pay-tab-form">
		<dl class="noUnionPay">                                 
		  <dt class="divCustonCardNo"><label><sup class="inp-required">*</sup>信用卡號</label></dt>
		   <dd>
		  <ul class="pay-card-num divCustonCardNo">
		         <li class="card-num">
		            <input id="CCpart1" name="CCpart1" type="text" maxlength="4" class="card_number creditNum" autocomplete="off"> - 
		            <input id="CCpart2" name="CCpart2" type="text" maxlength="4" class="card_number creditNum" autocomplete="off"> - 
		            <input id="CCpart3" name="CCpart3" type="text" maxlength="4" class="card_number creditNum" autocomplete="off"> - 
		            <input id="CCpart4" name="CCpart4" type="text" maxlength="4" class="card_number creditNum" autocomplete="off">
		         </li>
		         <li class="card-type">
		            <span id="visa" class="picCreadit cc-icon cc-visa" style="display:none;"></span>
		        <span id="master" class="picCreadit cc-icon cc-mc" style="display:none;"></span>
		        <span id="jbc" class="picCreadit cc-icon cc-jcb" style="display:none;"></span>
		        <span class="ptf-txt" id="showBankName" style="color:#227BBB"></span>
		            </li>
		         </ul>
		
		         
		      </dd>
		   </dl>
		   <dl class="noUnionPay pay-card-date creditBinding">
		      <dt><sup class="inp-required">*</sup>卡片有效期限</dt>
		      <dd>
		         <input type="text" id="CreditMM" name="CreditMM" placeholder="MM" autocomplete="off" maxlength="2">
		         <input type="text" id="CreditYY" name="CreditYY" placeholder="YY" autocomplete="off" maxlength="2">
		      </dd>
		      <dd class="pay-card-ccvb">
		         <dl>
		            <dt><sup class="inp-required">*</sup>背面末 3 碼</dt>
		            <dd>
		               <input type="text" id="CreditAuth" name="CreditAuth" placeholder="背面末 3 碼" autocomplete="off" maxlength="3">
		            </dd>
		         </dl>
		      </dd>
		   </dl>
	       <dl class="noLogin">
	             <dt><label for="p_mobile_num_4"><sup class="inp-required">*</sup>手機號碼</label></dt>
	             <dd><input type="tel" id="CellPhone_CreditPaySubmit" class="cellPhoneCheck" value="" placeholder="請輸入台灣手機號碼"></dd>
	       </dl>
	       <br/>
		</div>
	</div>
	<br />
	<div  class = "container">
		<div id="passengerVeiw"></div>
		<div   class = "container" style="padding:0 23% 45px 23%;background:rgba(255, 244, 194,0);">
		<form action="<c:url value='/Searchview.controller'/>"method="get">
			<div>
				<input class="btn btn-success" style="padding-right:10px;" type="submit" value="確認，付款" />
				<a href="04enter.jsp"><input class="btn btn-success"  type="button" value="返回" /></a>
			</div>
		</form>
		</div>
	</div>
		<jsp:include page="/page/shared/footer.jsp" />
		<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>