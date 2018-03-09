<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/css/login/FB&Googlebutton.css'/>"
	rel="stylesheet">
<title>button</title>
</head>
<body>
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
					xfbml : true,
					version : 'v2.12'
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
			document
					.getElementById('loginBtn')
					.addEventListener(
							'click',
							function() {
								//do the login
								FB.login(function(response) {
									if (response.authResponse) {
								//user just authorized your app
									document.getElementById('loginBtn').style.display = 'none';
									getUserData();
									}
									},
							{scope : 'email,public_profile',
							return_scopes : true
												});
							}, false);
		}
	</script>
	<button id="loginBtn" class="loginBtn loginBtn--facebook">使用Facebook登入</button>
	<div id="response"></div>
</body>
</html>