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
<title>Insert title here</title>
</head>
<body>


<div id="page" class="container" >
		<jsp:include page="/page/House/headerBackstageHouse.jsp"></jsp:include>
	<div id="main">
		<table id="bonusImgTable" style="width:80%">
		  <h1 align="left"> 客房新增</h1>
		  
		  
<form action="InsertRoom" method="post">		  
<table style="margin-left:5%;margin-top:20px">		  
<tr>
 <td><input type="text" name="name" value="${HouseLogin.name}" style="display:none; "></td>
</tr>

<tr>
 <td>roomname:</td>
 <td><input type="text" name="roomname" ></td>
</tr>

<tr>
 <td>price:</td>
 <td><input type="text" name="price" ></td>
</tr>
<tr>
 <td>number:</td>
 <td><input type="text" name="number" ></td>
</tr>
<tr>
 <td>explain1:</td>
 <td><input type="text" name="explain1" ></td>
</tr>
<tr>
 <td>explain2:</td>
 <td><input type="text" name="explain2" ></td>
</tr>
<tr>
 <td>explain3:</td>
 <td><input type="text" name="explain3" ></td>
</tr>
	</table>
	<input type="submit" value="新增">	  
</form>		  
<h1 align="left" style="margin-top:10px;color:red;">${select}</h1>	  
<h3 align="left" style="margin-top:10px;color:red;">${err.name}</h3>	
<h3 align="left" style="margin-top:10px;color:red;">${err.roomname}</h3>	
<h3 align="left" style="margin-top:10px;color:red;">${err.price}</h3>	
<h3 align="left" style="margin-top:10px;color:red;">${err.number}</h3>	
  
			
</table>
	
	
		
		</div>
	</div>


	


</body>
</html>