<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="<c:url value='/page/login/img/webicon.ico'/>" />
	<jsp:include page="/css/headerlink.jsp" />
    <meta charset="utf-8" />
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>資料填寫</title>
   
<link href="<c:url value='/css/search/jquery-ui.min.css'/>"type="text/css" rel="stylesheet">

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
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
	
<style>

.container{
width: 900px;
background:rgba(209, 209, 209,0.7);
}

form{
width: 800px;
margin:auto;
}
body{
background:rgba(255, 244, 194,0.6);
}
.menuli1{
            background:rgba(0, 125, 250,0.6);
			color:white;
        }
</style>
	
</head>
<body >
	<jsp:include page="/page/shared/header.jsp" />
	<br><br><br>
<!-- 	<div class="container"> -->
<!-- 		<div class="col-md-8 order-md-1"> -->
<!-- 			<h4 class="mb-3">乘客資訊</h4> -->
<!-- 		    <h1>資料填寫</h1> -->
<!-- 		    <hr/> -->
<!-- 			<form class="needs-validation" id="passengerForm" action="#"> -->
<!-- 			</form> -->
<!-- 		</div> -->
<!-- 	</div> -->
	
<div class = "container">
<form id="passengerForm" action="<c:url value='/Searchenter.controller'/>" method="get">
    <table  class="table">
	    <thead>
		    <tr>
		    	<th colspan="2"><h3>聯絡人資料填寫</h3></th>

		    </tr>
	    </thead>
	    <tbody>
		    <tr>
			    <td>電子郵件:</td>
			    <td><input class="form-control" type="text" autocomplete="off" name="email" value="${LoginOK.email}"/></td>
		    </tr>
		    <tr>
			    <td> 再確認電子郵件:</td>
			    <td><input class="form-control" type="text" autocomplete="off"  value="${LoginOK.email}"/></td>
		    </tr>
		    <tr>
			    <td> 聯絡人姓氏:</td>
			    <td><input class="form-control" type="text" autocomplete="off" name="efirstname" value="${LoginOK.firstname}"/></td>
		    </tr>
		    <tr>
			    <td> 聯絡人名字:</td>
			    <td><input class="form-control" type="text" autocomplete="off" name="elastname" value="${LoginOK.lastname}"/></td>
		    </tr>
		    <tr>
			    <td> 聯絡人電話:</td>
			    <td><input class="form-control" type="text" autocomplete="off" name="ephone" value="${LoginOK.phonenumber}"/></td>
		    </tr>
	    </tbody>
 </table>
	    
<!-- 	    <thead> -->
<!-- 	    	<tr> -->
<!-- 		    	<th>乘客資訊</th> -->
<!-- 		    	<th></th> -->
<!-- 		    	<th></th> -->
<!-- 	    	</tr> -->
<!-- 	    </thead> -->
<!-- 	    <tbody> -->
<!-- 		    <tr> -->
<!-- 			    <td>姓氏(護照上的英文姓):</td> -->
<!-- 			    <td><input type="text" name="firstname" /></td> -->
<%-- 			    <td>${error.errfirstname}</td> --%>
<!-- 		    </tr> -->
<!-- 		    <tr> -->
<!-- 			    <td>名字(護照上的英文名):</td> -->
<!-- 			    <td><input type="text" name="lastname" /></td> -->
<%-- 			    <td>${error.errlastname}</td> --%>
<!-- 		    </tr> -->
<!-- 			<tr> -->
<!-- 			    <td>聯絡電話:</td> -->
<!-- 			    <td><input type="text" name="phone"/></td> -->
<%-- 			    <td>${error.errphone}</td> --%>
<!-- 		    </tr> -->
<!-- 		    <tr><td>孩童:</td></tr> -->
<!-- 	    	<tr> -->
<!-- 		    	<td>生日:</td> -->
<!-- 		    	<td><input type="text" name="brithday"/></td> -->
<%-- 		    	<td>${error.errbrithday}</td> --%>
<!-- 	    	</tr> -->
<!-- 	    <tr> -->
<!-- 		    <td>幾個月</td> -->
<!-- 		    <td><input type="text" name="brithday"/> </td> -->
<!-- 		    <td></td> -->
<!-- 	    </tr> -->
<!-- 	    </tbody> -->
	    
<!-- 	    <thead> -->
<!-- 	    	<tr> -->
<!-- 		    	<th>聯絡人資訊</th> -->
<!-- 		    	<th></th> -->
<!-- 		    	<th></th> -->
<!-- 	    	</tr> -->
<!-- 	    </thead> -->
<!-- 	    <tbody> -->
<!-- 		    <tr> -->
<!-- 		    	<td>姓氏:</td> -->
<!-- 		    	<td><input type="text" name=""/></td> -->
<%-- 		    	<td>${error.err}</td> --%>
<!-- 		    </tr> -->
<!-- 	    	<tr> -->
<!-- 	    		<td>名字:</td> -->
<!-- 		    	<td><input type="text" name=""/></td> -->
<%-- 		    	<td>${error.err}</td> --%>
<!-- 	    	</tr> -->
<!-- 	    	<tr> -->
<!-- 	    		<td>緊急連絡電話:</td> -->
<!-- 		    	<td><input type="text" name=""/></td> -->
<%-- 		    	<td>${error.err}</td> --%>
<!-- 	    	</tr> -->
	    
