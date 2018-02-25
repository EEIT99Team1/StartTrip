<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>查詢結果</title>
    <link href="<c:url value="/style/title.css"/>" rel="stylesheet" />
</head>
<body>
<%@ include file='/page/shared/header.jsp' %>

    <div class="mborder">
        <div class="planeimg">
            <img src="<c:url value="/image/01.png"/>" />
        </div>
        <a href="03ticketcheck.jsp" class="taketicket">
        <input type="button" value="訂票" />
        </a>
        <div>

            機場<br />
            時間${flight.departureDateTime}<br />

            <hr />

            機場<br />
            時間<br />
        </div>

</div>


    <div class="mborder">
        <div class="planeimg">
            <img src="<c:url value="/image/01.png"/>" />
        </div>
        <a href="03ticketcheck.jsp" class="taketicket">
            <input type="button" value="訂票" />
        </a>
        <div>
	            機場<br />
	            時間<br />
	            <hr />
	            機場<br />
	            時間<br />
        </div>

    </div>
</body>
</html>