<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<link href="<c:url value='/css/search/jquery-ui.min.css'/>"type="text/css" rel="stylesheet">
<link href="<c:url value="/css/CashPay/CashPay.css"/>"rel="stylesheet">

</head>
<body>
	<article>
		<div class="allprocess">
			<div class="process">123</div>
			<div class="process">456</div>
			<div class="process">789</div>
		</div>
		
		<form class="formcss">
		    <fieldset>
		      <legend>資料填寫</legend>
		         <ol>
		           <li>
		             <label for="name">持卡人姓名:</label>
		             <input id="name" name="name" type="text" class="fildform" />
		           </li>		           
		           <li>
		             <label>連絡電話:</label>
		             <input type="text" style=width:30px maxlength="2" class="fildform">-
		             <input type="text" style=width:40px maxlength="4" class="fildform">-
		             <input type="text" style=width:40px maxlength="4" class="fildform">
		           </li>
		           <li>
		             <label>行動電話:</label>
		             <input type="text" style=width:60px maxlength="4" class="fildform">-
		             <input type="text" style=width:60px maxlength="4" class="fildform">							            
		           </li>
		           <li>
		             <label>信用卡卡號:</label>
		             <input type="text" style=width:40px maxlength="4" class="fildform">-
		             <input type="text" style=width:40px maxlength="4" class="fildform">-							            
		             <input type="text" style=width:40px maxlength="4" class="fildform">-							            
		             <input type="text" style=width:40px maxlength="4" class="fildform">							            
		           </li>
		           <li>
		           	<label>有效月年:</label>
		           	<select class="dateMonth"></select>/
		           	<select class="dateYear"></select>							            
		           </li>
		           <li>
					<label>信用卡背面末三碼:</label>
					<input type="text" name="" style=width:40px maxlength="4" class="fildform">						            
		           </li>
		          </ol>
		          <input style=margin-left:100px; type="submit" value="送出">
		   </fieldset>
		</form>		

	</article>
	<jsp:include page="/page/cashpay/myjs/selectdate.jsp"/>
</body>
</html>

