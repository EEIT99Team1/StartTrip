<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乘客資料確認</title>

<style type="text/css">
.checktitle{
	margin: auto;
	margin: 20px auto;
	width: 600px;
	line-height: 60px;
}

.checktable {
	margin: auto;
	text-align: center;
	border-collapse: collapse;
	border: 2px solid black;
	margin: 20px auto;
	width: 600px;
}
.checkman{

}

.checkthead {
	border: 2px solid black;
}
</style>

<link href="<c:url value='/css/search/jquery-ui.min.css'/>"
	type="text/css" rel="stylesheet">
<link href="<c:url value='/css/login/bouncebutton.css'/>"
	type="text/css" rel="stylesheet" />
<link href="<c:url value='/css/login/FB&Googlebutton.css'/>"
	rel="stylesheet">

<link href="<c:url value='/css/title.css'/>" type="text/css"
	rel="stylesheet" />
<link href="<c:url value='/css/footer.css'/>" type="text/css"
	rel="stylesheet" />
<%-- 	<link href="<c:url value='/css/search/searchbody.css'/>" type="text/css" rel="stylesheet" /> --%>

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>


</head>
<body>
	<jsp:include page="/page/shared/header.jsp" />
	<br />
	<br />
	<br />
	<div>
		<table class="checktitle">
			<tr><td><h1>資料確認</h1></td></tr>
			<tr><td><h3>機票資訊</h3></td></tr>
		</table>
		<hr>
	
		<table class="checktable">
			<tr>
				<td>大人人數:</td>
				<td>${go1.adult}</td>
			</tr>
			<tr>
				<td>小孩人數:</td>
				<td>${go1.child}</td>
			</tr>
		</table>
	</div>

	<div>
		<table class="checktable">
			<thead class="checkthead">
				<tr>
					<td></td>
					<td>班機機型</td>
					<td>起飛</td>
					<td style="width: 20px"></td>
					<td>降落</td>
					<td>飛行時間</td>
					<td></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th rowspan="6">去程:</th>
					<td rowspan="3">${go1.model}</td>
					<td rowspan="2">${go1.uptime}</td>
					<td rowspan="2"></td>
					<td rowspan="2">${go1.downtime}</td>
					<td rowspan="3">()3時10分</td>
					<td>${go1.flight}</td>
				</tr>
				<tr>
					<td>():經濟艙(F)</td>
				</tr>
				<tr>
					<td>${go1.start}</td>
					<td></td>
					<td>${go1.endstart}</td>
					<td>():30kg</td>
				</tr>
				<tr>
					<td rowspan="3">${go2.model}</td>
					<td rowspan="2">${go2.uptime}</td>
					<td rowspan="2"></td>
					<td rowspan="2">${go2.downtime}</td>
					<td rowspan="3">()3時10分</td>
					<td>${go2.flight}</td>
				</tr>
				<tr>
					<td>():經濟艙(F)</td>
				</tr>
				<tr>
					<td>${go2.start}</td>
					<td></td>
					<td>${go2.endstart}</td>
					<td>():30kg</td>
				</tr>
			</tbody>
		</table>
		</br> </br>
		<table class="checktable">
			<thead class="checkthead">
				<tr>
					<td></td>
					<td>班機機型</td>
					<td>起飛</td>
					<td style="width: 20px"></td>
					<td>降落</td>
					<td>飛行時間</td>
					<td></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th rowspan="6">回程:</th>
					<td rowspan="3">${back1.model}</td>
					<td rowspan="2">${back1.uptime}</td>
					<td rowspan="2"></td>
					<td rowspan="2">${back1.downtime}</td>
					<td rowspan="3">()3時10分</td>
					<td>${back1.flight}</td>
				</tr>
				<tr>
					<td>():經濟艙(F)</td>
				</tr>
				<tr>
					<td>${back1.start}</td>
					<td></td>
					<td>${back1.endstart}</td>
					<td>():30kg</td>
				</tr>
				<tr>
					<td rowspan="3">${back2.model}</td>
					<td rowspan="2">${back2.uptime}</td>
					<td rowspan="2"></td>
					<td rowspan="2">${back2.downtime}</td>
					<td rowspan="3">()3時10分</td>
					<td>${back2.flight}</td>
				</tr>
				<tr>
					<td>():經濟艙(F)</td>
				</tr>
				<tr>
					<td>${back2.start}</td>
					<td></td>
					<td>${back2.endstart}</td>
					<td>():30kg</td>
				</tr>
			</tbody>

		</table>
	</div>
	<br />
	<div>
		    <table  class="form-control">
	    <thead>
		    <tr>
		    	<th><h2>聯絡人資料填寫</h2></th>
				<th></th>
		    </tr>
	    </thead>
	    <tbody>
		    <tr>
			    <td>電子郵件:</td>
			    <td></td>
		    </tr>
		    <tr>
			    <td> 聯絡人姓氏:</td>
			    <td></td>
		    </tr>
		    <tr>
			    <td> 聯絡人名字:</td>
			    <td></td>
		    </tr>
		    <tr>
			    <td> 聯絡人電話:</td>
			    <td></td>
		    </tr>
	    </tbody>
 </table>
		
