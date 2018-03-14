<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>

<link href="<c:url value='/css/search/jquery-ui.min.css'/>"type="text/css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>

<head>
    <meta charset="utf-8" />
    <title>資料填寫</title>
     
<link href="<c:url value='/css/search/jquery-ui.min.css'/>"type="text/css" rel="stylesheet">

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>

    <script type="text/javascript">
	    $(function() {
	      $( "#passportdate" ).datepicker({
	        changeMonth: true,
	        changeYear: true,
	        minDate: "+6M", 
	      });
	    });
	    
	    $(function() {
			$("#datepicker").datepicker();
			$.datepicker.setDefaults({
				dateFormat : "yy-mm"
			});
		})
    
        function onLoad() {
            $('#next').click(save1);
            $('#next').click(save2);
            $('#next').click(save3);
            $('#next').click(save4);
            $('#next').click(save5);
            $('#next').click(save6);
            $('#clear').load(clear);

            document.getElementById("inputfirstname").innerHTML = localStorage["firstname"];
            document.getElementById("inputlastname").innerHTML = localStorage["lastname"];
            document.getElementById("inputemail").innerHTML = localStorage["email"];
            document.getElementById("inputpassportNo").innerHTML = localStorage["passportNo"];
            
        }
        function save1() {
            localStorage.firstname = inputfirstname.value;
        }
        function save2() {
            localStorage.lastname = inputlastname.value;
        }
        function save3() {
            localStorage.email = inputemail.value;
        }
        function save4() {
            localStorage.passportNo = inputpassportNo.value;
        }
        function save5() {
            localStorage.yearSpanID = inputyearSpanID.value;
        }
        function save6() {
            localStorage.monthSpanID = inputmonthSpanID.value;
        }
        
        function clear() {
            localStorage.clear();
        }
    </script>
    
</head>
<body onload="onLoad()">
    <h1>資料填寫</h1>
    <hr/>
	<form action="<c:url value='/Searchenter.controller'/>" method="get">
    <h2>訂購人資料填寫</h2>
	 <div>
            電子郵件:
            <input type="text" name="email" id="inputemail" />
            <span>${error.erremail}</span>
            再確認電子郵件:
            <input type="text" />
        </div>
	
        <hr />
    
        <h2>乘客資訊</h2>
        <div>
            姓氏(護照上的英文姓):
            <input type="text" name="firstname" id="inputfirstname" />
        <span>${error.errfirstname}</span>
        </div>
        <div>
             名字(護照上的英文名):
             <input type="text" name="lastname" id="inputlastname" />
             <span>${error.errlastname}</span>
        </div>
        <div>
            護照號碼:
            <input type="text" name="passport"id="inputpassportNo" />
            
            <span>${error.errpassport}</span>
        </div>
        
            護照到期日:
<!--            <div> -->
<!--                <input type="text" name="expiry" id="passportdate"/>  -->
<%-- 	            <span>${error.errexpiry}</span> --%>
<!--            </div> -->
        <hr />
        <div>
            <input type="submit" id="next" value="下一步" />
            <a href="<c:url value='/page/search/02select.jsp'/>"><input type="button" value="返回查詢結果" /></a>
            <a href="<c:url value='/index.jsp'/>"><input type="button" value="回查詢首頁" /></a>
        </div>
    </form>
</body>
</html>