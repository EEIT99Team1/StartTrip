<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//code.jquery.com/jquery-2.1.1.min.js"></script>
</head>
<body>


<button id="reqBook">Request Booking</button>

<form id="formWebATM" method="post" accept-charset="UTF-8"
 action="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5">
<div style="display:none">
MerchantID 商店代號:
<input type="text" name="MerchantID" value="2000132" /><br />

MerchantTradeNo 商店交易編號: 
<input type="text" id="tradeNo" name="MerchantTradeNo" value="" /><br />

MerchantTradeDate 商店交易時間: 
<input type="text" id="date" name="MerchantTradeDate" value="" /><br />

PaymentType 交易類型: 
<input type="text" name="PaymentType" value="aio" /><br />

TotalAmount 交易金額: 
<input type="text" id="price" name="TotalAmount" value="" /><br />

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
<input type="text" name="ClientBackURL" value="https://developers.opay.tw/AioMock/MerchantClientBackUrl" /><br />

CheckMacValue 簽章類型: 
<input type="text" name="EncryptType" value="1" /><br />

CheckMacValue 檢查碼: 
<input type="text" id="sha" name="CheckMacValue" value="" /><br />
</div>
<div id="bookRide" style="display:none">
<input type="submit" value="Submit Booking" />
</div>
</form>
<script>
$("#reqBook").click(function(){
	$.get("<c:url value='/oPay.controller'/>",function(data){
		var input = data;
		$("#price").val(input.price);
		$("#date").val(input.date);
		$("#tradeNo").val(input.tradeNo);
		$("#desc").val(input.desc);
		$("#sha").val(input.sha);
		$("#bookRide").css("display","block");
	})
});
</script>
</body>
</html>