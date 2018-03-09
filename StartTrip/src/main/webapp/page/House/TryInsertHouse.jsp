<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="InsertHouse" method="post">
<table>
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
 ${err.telephone}
</tr>
<tr>
 <td>Explain:</td>
 <td><input type="text" name="explain" value="${bean.explain}"></td>
</tr>
<tr>
 <td>Picture:</td>
 <td><input type="text" name="picture" value="${bean.picture}"></td>
</tr>
</table>
<input type="submit" value="確定">
</form>
${insert}

</body>
</html>