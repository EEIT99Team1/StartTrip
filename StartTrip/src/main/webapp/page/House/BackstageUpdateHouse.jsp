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
		  <h1 align="left"> 飯店資訊</h1>
		  
		  
<form action="UpdateHouse" method="post">		  
<table style="margin-left:5%;margin-top:20px">		  
 <tr>
 <td>帳號:</td>
 <td><input type="text" name="account" value="${bean.account}"></td>
</tr>
<tr>
 <td>密碼:</td>
 <td><input type="password" name="pass" value="${bean.pass}"></td>
</tr>
<tr>
 <td>name:</td>
 <td><input type="text" name="name" value="${bean.name}"></td>
</tr>
<tr>
 <td>Country:</td>
 <td><input type="text" name="country" value="${bean.country}"></td>
</tr>
<tr>
 <td>Area:</td>
 <td><input type="text" name="area" value="${bean.area}"></td>
</tr>
<tr>
 <td>Addres:</td>
 <td><input type="text" name="addres" value="${bean.addres}"></td>
</tr>
<tr>
 <td>Telephone:</td>
 <td><input type="text" name="telephone" value="${bean.telephone}"></td>
</tr>
<tr>
 <td>Explain:</td>
 <td><input type="text" name="explain" value="${bean.explain}"></td>
</tr>
	</table>
	<input type="submit" value="修改">	  
</form>		  
<h1>${fail}</h1>	  
<h1 align="left" style="margin-top:10px;color:red;">${success}</h1>	  
			
		</table>
	
	
		
		</div>
	</div>


	


</body>
</html>