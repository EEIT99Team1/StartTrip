<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="<c:url value="/css/login/bouncebutton.css"/>"
	rel="stylesheet" />
<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>



<title>Insert title here</title>
</head>
<body>
<a id="button" class="button" href="#" style="float:right;padding-top:2%;padding-bottom:2%;">Login</a>
	<div id="myModal" class="modal">
		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header">
				<span class="close">&times;</span>
				<h2>會員登入</h2>
			</div>

			<div class="modal-body">
				<form id="inputAccountAndPasswordSpaceFormId"
					action="<c:url value="/LoginServlet"/>" method="post">
					<label>帳號：</label><input type="text" name="userEmail" size="20"
						value="${param.userEmail}">&nbsp;<small><Font color='red' size="-3">${ErrorMsgKey.AccountEmptyError} </Font></small><br />
					<label>密碼：</label><input type="password" name="pswd" size="20"
						value="${param.password}">&nbsp;<small><Font color='red' size="-3">${ErrorMsgKey.PasswordEmptyError} </Font></small><br />
					<br />
					<c:set var="target" value="${pageContext.request.servletPath}"
						scope="session" />
					<input id="mybutton" class="button" type="submit" value="Login">
				</form>
			</div>

		</div>
	</div>
	<script>
	$(document).ready(function(){
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the button that opens the modal
		var btn = document.getElementById("button");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 
		btn.onclick = function() {
		    modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
		    modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		    if (event.target == modal) {
		        modal.style.display = "none";
		    }
		}});
	</script>
	<script>
	$(document).ready(function(){
			var error = ${hasError};
			var user = ${param.userEmail};
			var password = ${param.password};
			console.log(error + user + password);
			if (error) {
				$(".modal").css("display", "block");
			} else {
				$(".modal").css("display", "none");
			}
		});
	</script>
</body>
</html>