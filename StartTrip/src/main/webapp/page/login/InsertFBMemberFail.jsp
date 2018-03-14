<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="img/webicon.ico" />
<title>已有此會員</title>
</head>
<body>
<h1>已有此會員</h1>
<!-- 
本文件顯示會員資料新增成功的訊息，要顯示的會員資料由Controller放入『Session範圍』內
，成為Session物件的屬性物件，識別字串為mb, 我們將屬性物件內的帳號與姓名取出，放在
本文件中，一起送回給瀏覽器
-->
<!--  -->
<p>
親愛的${mb.firstname} ${mb.lastname}會員，您好：<br>
請登入帳號，謝謝!

</p>
<a href='${pageContext.request.contextPath}'>回到首頁</a>

</body>
</html>