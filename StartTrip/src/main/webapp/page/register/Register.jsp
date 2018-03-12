<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>

<title>會員註冊</title>
<style>
*{
	margin:0;
	padding:0;
}

form {
/* set width in form, not fieldset (still takes up more room w/ fieldset width */
font:100% verdana,arial,sans-serif;
margin: auto;
padding: 0;
min-width: 500px;
max-width: 600px;
width: 560px; 
position:absolute; height:280px;
top:0; bottom:0; left:0; right:0;
border:8px #FFD382 groove;
}

form div{
text-align:center;
margin:8px  auto 0px;
padding: auto;
}
#title{
text-align: center;
margin-top: 100px;
font-size: 1cm;
font-family: fantasy;
}

</style>
</head>
<body>
<jsp:include page="/page/shared/indexheader.jsp" />
<div id=title>會員註冊</div>
	<form action="<c:url value='/Register.controller'/>"method="post">
		<div>
			<label for="email">信箱:</label> <input type="text" name="email" size="25" />
			&nbsp;<small><Font color='red'  size="-3">${error.errorIDEmpty}${success.successIDDup}</Font></small>
		</div>
		<div>
			<label for="passid">密碼:</label> <input type="password" name="password" size="25" />
			&nbsp;<small><Font color='red'  size="-3">${error.errorPasswordEmpty}</Font></small>
		</div>
		<div>
			<label for="lastname">姓氏:</label> <input type="text" name="lastname" size="25" />
			&nbsp;<small><Font color='red'  size="-3">${error.errorLastname}</Font></small>
		</div>
		<div>
			<label for="firstname">名字:</label> <input type="text" name="firstname" size="25" />
			&nbsp;<small><Font color='red'  size="-3">${error.errorFirstname}</Font></small>
		</div>
		<div>
			<label for="country">國籍:</label> <input type="text" name="country" size="25" />
			&nbsp;<small><Font color='red'  size="-3">${error.errorCountry}</Font></small>
		</div>
		<div>
			<label for="birthday">生日:</label> <input type="text" name="birthday" size="25" />
			&nbsp;<small><Font color='red'  size="-3">${error.errorBirthday}</Font></small>
		</div>
		<div>
			<label for="phonenumber">手機:</label> <input type="text" name="phonenumber" size="25" />
			&nbsp;<small><Font color='red'  size="-3">${error.errorPhonenumber}</Font></small>
		</div>
		<div>
			<input type="submit" name="submit" value="註冊一般會員" />
		</div>
	</form>
	<script>
	$(document).ready(function(){
		var InsertOK="${success.InsertOK}";
		if(InsertOK!=""){
			alert(InsertOK);
			setTimeout("location.href='/StartTrip/index.jsp'",0);
			}
		});
	</script>
	<jsp:include page="/page/shared/footer.jsp" />
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>