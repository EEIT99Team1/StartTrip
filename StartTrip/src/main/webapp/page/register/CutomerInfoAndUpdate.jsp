<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>

<title>會員資料</title>
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
position:absolute; height:320px;
top:0; bottom:0; left:0; right:0;
border:8px #FFD382 groove;
}

form div{
text-align:center;
margin:8px  auto 0px;
padding: auto;
}

#customerinfo{
text-align: center;
margin-top: 90px;
font-size: 1cm;
font-family: fantasy;
}
.customerinfoupdate{
font-size:xx-large;
color: red;
text-align: center;
margin-top: 400px;
}
</style>
</head>
<body>
<jsp:include page="/page/shared/indexheader.jsp" />
<div id="customerinfo">會員資料</div>
	<form action="<c:url value='/CustomerInformationAndUpdate.controller'/>" method="post">
		<div>
			<label for="email">信箱:</label> <input type="text" name="email" size="25" value="${customerBean.email}" readonly="readonly"/>
		</div>
		<div>
			<label for="passid">密碼:</label> <input type="password" name="password" size="25" value="${customerBean.password}"/>
		</div>
		<div>
			<label for="lastname">姓氏:</label> <input type="text" name="lastname" size="25" value="${customerBean.lastname}"/>
		</div>
		<div>
			<label for="firstname">名字:</label> <input type="text" name="firstname" size="25" value="${customerBean.firstname}"/>
		</div>
		<div>
			<label for="country">國籍:</label> <input type="text" name="country" size="25" value="${customerBean.country}"/>
		</div>
		<div>
			<label for="birthday">生日:</label> <input type="text" name="birthday" size="25" value="${customerBean.birthday}"/>
		</div>
		<div>
			<label for="phonenumber">手機:</label> <input type="text" name="phonenumber" size="25" value="${customerBean.phonenumber}"/>
		</div>
		<div>
			<label for="bonus">紅利點數:</label><input type="text" name="bonus" size="25" value="${customerBean.bonus}" readonly="readonly"/>
		</div>
		<div>
			<input type="submit" name="submit" value="確認修改" />
		</div>
	</form>
	<div class="customerinfoupdate">${successMsg.updateOK}</div>
	<jsp:include page="/page/shared/footer.jsp" />
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>