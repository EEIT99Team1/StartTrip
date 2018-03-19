<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<link href="<c:url value='/css/House/house.css'/>" type="text/css" rel="stylesheet" />
<jsp:include page="/css/headerlink.jsp" />
<link href="<c:url value='/css/House/houseindex.css'/>" type="text/css" rel="stylesheet" />
</head>
<body>
<jsp:include page="/page/shared/indexheader.jsp" />

<!-- <article class="mainbody"> -->
<!-- </article> -->
<div class="mainbody" style="margin-top:10%;">
<form class="search" action="SelectHouse" method="post">
<table style="margin:auto;margin-top:30px;">
     <tr>
		<td>國家 : </td>
		<td><select name="Country" id="country">
		<option value="台灣">台灣</option>
		<option value="日本">日本</option>
		<option value="美國">美國</option>
		<option value="香港">香港</option>
		<option value="韓國">韓國</option>
		<option value="中國">中國</option>
		<option value="新加坡">新加坡</option>
		</select></td>
	</tr>
	<tr>
		<td>地區 : </td>
		<td><select name="Area" id="area" >
		</select></td>
	</tr>
</table >
<input type="submit" name="prodaction" value="搜尋" style="display:block;margin:0 auto;margin-top: 20px">	
</form>	
	<c:if test="${not empty select}">
	<c:forEach var="row" items="${select}">
<!-- 	<table style="margin:auto;margin-top:50px;margin-bottom:50px; width:500px"> -->
<!-- 	<tr> -->
<%-- 	    <td><h1><a href="http://localhost:8080/StartTrip/page/House/SelectRoom?name=${row.name}">民宿:${row.name}</a></h1></td> --%>
<%-- 	    <td>國家:${row.country}</td> --%>
<%-- 		<td>地區:${row.area}</td> --%>
<%--         <td>地址:${row.addres}</td> --%>
<%-- 		<td>電話:${row.telephone}</td> --%>
<%-- 		<td>民宿介紹:${row.explain}</td> --%>
<!-- 		<img  src=${row.picture} style="display:block;margin:auto;" /> -->
<!-- 	</tr> -->

<div class="f1" id="f1" style="border:2px solid #A1A1A1;height:auto;">
	 <fieldset class="f2"style="height: auto;width:100%;">
		
	
	 <table>
			 <tr>
			 	<td rowspan="6">
				 	<a href="http://localhost:8080/StartTrip/page/House/SelectRoom?name=${row.name}" style="float: left">
					<img src="${row.picture}" style="padding-right:10px;padding-left:0;float: left;width:auto"/>
					</a>
				</td>
				<td></td>
			 </tr>
			 <tr>
			 	<td style="width:63%"><h1>${row.name}</h1></td>
			 </tr>
			 <tr>
			 	<td>地址: ${row.addres}</td>
			 </tr>
			 <tr>
			 	<td>電話: ${row.telephone}</td>
			 </tr>
			 <tr>
			 	<td>簡介:</td>
			 </tr>
			 <tr>
			 	<td style="padding-left:6%">${row.explain}</td>
			 </tr>
		 </table>
</fieldset>
</div>
	   
<%-- 	    <h1 align="center">民宿:${row.name}</h1> --%>
<%--         <h3 align="center"><a href="http://localhost:8080/StartTrip/page/House/SelectRoom?name=${row.name}"><img src=${row.picture}></a></h3> --%>
<%--         <h3 align="center">地址:${row.addres}</h3> --%>
<%-- 		<h3 align="center">電話:${row.telephone}</h3> --%>
<%-- 		<h3 align="center">民宿介紹:${row.explain}</h3> --%>
		
	
	
<!-- 	</table> -->
	
	</c:forEach>
	
	</c:if>
	
</div>	
<c:if test="${empty select}">
<div style="height:450px"></div>

</c:if>
	
			
<jsp:include page="/page/House/footer.jsp" />
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />

<script src="/StartTrip/js/jquery-3.3.1.min.js"></script>
	<script>
		$(document).ready(function() {
			var c ={"台灣":["台北","新北","桃園","新竹","苗栗","台中","彰化","南投","雲林","嘉義","台南","高雄","屏東","台東","花蓮","宜蘭"],
		 	        "日本":["北海道","青森縣","岩手縣","宮城縣","秋田縣","山形縣","福島縣","茨城縣","栃木縣","群馬縣","埼玉縣","千葉縣","東京都",
		 	        	    "神奈川縣","新潟縣","富山縣","石川縣","福井縣","山梨縣","長野縣","岐阜縣","靜岡縣","愛知縣",
		 	        	    "三重縣","滋賀縣","京都府","大阪府","兵庫縣","奈良縣","和歌山縣","鳥取縣","島根縣","岡山縣","廣島縣","山口縣",
		 	        	    "德島縣","香川縣","愛媛縣","高知縣","福岡縣","佐賀縣","長崎縣","熊本縣","大分縣","宮崎縣","鹿兒島縣","沖繩縣"]
			};
			
			$.each(c.台灣,function(a,b){
				 var m = document.createElement("option");
	             var m1 = document.createTextNode(b);
	             m.setAttribute("value", b);
	             m.appendChild(m1);
	             document.getElementById("area").appendChild(m);
	            
			})
	
			 
			$('#country').change(function(){
				var country = this.value
 				$('#area').empty()

				$.each(c,function(a,b){
					
					if(a==country){					
					$.each(b,function(z,zz){
						 var m = document.createElement("option");
			             var m1 = document.createTextNode(zz);
			             m.setAttribute("value", zz);
			             m.appendChild(m1);
			             document.getElementById("area").appendChild(m);
					})	
					
				}
					
					
				})
				
			})
		 	
		})
	</script>




<script>
$(function() {			
	$('.f1').mouseover(function () {
		$(this).css('border','6px solid #f3b65e');
	})
	
	$('.f1').mouseout(function () {
		$(this).css('border','5px solid #A1A1A1');
	})

})


</script>



</body>
</html>