<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Facebook login button</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../../js/jquery-3.3.1.min.js"></script>
<link rel="shortcut icon" href="img/webicon.ico" />
</head>
<body>
	<script>
		window.fbAsyncInit = function() {
			FB.init({
				appId : '1616500528432537',
				xfbml : true,
				version : 'v2.12',
			});

			FB.getLoginStatus(function(response) {
				if (response.status === 'connected') {
					console.log('connected');
				} else {
					alert('please login');
				}
			});
		
			FB.AppEvents.logPageView();
		};

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
	</script>
	<script>
		// Only works after `FB.init` is called
		function myFacebookLogin() {
			console.log('login,successed');
			alert('login,successed');
		}
	</script>
	<fb:login-button autologoutlink="true" size="large"
		scope="public_profile,email" onlogin="myFacebookLogin()"></fb:login-button>

</body>
</html>