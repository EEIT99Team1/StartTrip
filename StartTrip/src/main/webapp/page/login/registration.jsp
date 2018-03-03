<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>一般會員註冊</title>
<script>
	$(function() {
		$("#dialog").dialog({
			autoOpen : false,
			modal : true,
			draggable : false,
			show : {
				effect : "blind",
				duration : 500
			},
			hide : {
				effect : "blind",
				duration : 500
			}

		});

		$("#opener").on("click", function() {
			$("#dialog").dialog("open");
		});
	});
</script>
</head>
<body>

	<div id="dialog" title="一般會員註冊">
		<form name='registration' onSubmit="return formValidation();">
			<div><label for="email">Email:</label>
				<input type="text" name="email" size="" /></div>
			<div>
			<div>
				<label for="passid">密碼:</label> <input type="password"
					name="passid" size="12" />
			</div>
				<label for="lastname">姓:</label> <input type="text" name="lastname"
					size="" />
			</div>
			<div>
				<label for="firstname">名:</label> <input type="text"
					name="firstname" size="" />
			</div>
			<div>
				<label for="country">Country:</label> <select name="country">
					<option selected="" value="Default">Taiwan</option>
					<option value="AF">Australia</option>
					<option value="AL">Canada</option>
					<option value="DZ">India</option>
					<option value="AS">Russia</option>
					<option value="AD">USA</option>
				</select>
			</div>
			<div>
				<label for="birthday">生日:</label> 
				<input type="text" name="birthday" size="" />
			</div>
			<div><input type="submit" name="submit" value="註冊一般會員" /></div>
		</form>
	</div>
	<button id="opener">註冊一般會員</button>
</body>
</html>