<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/css/backstage/default.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/css/backstage/fonts.css' />" rel="stylesheet" type="text/css" />

<script src="<c:url value="/js/jquery-3.3.1.min.js" />"></script>
<title>Insert title here</title>
</head>
<body>
<div id="page" class="container">
	<jsp:include page="/page/backstage/headerBackstage.jsp"></jsp:include>
	<div id="main">
		<table id="bonusImgTable" style="width:80%">
			<thead>
				<tr><th><h2>紅利頁面輪播牆</h2></th></tr>
				<tr><th>編號</th><th>圖片</th><th>描述</th><th>動作</th></tr>
			</thead>
			<tbody id="showImgBody">
				<tr><td>1</td><td><img src="<c:url value="/image/backstage/01.gif"/>"/></td><td>飛機</td><td><button>上移</button><br/><button>下移</button><br/><button>刪除</button></td></tr>
			</tbody>
		</table>
	
	
		<form action="<c:url value='/FileUpLoad.controller' />" method="post" enctype = "multipart/form-data">
			Select file to upload: <input type="file" name="file" size="60"/>
			<input type="submit" value="上傳" />
		</form>
		<div id="show"><h1>SHOW!!</h1>
		</div>
	</div>
</div>
<script>
$(function(){
	$.ajax({
		url:'<c:url value="/FileUpLoad.controller"/>',
		type:'GET',
		dataType:"json",
		scriptCharset:'UTF-8',
		success:function(data){
			var documentFragment=$(document.createDocumentFragment());
			for(var i=0,max=data.length;i<max;i++){
				var tr=$("<tr></tr>");
				
				var td0=$("<td></td>");
				td0.text(i);
				var img=$("<img></img>");
				img.attr({src:'<c:url value="/image/backstage/'+data[i]+'"/>'});
				var td1=$("<td></td>");
				td1.append(img);
				var td2=$("<td></td>");
				td2.text("飛機");
				var td3=$("<td></td>");
				var but0=$("<button></button>").text("上移");
				var but1=$("<button></button>").text("下移");
				var but2=$("<button></button>").text("刪除");
				td3.append(but0).append(but1).append(but2);
				
				tr.append(td0).append(td1).append(td2).append(td3);
				
				documentFragment.append(tr);
			}
			$("#showImgBody").append(documentFragment);
		}
	});
});
</script>
</body>
</html>