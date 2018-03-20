<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<jsp:include page="/css/headerlink.jsp" />
<link rel="shortcut icon" href="<c:url value='/page/login/img/webicon.ico'/>" />
<link href="<c:url value='/css/House/house.css'/>" type="text/css" rel="stylesheet" />
<link href="<c:url value='/css/House/houseindex.css'/>" type="text/css" rel="stylesheet" />
<style>
body{overflow: auto;}
menuimg{height: 100px}
</style>
</head>
<body>
<jsp:include page="/page/shared/indexheader.jsp" />

<div style="margin-top:10%;margin-bottom: 10%;">
<form class="search" action="<c:url value='/page/House/AirSelelctHouse'/>" method="post">
<table style="margin:auto;margin-top:30px;">
     <tr>
		<td>國家 : </td>
		<td><input type="text" name="country" value="${hcountry}"></td>
	</tr>
	<tr>
		<td>地區 : </td>
		<td><input  type="text" name="area" value="${hplace}"></td>
	</tr>
	<tr>
		<td>入住日期: </td>
		<td><input  type="text" name="gotime" value="${hdate}"></td>
	</tr>
	<tr>
		<td>入住天數 : </td>
		<td><input  type="text" name="day" value="${hday}"></td>
	</tr>
<!-- 	<tr> -->
<!-- 		<td>姓名 : </td> -->
		<td><input  type="text" name="people" value="${hname}" style="display: none;" ></td>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td>電話 : </td> -->
		<td><input  type="text" name="telephone" value="${hphone}" style="display: none;"></td>
<!-- 	</tr> -->
	
</table >
<input type="submit" name="prodaction" value="搜尋" style="display:block;margin:0 auto;margin-top: 20px">	
</form>	
	<c:if test="${not empty select}">
	<c:forEach var="row" items="${select}">

<!-- 	<tr> -->
<%-- 	    <td><h1><a href="http://localhost:8080/StartTrip/page/House/SelectRoom?name=${row.name}">民宿:${row.name}</a></h1></td> --%>
<%-- 	    <td>國家:${row.country}</td> --%>
<%-- 		<td>地區:${row.area}</td> --%>
<%--         <td>地址:${row.addres}</td> --%>
<%-- 		<td>電話:${row.telephone}</td> --%>
<%-- 		<td>民宿介紹:${row.explain}</td> --%>
<!-- 		<img  src=${row.picture} style="display:block;margin:auto;" /> -->
<!-- 	</tr> -->

	   
<%-- 	    <h1 align="center">民宿:${row.name}</h1> --%>
<%--         <h3 align="center"><a href="http://localhost:8080/StartTrip/page/House/AirSelectRoom?name=${row.name}&day=${day}&outint=${outint}&gotime=${gotime}&goint=${goint}&people=${hname}&telephone=${hphone}&people=${hname}&telephone=${hphone}"><img src=${row.picture}></a></h3> --%>
<%--         <h3 align="center">地址:${row.addres}</h3> --%>
<%-- 		<h3 align="center">電話:${row.telephone}</h3> --%>
<%-- 		<h3 align="center">民宿介紹:${row.explain}</h3> --%>
		
<%-- 		<h3 align="center">goint:${goint}</h3> --%>
<%-- 		<h3 align="center">gotime:${gotime}</h3> --%>
<%-- 		<h3 align="center">outint:${outint}</h3> --%>
<%-- 		<h3 align="center">day:${day}</h3> --%>
<%-- 		<h3 align="center">people:${hname}</h3> --%>
<%-- 		<h3 align="center">telephone:${hphone}</h3> --%>

<div class="f1" id="f1" style="border:2px solid #A1A1A1;height:auto; margin-top: 5%">
	 <fieldset class="f2"style="height: auto;width: auto;">
		 <table>
			 <tr>
			 	<td rowspan="5">
				 	<a href="http://localhost:8080/StartTrip/page/House/AirSelectRoom?name=${row.name}&day=${day}&outint=${outint}&gotime=${gotime}&goint=${goint}&people=${hname}&telephone=${hphone}&people=${hname}&telephone=${hphone}"" style="float: left">
					<img src="${row.picture}"/>
					</a>
				</td>
				<td></td>
			 </tr>
			 <tr>
			 	<td><h1>${row.name}</h1></td>
			 </tr>
			 <tr>
			 	<td>地址: ${row.addres}</td>
			 </tr>
			 <tr>
			 	<td>電話: ${row.telephone}</td>
			 </tr>
			 <tr>
			 	<td>簡介: ${row.explain}</td>
			 </tr>
		 </table>
	</fieldset>

</div>
	
	
	
	
	

	
	</c:forEach>
	
	</c:if>
	
	
	<c:if test="${not empty err}">
	 <h2 style="color:red">${err}</h2>
	</c:if>
	
</div>	



<script>
$(function() {			
	$('.f1').mouseover(function () {
		$(this).css('border','7px solid #f3b65e');
	})
	
	$('.f1').mouseout(function () {
		$(this).css('border','2px solid #A1A1A1');
	})

})


</script>

	
			
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>