<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="SelectHouse" method="post">
<table>
     <tr>
		<td>國家 : </td>
<!-- 		<td><input type="text" name="Country" ></td> -->
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
<!-- 		<td><input type="text" name="Area" ></td> -->
		<td><select name="Area" id="area" >
		</select></td>
	</tr>
</table>
<input type="submit" name="prodaction" value="Select">	
</form>	
	<c:if test="${not empty select}">
	<c:forEach var="row" items="${select}">
	<table>
	<tr>
	    <td><h1><a href="http://localhost:8080/StartTrip/page/House/SelectRoom?name=${row.name}">民宿:${row.name}</a></h1></td>
	    <td>國家:${row.country}</td>
		<td>地區:${row.area}</td>
		<td>電話:${row.telephone}</td>
		<td>地址:${row.addres}</td>
		<td>民宿介紹:${row.explain}</td>
		<img  src=${row.picture} />
	</tr>
	</table>
	
	</c:forEach>
	
	</c:if>
	
	

	
			


<script src="/StartTrip/js/jquery-3.3.1.min.js"></script>
	<script>
		$(document).ready(function() {
			var c ={"台灣":["台北","台中","高雄"],
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