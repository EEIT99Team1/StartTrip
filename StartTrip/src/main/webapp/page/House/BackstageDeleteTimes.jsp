<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/css/backstage/default.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/css/backstage/fonts.css' />" rel="stylesheet" type="text/css" />

<script src="<c:url value="/js/jquery-3.3.1.min.js" />"></script>
<style >
 .menu {
            width:100%;
            overflow:auto;
            background-color:#66b3ff;
            list-style-type:none;

        }
 .menu li {
            float:left;
            width:7em;
            border-right:1px solid #cccccc;
        }



</style>

<title>Insert title here</title>
</head>
<body>


<div id="page" class="container" >
		<jsp:include page="/page/House/headerBackstageHouse.jsp"></jsp:include>
	
	<div id="main">
		<table id="bonusImgTable" style="width:80%">
		<h1 align="left"> 預約取消</h1>  
		  
		  
<form action="SelectTimes_delete" method="post">
<table style="margin-left:5%;margin-top:20px">
<input type="text" name="name" value="${HouseLogin.name}" style="display:none;">

<tr>
 <td>gotime:</td>
 <td><input type="text" name="gotime" ></td>
</tr>
<tr>
 <td>telephone:</td>
 <td><input type="text" name="telephone" ></td>
</tr>
</table>
<input type="submit" value="確定">
</form>	
	  		  
<h3 align="left" style="margin-top:10px;color:red;">${err.gotime}</h3>	
<h3 align="left" style="margin-top:10px;color:red;">${err.telephone}</h3>	 
<h3 align="left" style="margin-top:10px;color:red;">${select}</h3>	

<ul class="menu" style="margin-bottom:10px">           
      <li>房名</li>      
      <li>入住日期</li>   
      <li>退房日期</li>
      <li>房客姓名</li>
      <li>房客電話</li>

</ul>

<c:if test="${not empty bean}">


	<c:forEach var="row" items="${bean}">
	

	
	<ul class="menu">           
      <li>${row.roomName}</li>      
      <li>${row.goTime}</li>   
      <li>${row.outTime}</li>
      <li>${row.people}</li>
      <li>${row.telephone}</li>

	
	
    <form action="DelectTimes" method="post" >
	  <input name="name" value="${row.name}" style="display: none;">
	  <input name="roomname" value="${row.roomName}" style="display: none;">
	  <input name="goint" value="${row.goInt}" style="display: none;">
	  <input name="outint" value="${row.outInt}" style="display: none;">
	  <li><input type="submit" value="刪除" ></li>
	</form>
	</ul>
	</c:forEach>
	
	</c:if>
	
	
	
	<c:if test="${not empty delect}">
	
	<script >
	alert("${delect}");
	
	</script>
	</c:if>  
  
  
  
			
</table>

	
		
		</div>

	</div>


	


</body>
</html>