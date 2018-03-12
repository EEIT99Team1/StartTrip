<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>乘客資料確認</title>
    <script>
        function onLoad() {
            document.getElementById("outputfirstname").innerHTML = localStorage["firstname"];
            document.getElementById("outputlastname").innerHTML = localStorage["lastname"];
            document.getElementById("outputemail").innerHTML = localStorage["email"];
            document.getElementById("outputpassportNo").innerHTML = localStorage["passportNo"];
            document.getElementById("outputyearSpanID").innerHTML = localStorage["yearSpanID"];
            document.getElementById("outputmonthSpanID").innerHTML = localStorage["monthSpanID"];
        }
    </script>
</head>
<body onload="onLoad()">
    <h1> 資料確認</h1><hr/>
    <h3>機票資訊</h3><hr/>
    <form action="">
    </form><hr/>
	<h3>乘客資料</h3><hr/>
	<form>
		姓氏(護照上的英文姓): <span id="outputfirstname"></span><br />
		名字(護照上的英文名): <span id="outputlastname"></span><br />
		電子郵件: <span id="outputemail"></span><br />
		護照號碼: <span id="outputpassportNo"></span><br />
		護照到期日:
	</form>

    <div>
        <input type="submit" value="確認，下一步" />
        <a href="04enter.jsp"><input type="submit" value="返回" /></a>
    </div>
</body>
</html>