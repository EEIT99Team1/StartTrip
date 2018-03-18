<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
<jsp:include page="/css/headerlink.jsp" />

<title>會員註冊</title>
<style>
.registerform {
/* set width in form, not fieldset (still takes up more room w/ fieldset width */
font:100% verdana,arial,sans-serif;
margin: auto;
padding: 0;
min-width: 500px;
max-width: 600px;
width: 1500px; 
position:absolute; height:330px;
top:0; bottom:0; left:0; right:0;
border:8px #FFD382 groove;
}

.registerform div{
text-align:center;
margin:10px auto 0px;
padding: auto;
}
#title{
text-align: center;
margin-top: 100px;
font-size: 1cm;
font-family: fantasy;
}
.registersubmit{
text-align:center;
margin-top:15px;
margin-left:250px;
padding: auto;
}
</style>
<link rel="shortcut icon" href="../login/img/webicon.ico" />
<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
<link href="<c:url value='/css/search/jquery-ui.min.css'/>"type="text/css" rel="stylesheet">
<script type="text/javascript">
$(function() {
	$("#date").datepicker({dateFormat: 'yy-mm-dd',changeYear: true,changeMonth:true,yearRange:'-100:+0'})
});
</script>
</head>
<body>
<jsp:include page="/page/shared/header.jsp" />
<div>
<div id=title>會員註冊</div>
	<form class="registerform" action="<c:url value='/Register.controller'/>"method="post">
		<div>
			<label for="registeremail">信箱：</label> <input id="registeremail" type="text" name="email" size="25" value="${param.email}" placeholder="請輸入Email當帳號"/>
			&nbsp;<small><Font color='red'  size="-3">${error.errorIDEmpty}${success.successIDDup}</Font></small>
		</div>
		<div>
			<label for="registerpassword">密碼：</label> <input id="registerpassword" type="password" name="password" size="25" >
			&nbsp;<small><Font color='red'  size="-3">${error.errorPasswordEmpty}${error.valueNoEqual}</Font></small>
		</div>
		<!-- 		<div> -->
<!-- 			<label for="registerpassword" style="margin-left: 135px; float: left;">確認密碼：</label> <input style="margin-left:3px ;margin-right: 155px; float: left; margin-top: 5px;" id="registerpasswordcheck" type="password" name="passwordcheck" size="25" > -->
<%-- 			&nbsp;<small><Font color='red'  size="-3">${error.errorPasswordEmpty}</Font></small> --%>
<!-- 		</div> -->
		<div>	
			<label for="registerlastname">姓氏：</label> <input id="registerlastname" type="text" name="lastname" size="25" value="${param.lastname}" placeholder="請輸入姓氏 ex:王"/>
			&nbsp;<small><Font color='red'  size="-3">${error.errorLastname}</Font></small>
		</div>
		<div>
			<label for="registerfirstname">名字：</label> <input id="registerfirstname" type="text" name="firstname" size="25" value="${param.firstname}" placeholder="請輸入名字 ex:小明"/>
			&nbsp;<small><Font color='red'  size="-3">${error.errorFirstname}${error.firstnameerr}</Font></small>
		</div>
		<div>
			<label for="registercountry">國籍：</label> <input id="registercountry" type="text" name="country" size="25" />
			&nbsp;<small><Font color='red'  size="-3">${error.errorCountry}</Font></small>
		</div>
		<div >
			<label for="registerbirthday" style="margin-right: 4px;">生日：</label><input id="registerbirthday" type="text" id="date" name="birthday" value="${param.birthday}" size="25" placeholder="ex:YYYY/MM/DD"/>
			&nbsp;<small><Font color='red'  size="-3">${error.errorBirthday}</Font></small>
		</div>
		<div>
			<label for="registerphonenumber">手機：</label> <input id="registerphonenumber" type="text" name="phonenumber" size="25" value="${param.phonenumber}"/>
			&nbsp;<small><Font color='red'  size="-3">${error.errorPhonenumber}</Font></small>
		</div>

	<input class="registersubmit" type="submit" name="submit" value="註冊一般會員" />

	</form>
	</div>
<%-- 	<jsp:include page="/page/shared/footer.jsp" /> --%>
	<script>
	$(document).ready(function(){
		var InsertOK="${success.InsertOK}";
		if(InsertOK!=""){
			alert(InsertOK);
			setTimeout("location.href='/StartTrip/index.jsp'",0);
			}
		});
	</script>
	<script>
// 	$(document).ready(function(){
// 		$("#registerpasswordcheck").mouseout(function(){
// 			var password = $("#registerpassword").val();
// 			alert(password);
// 			var passwordcheck = $('input[name="passwordcheck"]').val();
// 			alert(passwordcheck);
// 			if(password != passwordcheck){
// 				alert("密碼請與確認密碼相同");
// 			}
// 		})		
// 	})
	</script>
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>