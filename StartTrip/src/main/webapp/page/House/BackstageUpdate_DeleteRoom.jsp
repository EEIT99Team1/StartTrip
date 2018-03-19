<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:if test="${empty HouseLogin}">
<c:set var="HouseTarget" value="${pageContext.request.servletPath}" scope="session"></c:set>
<c:redirect url="/page/House/BackstageHouse.jsp"></c:redirect>
</c:if>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/css/backstage/default.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/css/backstage/fonts.css' />" rel="stylesheet" type="text/css" />

<script src="<c:url value="/js/jquery-3.3.1.min.js" />"></script>
<title>Insert title here</title>
<style >
 .menu {
            width:100%;
            overflow:auto;
            background-color:#66b3ff;
            list-style-type:none;

        }
 .menu li {
            float:left;
            width:14%;
            border-right:1px solid #cccccc;
        }      

</style>

</head>
<body>


<div id="page" class="container" >
		<jsp:include page="/page/House/headerBackstageHouse.jsp"></jsp:include>
	<div id="main">
		<table id="bonusImgTable" style="width:80%">
		  <h1 align="left"> 客房修改</h1>
		  
		  
	<ul class="menu" style="margin-bottom:10px;margin-top:10px">           
      <li>房名</li>      
      <li>價格/1天</li>   
      <li>入住人數</li>
      <li>註解1</li>
      <li>註解2</li>
      <li>註解3</li>
     </ul>	  
		  

<c:if test="${not empty select}">
	<c:forEach var="row" items="${select}">
	
	<form action="UpdateDeleteRoom" method="post">
	  <input type="text" name="name" value="${row.name}" style="display: none;">
	<ul class="menu">           
      <li><input type="text" disabled="disabled" value="${row.roomName}" size="8%"></li>
      <li><input style="display:none;" type="text" name="roomname"  value="${row.roomName}" size="8%"></li>      
      <li><input type="text" name="price" value="${row.price}" size="8%"></li>   
      <li><input type="text" name="number" value="${row.number}" size="8%"></li>
      <li><input type="text" name="explain1" value="${row.explain1}" size="8%"></li>
      <li><input type="text" name="explain2" value="${row.explain2}" size="8%"></li>  
      <li><input type="text" name="explain3" value="${row.explain3}" size="8%"></li>
      <li>
        <input type="submit" name="account" value="修改" >
        <input type="submit" name="account" value="刪除" >
      </li>
     </ul>	 
	
<!-- 	<table> -->
<!-- 	<tr> -->
<%-- 	 <td>name:<input type="text" name="name" value="${row.name}"></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<%-- 	 <td>roomName:<input type="text" name="roomname" value="${row.roomName}"></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<%-- 	 <td>number:<input type="text" name="number" value="${row.number}"></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<%-- 	 <td>price:<input type="text" name="price" value="${row.price}"></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<%-- 	 <td>expire1:<input type="text" name="expire1" value="${row.explain1}"></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<%-- 	 <td>expire2:<input type="text" name="expire2" value="${row.explain2}"></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<%-- 	 <td>expire3:<input type="text" name="expire3" value="${row.explain3}"></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 	 <td><input type="submit" name="account" value="修改" ></td> -->
<!-- 	 <td><input type="submit" name="account" value="刪除" ></td> -->
<!-- 	</tr> -->
<!-- 	</table> -->
		
	</form>

	</c:forEach>
	
	</c:if>
<form action="picture_room" method="post" enctype = "multipart/form-data">
<input type="file" value="圖片選擇" name="file">
<input type="submit" value="圖片修改">	
</form>


${update}
			
</table>				
		</div>
	</div>


<c:if test="${not empty picture}">
<script >
alert('${picture}');
window.location.href='http://localhost:8080/StartTrip/page/House/SelectRoom?name=${HouseLogin.name}&account=go';

</script>
</c:if>



</body>
</html>