<!-- 		<table class="checktable"> -->
<!-- 			<thead> -->
<!-- 				<tr> -->
<!-- 					<th>乘客資料</th> -->
<!-- 					<th></th> -->
<!-- 				</tr> -->
<!-- 			</thead> -->
<!-- 			<tbody> -->
<!-- 				<tr> -->
<!-- 					<td>姓氏(護照上的英文姓):</td> -->
<%-- 					<td>${pbean.firstname}</td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>名字(護照上的英文名):</td> -->
<%-- 					<td>${pbean.lastname}</td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>聯絡電話:</td> -->
<%-- 					<td>${pbean.phone}</td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>孩童:</td> -->
<!-- 					<td></td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>生日:</td> -->
<%-- 					<td>${pbean.brithday}</td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>幾個月</td> -->
<%-- 					<td>${pbean.brithmonth}</td> --%>
<!-- 				</tr> -->
<!-- 			</tbody> -->
<!-- 		</table> -->
		
<!-- 		<table class="checktable"> -->
<!-- 			<thead> -->
<!-- 				<tr> -->
<!-- 					<th>聯絡人資訊</th> -->
<!-- 					<th></th> -->
<!-- 				</tr> -->
<!-- 			</thead> -->
<!-- 			<tbody> -->
<!-- 				<tr> -->
<!-- 					<td>姓氏:</td> -->
<%-- 					<td>${error.err}</td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>名字:</td> -->
<%-- 					<td>${error.err}</td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>緊急連絡電話:</td> -->
<%-- 					<td>${error.err}</td> --%>
<!-- 				</tr> -->

<!-- 			</tbody> -->
<!-- 		</table> -->
<!-- 	</div> -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
		var documentFragment1 = $(document.createDocumentFragment());
		var adult = parseInt("${go1.adult}");
		for(var i=1;i<=adult;i++){
			var pid="p"+i;
			
			//firstname			
			var input1=$("<input></input>");
			input1.attr({type:"text",id:pid+"firstName",required:"required"});
			input1.addClass("form-control");
			var label1=$("<label></label>");
			label1.text("First name").attr("for",pid+"firstName");
			var divfirname=$("<div></div>");
			divfirname.addClass("col-md-6 mb-3").append(label1).append(input1);
			
			//lastname
			var input2=$("<input></input>");
			input2.attr({type:"text",id:pid+"lastName",required:"required"});
			input2.addClass("form-control");
			var label2=$("<label></label>");
			label2.text("Last name").attr("for",pid+"lastName");
			var divlasname=$("<div></div>");
			divlasname.addClass("col-md-6 mb-3").append(label2).append(input2);
			
			//護照號碼
			var input3=$("<input></input>");
			input3.attr({type:"text",id:pid+"passport",required:"required"});
			input3.addClass("form-control");
			var label3=$("<label></label>");
			label3.text("護照號碼").attr("for",pid+"passport");
			var divpassport=$("<div></div>");
			divpassport.addClass("col-md-6 mb-3").append(label3).append(input3);
			
			//護照到期日
			var input4=$("<input></input>");
			input4.attr({type:"text",id:pid+"expiry",required:"required"});
			input4.addClass("form-control");
			var label4=$("<label></label>");
			label4.text("護照到期日").attr("for",pid+"expiry");
			var divexpiry=$("<div></div>");
			divexpiry.addClass("col-md-6 mb-3").append(label4).append(input4);
			
			
			var h1=$("<h5></h5>");
			h1.text("乘客"+i).addClass("col-md-12 mb-3");
			
			var divrow=$("<div></div>");
			divrow.addClass("row").append(h1).append(divfirname).append(divlasname)
			.append(divpassport).append(divexpiry);
			
			documentFragment1.append(divrow);
			
		}//forloop END
		
		var documentFragment2 = $(document.createDocumentFragment());
		var child = parseInt("${go1.child}");

		if(child >=1){	
			for(var j=1;j<= child ;j++){
				var cid="c"+j;
// 				//firstname			
				var input1=$("<input></input>");
				input1.attr({type:"text",id:cid+"firstName",required:"required"});
				input1.addClass("form-control");
				var label1=$("<label></label>");
				label1.text("First name").attr("for",cid+"firstName");
				var divfirname=$("<div></div>");
				divfirname.addClass("col-md-6 mb-3").append(label1).append(input1);
				
				var h2=$("<h5></h5>");
				h2.text("孩童"+j).addClass("col-md-12 mb-3");
				
				var divrow=$("<div></div>");
				divrow.addClass("row").append(h2).append(divfirname);
				
				documentFragment2.append(divrow);
			}
		}
			
		var submit=$("<input></input>");
		submit.attr({type:"submit",value:"確認送出"}).addClass("btn btn-success");
		
// 		var a1 = $("")
		
		var button1=$("<input></input>");
		button1.attr({type:"button",value:"返回查詢結果"}).addClass("btn btn-success");
		var button2=$("<input></input>");
		button2.attr({type:"button",value:"回首頁"}).addClass("btn btn-success");
		
		
		$("#passengerForm").append(documentFragment1).append(documentFragment2).append(submit).append(button1).append(button2);
		
	});
</script>
	<div>
		<input type="submit" value="確認，下一步" /> <a href="04enter.jsp"><input
			type="button" value="返回" /></a>
	</div>

	<jsp:include page="/page/shared/footer.jsp" />
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>