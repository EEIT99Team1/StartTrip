<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/css/login/FB&Googlebutton.css'/>"
	rel="stylesheet">
<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
<link href="<c:url value='/css/search/jquery-ui.min.css'/>"type="text/css" rel="stylesheet">
<title>Insert title here</title>

</head>
<body>
	<form action="<c:url value="/InsertFBMemberServlet" />" method="post">
		<div>
			<label for="email" >Email：</label> 
			<input id="inputEmail" type="text" readonly name="email" size="40" value="${param.email}"/>
			<span>${error.emailerr}</span>
		</div>
		<br/>
			<div>
				<label for="password">密碼：</label> 
				<input type="password" name="password" size="15" >
				${error.passworderr}
			</div>
			<br/>
		<div>	
			<label for="lastname">姓：</label> 
			<input id="inputLname" type="text" name="lastname" size="20" value="${param.lastname}" required/>${error.lastnameerr}
		</div>
		<br/>
		<div>
			<label for="firstname">名：</label> 
			<input id="inputFname" type="text" name="firstname" size="10" value="${param.firstname}" required/>${error.firstnameerr}
		</div>
		<br/>
		<div>
			<label for="country">國家：</label> <select name="country" value="${param.country}"required>
				<option selected="" value="TW">台灣</option>
				<option value="AF">澳洲</option>
				<option value="AL">加拿大</option>
				<option value="DZ">印度</option>
				<option value="AS">俄羅斯</option>
				<option value="AD">美國</option>
				<option value="JP">日本</option>				
			</select>
		</div>
		<br/>
		<div >
				生日：<input type="text" id="date" name="birthday" value="${param.birthday}" required/> ${error.birthdayerr}
		</div>
		<br/>
		<div >
				電話：<input type="text" name="phonenumber" size="20" value="${param.phonenumber}" required /> ${error.phonenumbererr}
		</div>
	<input type="submit" value="signup"/>
	</form>
	<button class="loginBtn loginBtn--facebook" onclick="_login();">使用Facebook登入</button>
	<button onclick="javascript:logout()" id="logoutBtn"class="loginBtn loginBtn--facebook">登出您的Facebook</button>
	<div id="response"></div>

<script>
		window.onload = function() {
			function getUserData() {
				FB.api('/me?fields=name,id,first_name,last_name,email', function(response) {
					document.getElementById('response').innerHTML = 'Hello! '
					+ response.name;
				});
			}

			window.fbAsyncInit = function() {
				//SDK loaded, initialize it
				FB.init({
					appId : '1616500528432537',
					xfbml : true, // parse XFBML
					version : 'v2.12',
					cookie:true, // enable cookies to allow the server to access the session
				});

				//check user session and refresh it
				FB.getLoginStatus(function(response) {
							if (response.status === 'connected') {
								//user is authorized
								document.getElementById('loginBtn').style.display = 'none';
								getUserData();
							} else {
								//user is not authorized
					
							}
						});
				FB.AppEvents.logPageView();
			};

			//load the JavaScript SDK
			(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {
				return;
			}
			js = d.createElement(s);
			js.id = id;
			js.src = "https://connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.12&appId=1616500528432537&autoLogAppEvents=1";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
			
			//add event listener to login button
			document.getElementById('loginBtn').addEventListener('click',function() {
				//do the login
				FB.login(function(response) {
						if (response.authResponse) {
				//user just authorized your app
						document.getElementById('loginBtn').style.display = 'none';
						getUserData();}
							},
				{scope : 'email,public_profile',
				return_scopes : true
						});},false);
		}
		
		function logout() {
            FB.logout(function(response) {
              // user is now logged out
            	alert('LOGOUT');
            	console.log('LOGOUT');
            	document.location.reload();
            });
		}
		
		function _login() {
		    FB.login(function(response) {
		       // handle the response
		       if(response.status==='connected') {
		        _i();
		       }
		     }, {scope: 'public_profile,email'});
		 }
		 
		 function _i(){
		     FB.api('/me?fields=name,id,first_name,last_name,email', function(response) {
// 		        document.getElementById("inputFname").value = response.first_name;
// 		        document.getElementById("inputLname").value = response.last_name;
// 		        document.getElementById("inputEmail").value = response.email;
		        $("#inputFname").val(response.first_name);
		        $("#inputLname").val(response.last_name);
		        $("#inputEmail").val(response.email);
		    });
		 }
		 
		 $(function() {
				$("#date").datepicker({dateFormat: 'yy-mm-dd',changeYear: true,changeMonth:true,yearRange:'-100:+0'})
			});
		 

		 
</script>
</body>
</html>