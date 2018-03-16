<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/css/headerlink.jsp" />
    <meta charset="utf-8" />
    <title>資料填寫</title>
<style>
.checktable {
	margin: auto;
	text-align: center;
	border-collapse: collapse;
	border: 2px solid black;
	margin: 20px auto;
	width: 600px;
}

.checkthead {
	border: 2px solid black;
}
</style>
<link href="<c:url value='/css/search/jquery-ui.min.css'/>"type="text/css" rel="stylesheet">

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>

</head>
<body>
	<jsp:include page="/page/shared/header.jsp" />
	<br><br><br>
	<article>
    <h1>資料填寫</h1>
    <hr/>
	<form action="<c:url value='/Searchenter.controller'/>" method="get">
    <table  class="checktable">
	    <thead>
		    <tr>
		    	<th>訂購人資料</th>
		    	<th></th>
		    </tr>
	<!--     <h2>訂購人資料填寫</h2> -->
	    </thead>
	    <tbody>
		    <tr>
			    <td>電子郵件:</td>
			    <td><input type="text" name="email"/></td>
			    <td>${error.erremail}</td>
		    </tr>
		    <tr>
			    <td> 再確認電子郵件:</td>
			    <td><input type="text" /></td>
			    <td></td>
		    </tr>
	    
	    </tbody>
	    
	    <thead>
	    	<tr>
		    	<th>乘客資訊</th>
		    	<th></th>
		    	<th></th>
	    	</tr>
	    </thead>
	    <tbody>
		    <tr>
			    <td>姓氏(護照上的英文姓):</td>
			    <td><input type="text" name="firstname" /></td>
			    <td>${error.errfirstname}</td>
		    </tr>
		    <tr>
			    <td>名字(護照上的英文名):</td>
			    <td><input type="text" name="lastname" /></td>
			    <td>${error.errlastname}</td>
		    </tr>
			<tr>
			    <td>聯絡電話:</td>
			    <td><input type="text" name="phone"/></td>
			    <td>${error.errphone}</td>
		    </tr>
		    <tr><td>孩童:</td></tr>
	    	<tr>
		    	<td>生日:</td>
		    	<td><input type="text" name="brithday"/></td>
		    	<td>${error.errbrithday}</td>
	    	</tr>
	    <tr>
		    <td>幾個月</td>
		    <td><input type="text" name="brithday"/> </td>
		    <td></td>
	    </tr>
	    </tbody>
	    
	    <thead>
	    	<tr>
		    	<th>聯絡人資訊</th>
		    	<th></th>
		    	<th></th>
	    	</tr>
	    </thead>
	    <tbody>
		    <tr>
		    	<td>姓氏:</td>
		    	<td><input type="text" name=""/></td>
		    	<td>${error.err}</td>
		    </tr>
	    	<tr>
	    		<td>名字:</td>
		    	<td><input type="text" name=""/></td>
		    	<td>${error.err}</td>
	    	</tr>
	    	<tr>
	    		<td>緊急連絡電話:</td>
		    	<td><input type="text" name=""/></td>
		    	<td>${error.err}</td>
	    	</tr>
	    
	    </tbody>
    </table>

        <hr />
        <div>
            <input type="submit" id="next" value="下一步" />
            <a href="<c:url value='/page/search/02select.jsp'/>"><input type="button" value="返回查詢結果" /></a>
            <a href="<c:url value='/index.jsp'/>"><input type="button" value="回查詢首頁" /></a>
        </div>
    </form>
    </article>
    <jsp:include page="/page/shared/footer.jsp" />
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>