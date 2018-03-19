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
	<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;資料確認</h1>
	<br/>
		<table class="table table1">
			<thead>
				<tr>
					<th colspan="7">
						<h3>機票資訊</h3>
					</th>
				</tr>
			</thead>
			<thead class="table1th">
				<tr>
					<th></th>
					<th>機票金額:</th>
					<th>${flightprice}元<span style="color:red">(台幣)</span></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th>大人人數:</th>
					<th>${go1.adult}人</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th>小孩人數:</th>
					<th>${go1.child}人</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>

	        	<tr>
	                <th></th>
	                <th>班機機型</th>
	                <th>起飛</th>
	                <th style="width: 20px"></th>
	                <th>降落</th>
	                <th>飛行時間</th>
	                <th></th>
	        	</tr>
			</thead>
	        <tbody>
	            <tr>
	                <th rowspan="6">去程:</th>
	                <td rowspan="3">${go1.model}</td>
	                <td rowspan="2">${go1.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${go1.downtime}</td>
	                <td rowspan="3">${go1.flighttime}</td>
	                <td>航班：${go1.flight}</td>
	            </tr>
	            <tr>
	                <td>艙等：${go1.cabin}</td>
	            </tr>
	            <tr>
	                <td>${go1.start}</td>
	                <td></td>
	                <td>${go1.endstart}</td>
	                <td>重量：30kg</td>
	            </tr>
	            <c:if test="${not empty go2}">
	            <tr>
	                <td rowspan="3">${go2.model}</td>
	                <td rowspan="2">${go2.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${go2.downtime}</td>
	                <td rowspan="3">${go2.flighttime}</td>
	                <td>航班：${go2.flight}</td>
	            </tr>
	            <tr>
	                <td>艙等：${go2.cabin}</td>
	            </tr>
	            <tr>
	                <td>${go2.start}</td>
	                <td></td>
	                <td>${go2.endstart}</td>
	                <td>重量：30kg</td>
	            </tr>
	            </c:if>
	        </tbody>
	    </table>

	    <c:if test="${not empty back1}">
	    <table class="table table-sm table1">
			<thead  class="table1th">
	        	<tr>
	                <th></th>
	                <th>班機機型</th>
	                <th>起飛</th>
	                <th style="width: 20px"></th>
	                <th>降落</th>
	                <th>飛行時間</th>
	                <th></th>
	        	</tr>
			</thead>
			
	        <tbody>
	            <tr>
	                <th rowspan="6">回程:</th>
	                <td rowspan="3">${back1.model}</td>
	                <td rowspan="2">${back1.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${back1.downtime}</td>
	                <td rowspan="3">${back1.flighttime}</td>
	                <td>航班：${back1.flight}</td>
	            </tr>
	            <tr>
	                <td>艙等：${back1.cabin}</td>
	            </tr>
	            <tr>
	                <td>${back1.start}</td>
	                <td></td>
	                <td>${back1.endstart}</td>
	                <td>重量：30kg</td>
	            </tr>
	            <c:if test="${not empty back2}">
	            <tr>
	                <td rowspan="3">${back2.model}</td>
	                <td rowspan="2">${back2.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${back2.downtime}</td>
	                <td rowspan="3">${back2.flighttime}</td>
	                <td>航班：${back2.flight}</td>
	            </tr>
	            <tr>
	                <td>艙等：${back2.cabin}</td>
	            </tr>
	            <tr>
	                <td>${back2.start}</td>
	                <td></td>
	                <td>${back2.endstart}</td>
	                <td>重量：30kg</td>
	            </tr>
	            </c:if>
	        </tbody>
	        
        </table>
        </c:if>
        <br />
	</div>
	<br />

	<div  class = "container">
		<table class="table table-sm">
	        <thead >
				<tr>
					<th colspan="2">
						<h4>聯絡人資料確認</h4>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>電子郵件:</td>
					<td>${obean.email}</td>
				</tr>
				<tr>
					<td>聯絡人姓氏:</td>
					<td>${obean.efirstname}</td>
				</tr>
				<tr>
					<td>聯絡人名字:</td>
					<td>${obean.elastname}</td>
				</tr>
				<tr>
					<td>聯絡人電話:</td>
					<td>${obean.ephone}</td>
				</tr>
			</tbody>
		</table>
		</div>
		<br />
		<!-- 		<table class="checktable"> -->
		<!-- 			<thead> -->
		<!-- 				<tr> -->
		<!-- 					<th>乘客資料</th> -->
		<!-- 					<th></th> -->
		<!-- 				</tr> -->
		<!-- 			</thead> -->
		<!-- 			<tbody> -->
		<!-- 				<tr> -->
		<!-- 					<td>姓氏(護照上的英文姓):</td> -->
		<%-- 					<td>${pbean.firstname}</td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr> -->
		<!-- 					<td>名字(護照上的英文名):</td> -->
		<%-- 					<td>${pbean.lastname}</td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr> -->
		<!-- 					<td>聯絡電話:</td> -->
		<%-- 					<td>${pbean.phone}</td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr> -->
		<!-- 					<td>孩童:</td> -->
		<!-- 					<td></td> -->
		<!-- 				</tr> -->
		<!-- 				<tr> -->
		<!-- 					<td>生日:</td> -->
		<%-- 					<td>${pbean.brithday}</td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr> -->
		<!-- 					<td>幾個月</td> -->
		<%-- 					<td>${pbean.brithmonth}</td> --%>
		<!-- 				</tr> -->
		<!-- 			</tbody> -->
		<!-- 		</table> -->

		<!-- 		<table class="checktable"> -->
		<!-- 			<thead> -->
		<!-- 				<tr> -->
		<!-- 					<th>聯絡人資訊</th> -->
		<!-- 					<th></th> -->
		<!-- 				</tr> -->
		<!-- 			</thead> -->
		<!-- 			<tbody> -->
		<!-- 				<tr> -->
		<!-- 					<td>姓氏:</td> -->
		<%-- 					<td>${error.err}</td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr> -->
		<!-- 					<td>名字:</td> -->
		<%-- 					<td>${error.err}</td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr> -->
		<!-- 					<td>緊急連絡電話:</td> -->
		<%-- 					<td>${error.err}</td> --%>
		<!-- 				</tr> -->

		<!-- 			</tbody> -->
		<!-- 		</table> -->
		<!-- 	</div> -->
		<div id="passengerVeiw">
		
		<c:if test="${not empty abean1}">
			<div  class ="container">
				<table  class="table table-sm">
		        	<thead>
						<tr>
							<th colspan="2">
								乘客1
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>FirstName:</td>
							<td>${abean1.firstname}</td>
						</tr>
						<tr>
							<td>LastName:</td>
							<td>${abean1.lastname}</td>
						</tr>
						<tr>
							<td>連絡電話:</td>
							<td>${abean1.phone}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</c:if>
		
			<br />
					
		<c:if test="${not empty abean2}">
		<div  class ="container">
			<table class="table table-sm">
	        	<thead >
					<tr>
						<th colspan="2">乘客2</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${abean2.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${abean2.lastname}</td>
					</tr>
					<tr>
						<td>連絡電話:</td>
						<td>${abean2.phone}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
			<br />
		
		<c:if test="${not empty abean3}">
		<div  class ="container">
			<table  class="table table-sm">
		        <thead>
					<tr>
						<th colspan="2">乘客3</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${abean3.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${abean3.lastname}</td>
					</tr>
					<tr>
						<td>連絡電話:</td>
						<td>${abean3.phone}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
		
			<br />
		
		<c:if test="${not empty abean4}">
		<div  class ="container">
			<table  class="table table-sm">
		        <thead>
					<tr>
						<th colspan="2">乘客4</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${abean4.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${abean4.lastname}</td>
					</tr>
					<tr>
						<td>連絡電話:</td>
						<td>${abean4.phone}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
			<br />
		
		<c:if test="${not empty cbean1}">
		<div  class ="container">
			<table  class="table table-sm">
		        <thead>
					<tr>
						<th colspan="2">孩童1</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${cbean1.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${cbean1.lastname}</td>
					</tr>
					<tr>
						<td>生日:</td>
						<td>${cbean1.kidbirthday}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
		
			<br />
		
		<c:if test="${not empty cbean2}">
		<div  class ="container">
				<table  class="table table-sm">
		        	<thead>
						<tr>
							<th colspan="2">孩童2</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${cbean2.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${cbean2.lastname}</td>
					</tr>
					<tr>
						<td>生日:</td>
						<td>${cbean2.kidbirthday}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>

		<br />
		
		<c:if test="${not empty cbean3}">
		<div  class ="container">
			<table  class="table table-sm">
		        <thead>
					<tr>
						<th colspan="2">孩童3</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${cbean3.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${cbean3.lastname}</td>
					</tr>
					<tr>
						<td>生日:</td>
						<td>${cbean3.kidbirthday}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
		
			<br />
		
		<c:if test="${not empty cbean4}">
		<div  class ="container">
				<table  class="table table-sm">
		        	<thead>
						<tr>
							<th colspan="2">孩童4</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${cbean4.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${cbean4.lastname}</td>
					</tr>
					<tr>
						<td>生日:</td>
						<td>${cbean4.kidbirthday}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
		</div>
		<br />
		<script>
// 			$(document)
// 					.ready(
// 							function() {

// 								var documentFragment1 = $(document
// 										.createDocumentFragment());

// 								var adult = parseInt("${go1.adult}");
// 								for (var i = 1; i <= adult; i++) {
// 									var pid = "p" + i;

// 									var atable1 = $("<table></table>");

// 									var athead1 = $("<thead></thead>");
// 									var athtr1 = $("<tr></tr>");
// 									var athth1 = $("<th></th>");
// 									athth1.text("乘客" + i);
// 									var athth2 = $("<th></th>");

// 									var atr1 = athtr1.append(athth1).append(
// 											athth2);
// 									var athead = athead1.append(atr1);

// 									var atbody1 = $("<tbody></tbody>");
// 									var atbtr1 = $("<tr></tr>");
// 									var atbtd11 = $("<td></td>").text(
// 											"FirstName:");
// 									var atbtd12 = $("<td></td>").text("value");

// 									var atbtr2 = $("<tr></tr>");
// 									var atbtd21 = $("<td></td>").text(
// 											"LastName:");
// 									var atbtd22 = $("<td></td>").text("value");

// 									var atbtr3 = $("<tr></tr>");
// 									var atbtd31 = $("<td></td>").text("連絡電話:");
// 									var atbtd32 = $("<td></td>").text("value");

// 									var atbtr1 = atbtr1.append(atbtd11).append(
// 											atbtd12);
// 									var atbtr2 = atbtr2.append(atbtd21).append(
// 											atbtd22);
// 									var atbtr3 = atbtr3.append(atbtd31).append(
// 											atbtd32);

// 									var atbody = atbody1.append(atbtr1).append(
// 											atbtr2).append(atbtr3);

// 									var divrow = $("<div></div>");

// 									var atable = atable1.append(athead).append(
// 											atbody);
// 									divrow.append(atable);
// 									documentFragment1.append(divrow);

// 								}//forloop END

// 								var documentFragment2 = $(document
// 										.createDocumentFragment());
// 								var child = parseInt("${go1.child}");
// 								if (child >= 1) {
// 									for (var j = 1; j <= child; j++) {
// 										var cid = "c" + j;
// 										var ctable1 = $("<table></table>");

// 										// 				alert(child)
// 										var cthead1 = $("<thead></thead>");
// 										var cthtr1 = $("<tr></tr>");
// 										var cthth1 = $("<th></th>");
// 										cthth1.text("孩童" + i);
// 										var cthth2 = $("<th></th>");

// 										var ctr1 = cthtr1.append(cthth1)
// 												.append(cthth2);
// 										var cthead = cthead1.append(ctr1);

// 										var ctbody1 = $("<tbody></tbody>");

// 										var ctbtr1 = $("<tr></tr>");
// 										var ctbtd11 = $("<td></td>").text(
// 												"FirstName:");
// 										var ctbtd12 = $("<td></td>").text(
// 												"value");

// 										var ctbtr2 = $("<tr></tr>");
// 										var ctbtd21 = $("<td></td>").text(
// 												"LastName:");
// 										var ctbtd22 = $("<td></td>").text(
// 												"value");

// 										var ctbtr3 = $("<tr></tr>");
// 										var ctbtd31 = $("<td></td>")
// 												.text("生日:");
// 										var ctbtd32 = $("<td></td>").text(
// 												"value");

// 										var ctbtr1 = ctbtr1.append(ctbtd11)
// 												.append(ctbtd12);
// 										var ctbtr2 = ctbtr2.append(ctbtd21)
// 												.append(ctbtd22);
// 										var ctbtr3 = ctbtr3.append(ctbtd31)
// 												.append(ctbtd32);

// 										var ctbody = ctbody1.append(ctbtr1)
// 												.append(ctbtr2).append(ctbtr3);

// 										var divrow = $("<div></div>");

// 										var ctable = ctable1.append(cthead)
// 												.append(ctbody);
// 										divrow.append(ctable);

// 										documentFragment2.append(divrow);
// 									}
// 								}

// 								var submit = $("<input></input>");
// 								submit.attr({
// 									type : "submit",
// 									value : "確認送出"
// 								}).addClass("btn btn-success");

// 								var button1 = $("<input></input>");
// 								button1.attr({
// 									type : "button",
// 									value : "返回查詢結果"
// 								}).addClass("btn btn-success");
// 								var button2 = $("<input></input>");
// 								button2.attr({
// 									type : "button",
// 									value : "回首頁"
// 								}).addClass("btn btn-success");

// 								$("#passengerVeiw").append(documentFragment1)
// 										.append(documentFragment2).append(
// 												submit).append(button1).append(
// 												button2);

// 							});
		</script>
		<br/>
		<div class="container" style="padding:0 23% 45px 23%;background:rgba(255, 244, 194,0);">
			<div>
<form id="formWebATM" method="post" accept-charset="UTF-8"
 action="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5">
	<div style="display:none">
		MerchantID 商店代號:
		<input type="text" name="MerchantID" value="2000132" /><br />
		MerchantTradeNo 商店交易編號: 
		<input type="text" id="tradeNo" name="MerchantTradeNo" value="" /><br />
		MerchantTradeDate 商店交易時間: 
		<input type="text" id="dateOpay" name="MerchantTradeDate" value="" /><br />
		PaymentType 交易類型: 
		<input type="text" name="PaymentType" value="aio" /><br />
		TotalAmount 交易金額: 
		<input type="text" id="price" name="TotalAmount" value="${flightprice}" /><br />
		TradeDesc 交易描述: 
		<input type="text" id="desc"name="TradeDesc" value="" /><br />
		ItemName 商品名稱: 
		<input type="text" name="ItemName" value="StartTrip" /><br />
		ReturnURL 付款完成通知回傳網址: 
		<input type="text" name="ReturnURL" value="https://developers.opay.tw/AioMock/MerchantReturnUrl" /><br />
		ChoosePayment 預設付款方式: 
		<input type="text" name="ChoosePayment" value="ALL" /><br />
		會員商店代碼: 
		<input type="text" name="StoreID" value="" /><br />
		ChooseSubPayment 預設子付款方式: 
		<input type="text" name="ChooseSubPayment" value="" /><br />
		ClientBackURL Client端返回廠商網址: 
		<input type="text" name="ClientBackURL" value="http://localhost:8080/StartTrip/Searchview.controller" /><br />
		CheckMacValue 簽章類型: 
		<input type="text" name="EncryptType" value="1" /><br />
		CheckMacValue 檢查碼: 
		<input type="text" id="sha" name="CheckMacValue" value="" /><br />
	</div>
	<div id="bookRide">
		<input type="submit" value="確認，前往付款(歐付保)" class="btn btn-secondary" style="opacity: 0.8;padding-right:10px;" />
	</div>
</form>
				<form action="<c:url value='/page/search/06ourpay.jsp'/>">
				<input class="btn btn-secondary" style="opacity: 0.8;padding-right:10px;" type="submit" value="確認，前往付款(站內)" />
				</form>
				<a href="04enter.jsp"><input   class="btn btn-secondary" style="opacity: 0.8"   type="button" value="返回" /></a>
			</div>
		</div>

		<jsp:include page="/page/shared/footer.jsp" />
		<jsp:include page="/page/shared/myjs/loginjs.jsp" />
<script>
$(function(){
	$.get("<c:url value='/oPay.controller'/>",{"TotalAmount":"${flightprice}"},function(data){
		var input = data;
		$("#price").val(input.price);
		$("#dateOpay").val(input.date);
		$("#tradeNo").val(input.tradeNo);
		$("#desc").val(input.desc);
		$("#sha").val(input.sha);
	})
})
</script>
</body>
</html>