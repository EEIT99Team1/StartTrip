<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>訂購完成</title>
    <style>
        table {
            margin: auto;
            margin-top: 25px;
            width: 600px;
            line-height: 25px;
            border-collapse: collapse;
            opacity:0.8;
            background: -webkit-linear-gradient(top,#A6FFFF,#84C1FF);
        }
    </style>
</head>
<body>
<%@ include file='/page/shared/header.jsp' %>
    <h1>訂購完成，感謝您的購買</h1>
    <hr />

    <table>
    
        <tr>
            <td>訂單編號:</td>

        </tr>
        <tr>
            <td>訂購人信箱:</td>
        </tr>
        <tr>

            <td>乘客資訊:</td>
        </tr>
        <tr>
            <td>時間:</td>
        </tr>
        
    </table>
    <hr />
    <div>
        <input type="submit" value="列印明細" />
        <a href="<c:url value="/index.jsp"/>"><input type="button" value="回查詢首頁" /></a>
    </div>
</body>
</html>