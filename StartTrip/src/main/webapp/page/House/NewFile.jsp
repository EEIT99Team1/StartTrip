<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<link href="<c:url value='/css/House/house.css'/>" type="text/css" rel="stylesheet" />
<link href="<c:url value='/css/House/room.css'/>" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>民宿</title>
<link rel="shortcut icon" href="<c:url value='/page/login/img/webicon.ico'/>" />
<style >
/* .w1{ */
/*     width:80%; */
/*     height:300px;  */
/*     border:2px solid #A1A1A1; */
/*     margin:15px; */
/*     border-radius:20px; */
/*     margin: auto; */
/*     margin-bottom:20px; */
/*     padding:1% */
/* } */

/* .w2{ */
/*     width:20%; */
/*     height:141px; */
/*     border:0px ; */
/*     margin:10px; */
/*     float:left; */
   
/* } */


</style>
</head>
<body>

<div class="f1" >

 <fieldset class="f2">
<img  style="width:100%;" src="http://localhost:8080/StartTrip/image/House/大安民宿.jpg">
</fieldset>
<h1 style="margin:0px">大安民宿</h1>
<p style= "margin:0px;margin:10px">地址: 大安區100號</p>
<p style= "margin:0px;margin:10px">電話: 931424266</p>
<p id="h1" style= "margin:0px;margin:10px">簡介: 大安最笨的民宿</p>

</div>



<div class="w1" >
 <fieldset class="w2">
  <h2  style="color:blue;margin:3px">豪華間1</h2>
<img  style="width:100%;" src="http://localhost:8080/StartTrip/image/House/大安民宿--安安間.jpg">
</fieldset>
<h3 style="margin:10px;color:#93ff93;padding-left:23%">入住人數:  4</h3>
<p style= "margin:10px;padding-left:23%">客房設備:</p>
<p style= "margin:10px;margin-bottom:15px;padding-left:25%">2張雙人床、浴室、書桌熨衣設備、110V電壓插座、房內保險箱、空調、衣櫃/衣櫥、暖氣、鬧鐘、針線包、遮光窗簾</p>
<p style= "margin:10px;padding-left:23%">服務:</p>
<p style= "margin:10px;margin-bottom:15px;padding-left:25%">沒有早餐、免費Wi-Fi、禁煙 </p>
<p style= "margin:10px;padding-left:23%">規則:</p>
<p style= "margin:10px;margin-bottom:0px;padding-left:25%">不可以退訂、入住時間1500~1200</p>
<h1 align="right" style= "margin-right:3%;color:#ff5809;margin-bottom:3px">NT:6000</h1>
<span style="margin-left:87%;font-size:30px;background-color:#ff5809;padding-left:2%;padding-right:2%;color:#FFFFFF;font-weight:900;">訂房</span>

</div>







<script>
$(function() {			
// 	$('.f1').mouseover(function () {
// 		$(this).css('border','7px solid #f3b65e');
// 	})
	
// 	$('.f1').mouseout(function () {
// 		$(this).css('border','2px solid #A1A1A1');
// 	})
	
	
	$('.w1').mouseover(function () {
		$(this).css('border','7px solid #f3b65e');
	})
	
	$('.w1').mouseout(function () {
		$(this).css('border','2px solid #A1A1A1');
	})
	

})


</script>


</body>
</html>