<!-- 	    </tbody> -->

	</form>
	</div>	
<script>
	$(document).ready(function(){
		var documentFragment1 = $(document.createDocumentFragment());
		
		var adult = parseInt("${go1.adult}");

		for(var i=1;i<=adult;i++){
			var pid="p"+i;
			
			//firstname			
			var input1=$("<input></input>");
			input1.attr({type:"text",id:pid+"firstName",name:"afirstName"+i,required:"required","autocomplete":"off"});
			input1.addClass("form-control");
			var label1=$("<label></label>");
			label1.text("First name").attr("for",pid+"firstName");
			var divfirname=$("<div></div>");
			divfirname.addClass("col-md-4 mb-3").append(label1).append(input1);
			
			//lastname
			var input2=$("<input></input>");
			input2.attr({type:"text",id:pid+"lastName",name:"alastName"+i,required:"required","autocomplete":"off"});
			input2.addClass("form-control");
			var label2=$("<label></label>");
			label2.text("Last name").attr("for",pid+"lastName");
			var divlasname=$("<div></div>");
			divlasname.addClass("col-md-4 mb-3").append(label2).append(input2);
			
// 		alert(adult);
// 			//乘客聯絡電話
			var input3=$("<input></input>");
			input3.attr({type:"text",id:pid+"phone",name:"phone"+i,required:"required","autocomplete":"off"});
			input3.addClass("form-control");
			var label3=$("<label></label>");
			label3.text("乘客聯絡電話").attr("for",pid+"phone");
			var divpassport=$("<div></div>");
			divpassport.addClass("col-md-4 mb-3").append(label3).append(input3);

			var h1=$("<h5></h5>");
			h1.text("乘客"+i).addClass("col-md-12 mb-3");
			
			var divrow=$("<div></div>");
			divrow.addClass("row").append(h1).append(divfirname).append(divlasname)
			.append(divpassport);
// .append(divexpiry);
			if(i==1){
				input1.attr({value:"${LoginOK.firstname}"});
				input2.attr({value:"${LoginOK.lastname}"});
				input3.attr({value:"${LoginOK.phonenumber}"});
			}
			documentFragment1.append(divrow);
			
		}//forloop END
		
		var documentFragment2 = $(document.createDocumentFragment());
		var child = parseInt("${go1.child}");
		if(child >=1){	
			for(var j=1;j<= child ;j++){
				var cid="c"+j;
 				//firstname			
				var input1=$("<input></input>");
				input1.attr({type:"text",id:cid+"firstName",name:"cfirstName"+j,required:"required","autocomplete":"off"});
				input1.addClass("form-control");
				var label1=$("<label></label>");
				label1.text("First name").attr("for",cid+"firstName");
				var divfirname=$("<div></div>");
				divfirname.addClass("col-md-4 mb-3").append(label1).append(input1);
				
				//lastname
				var input2=$("<input></input>");
				input2.attr({type:"text",id:cid+"lastName",name:"clastName"+j,required:"required","autocomplete":"off"});
				input2.addClass("form-control");
				var label2=$("<label></label>");
				label2.text("Last name").attr("for",cid+"lastName");
				var divlasname=$("<div></div>");
				divlasname.addClass("col-md-4 mb-3").append(label2).append(input2);
				
				//birthday
				var input2=$("<input></input>");
				input2.attr({type:"text",id:cid+"kidbirthday",name:"kidbirthday"+j,required:"required","autocomplete":"off"});
				input2.addClass("form-control");
				var label2=$("<label></label>");
				label2.text("birthday").attr("for",cid+"kidbirthday");
				var divkidbirthday=$("<div></div>");
				divkidbirthday.addClass("col-md-4 mb-3").append(label2).append(input2);
			
				var h2=$("<h5></h5>");
				h2.text("孩童"+j).addClass("col-md-12 mb-3");
				
				var divrow=$("<div></div>");
				divrow.addClass("row").append(h2).append(divfirname).append(divlasname).append(divkidbirthday);
				
				documentFragment2.append(divrow);
			}
		}
		var buttondiv=$("<div></div>").css({"padding":"20px 27%"});
		var submit=$("<input></input>").css({"margin":"10px"});
		submit.attr({type:"submit",value:"確認送出"}).addClass("btn btn-secondary").css({"opacity": "0.8"});
		
// 		<a href="02select.jsp">
		var a1 = $("<a></a>").attr({"href":"02select.jsp"});
		
		var button1=$("<input></input>").css({"margin":"5px"});
		button1.attr({type:"button",value:"返回查詢結果"}).addClass("btn btn-secondary").css({"opacity": "0.8"});
		a1.append(button1);
		
		var a2 = $("<a></a>").attr({"href":"../../index.jsp"});
		var button2=$("<input></input>").css({"margin":"5px"});
		button2.attr({type:"button",value:"回首頁"}).addClass("btn btn-secondary").css({"opacity": "0.8"});
		a2.append(button2);
		
		buttondiv.append(a1).append(submit).append(a2);
		$("#passengerForm").append(documentFragment1).append(documentFragment2).append(buttondiv);
		
	});
	</script>
	
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />

    <jsp:include page="/page/shared/footer.jsp" />
</body>
</html>
