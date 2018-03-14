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
form {
/* set width in form, not fieldset (still takes up more room w/ fieldset width */
font:100% verdana,arial,sans-serif;
margin: auto;
padding: 0;
min-width: 500px;
max-width: 600px;
width: 560px; 
position:absolute; height:300px;
top:0; bottom:0; left:0; right:0;
border:8px #FFD382 groove;
}

form div{
text-align:center;
margin:8px auto 0px;
padding: auto;
}
#title{
text-align: center;
margin-top: 100px;
font-size: 1cm;
font-family: fantasy;
}
.insertok{
text-align: center;
margin-top: 400px;
font-size: 1cm;
font-family: fantasy;
}
.registersubmit{
text-align:center;
margin:8px  auto 0px;
padding: auto;
}
</style>
<link rel="shortcut icon" href="../login/img/webicon.ico" />

<title>Insert title here</title>
</head>
<body>
<jsp:include page="/page/shared/indexheader.jsp" />
<div id=title>會員註冊</div>
	<form action="<c:url value='/Register.controller'/>"method="post">
		<div>
			<label for="registeremail">信箱：</label> <input id="registeremail" type="text" name="email" size="25" value="${param.email}"/>
			&nbsp;<small><Font color='red'  size="-3">${error.errorIDEmpty}${success.successIDDup}</Font></small>
		</div>
		<div>
			<label for="registerpassword">密碼：</label> <input id="registerpassword" type="password" name="password" size="25" >
			&nbsp;<small><Font color='red'  size="-3">${error.errorPasswordEmpty}</Font></small>
		</div>
		<div>	
			<label for="registerlastname">姓氏：</label> <input id="registerlastname" type="text" name="lastname" size="25" value="${param.lastname}"/>
			&nbsp;<small><Font color='red'  size="-3">${error.errorLastname}</Font></small>
		</div>
		<div>
			<label for="registerfirstname">名字：</label> <input id="registerfirstname" type="text" name="firstname" size="25" value="${param.firstname}"/>
			&nbsp;<small><Font color='red'  size="-3">${error.errorFirstname}${error.firstnameerr}</Font></small>
		</div>
		<div>
			<label for="registercountry">國籍：</label> <input id="registercountry" type="text" name="country" size="25" />
			&nbsp;<small><Font color='red'  size="-3">${error.errorCountry}</Font></small>
		</div>
		<div >
			<label for="registerbirthday">生日：</label><input id="registerbirthday" type="text" id="date" name="birthday" value="${param.birthday}" size="25"/> 
			&nbsp;<small><Font color='red'  size="-3">${error.errorBirthday}</Font></small>
		</div>
		<div>
			<label for="registerphonenumber">手機：</label> <input id="registerphonenumber" type="text" name="phonenumber" size="25" value="${param.phonenumber}" />
			&nbsp;<small><Font color='red'  size="-3">${error.errorPhonenumber}</Font></small>
		</div>
	<input class="registersubmit" type="submit" name="submit" value="註冊一般會員" />
	</form>
	<div class="insertok">${success.InsertOK}</div>
	<script>
// 	$(document).ready(function(){
// 		var InsertOK="${success.InsertOK}";
// 		if(InsertOK!=""){
// 			alert(InsertOK);
// 			setTimeout("location.href='/StartTrip/index.jsp'",0);
// 			}
// 		});
	</script>
	<jsp:include page="/page/shared/footer.jsp" />
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>