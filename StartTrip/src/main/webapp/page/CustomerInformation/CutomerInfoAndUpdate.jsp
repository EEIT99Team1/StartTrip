<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<c:url value='/CustomerInformationAndUpdate.controller'/>" method="post">
		<div>
			<label for="email">Email:</label> <input type="text" name="email" size="25" value="${customerBean.email}" readonly="readonly"/>
		</div>
		<div>
			<div>
				<label for="passid">密碼:</label> <input type="password" name="password" size="25" value="${customerBean.password}"/>
			</div>
			<label for="lastname">姓:</label> <input type="text" name="lastname" size="25" value="${customerBean.lastname}"/>
		</div>
		<div>
			<label for="firstname">名:</label> <input type="text" name="firstname" size="25" value="${customerBean.firstname}"/>
		</div>
		<div>
			<label for="country">Country:</label> <input type="text" name="country" size="25" value="${customerBean.country}"/>
		</div>
		<div>
			<label for="birthday">生日:</label> <input type="text" name="birthday" size="25" value="${customerBean.birthday}"/>
		</div>
		<div>
			<label for="phonenumber">手機號碼:</label> <input type="text" name="phonenumber" size="25" value="${customerBean.phonenumber}"/>
		</div>
		<div>
			<label for="bonus">紅利點數:</label><input type="text" name="bonus" size="25" value="${customerBean.bonus}" readonly="readonly"/>
		</div>
		<div>
			<input type="submit" name="submit" value="確認修改" />
		</div>
	</form>
</body>
</html>