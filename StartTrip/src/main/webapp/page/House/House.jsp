<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<jsp:include page="/css/headerlink.jsp" />
</head>
<body>
<jsp:include page="/page/shared/header.jsp" />


<div style="margin-top:5%;">
<form action="SelectHouse" method="post">
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
<input type="submit" name="prodaction" value="收尋" style="display:block;margin:0 auto;margin-top: 20px">	
</form>	
	<c:if test="${not empty select}">
	<c:forEach var="row" items="${select}">
	<table style="margin:auto;margin-top:50px; width:500px">
<!-- 	<tr> -->
<%-- 	    <td><h1><a href="http://localhost:8080/StartTrip/page/House/SelectRoom?name=${row.name}">民宿:${row.name}</a></h1></td> --%>
<%-- 	    <td>國家:${row.country}</td> --%>
<%-- 		<td>地區:${row.area}</td> --%>
<%--         <td>地址:${row.addres}</td> --%>
<%-- 		<td>電話:${row.telephone}</td> --%>
<%-- 		<td>民宿介紹:${row.explain}</td> --%>
<!-- 		<img  src=${row.picture} style="display:block;margin:auto;" /> -->
<!-- 	</tr> -->

	   
	    <h1 align="center">民宿:${row.name}</h1>
        <h3 align="center"><a href="http://localhost:8080/StartTrip/page/House/SelectRoom?name=${row.name}"><img src=${row.picture}></a></h3>
        <h3 align="center">地址:${row.addres}</h3>
		<h3 align="center">電話:${row.telephone}</h3>
		<h3 align="center">民宿介紹:${row.explain}</h3>
		
	
	
	</table>
	
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
			var c ={"台灣":["台北","台中","高雄","新北","屏東"],
		 	         "日本":["東京","大阪"]
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








</body>
</html>