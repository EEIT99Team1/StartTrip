<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
</head>
<body class="bg-light">
	<div class="container">
		<div class="col-md-8 order-md-1">
			<h4 class="mb-3">乘客資訊</h4>
			<form class="needs-validation" id="passengerForm" action="#">
<!-- 				<div class="row"> -->
<!-- 					<div class="col-md-6 mb-3"> -->
<!-- 						<label for="firstName">First name</label> <input type="text" -->
<!-- 							class="form-control" id="firstName" value="" required="required"> -->
<!-- 										<div class="invalid-feedback">Valid first name is required.</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-6 mb-3"> -->
<!-- 						<label for="lastName">Last name</label> <input type="text" -->
<!-- 							class="form-control" id="lastName" value="" required> -->
<!-- 										<div class="invalid-feedback">Valid last name is required.</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-md-6 mb-3"> -->
<!-- 						<label for="passport">護照號碼</label> <input type="text" -->
<!-- 							class="form-control" id="passport" value="" required> -->
<!-- 										<div class="invalid-feedback">Valid first name is required.</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-6 mb-3"> -->
<!-- 						<label for="expiry">護照到期日</label> <input type="text" -->
<!-- 							class="form-control" id="expiry" value="" required> -->
<!-- 										<div class="invalid-feedback">Valid last name is required.</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<input type="submit" value="submit" /> -->
			</form>
		</div>
	</div>

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
		var documentFragment = $(document.createDocumentFragment());
		for(var i=1;i<=3;i++){
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
			
			documentFragment.append(divrow);
		}//forloop END
		var submit=$("<input></input>");
		submit.attr({type:"submit",value:"確認送出"}).addClass("btn btn-success");
		
		
		$("#passengerForm").append(documentFragment).append(submit);
	});
	</script>
</body>
</html>