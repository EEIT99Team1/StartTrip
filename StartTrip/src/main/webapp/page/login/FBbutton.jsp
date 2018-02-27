<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Facebook login</title>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<link rel="stylesheet" href="style.css" />
<script>
			$(document).ready(function() {
				// Execute some code here
			});
		</script>
</head>
</head>

<body>
		<!-- Facebook Login button -->
		<div class="fb-login-button" data-width="100" data-max-rows="1"
			data-size="medium" data-button-type="login_with"
			data-show-faces="false" data-auto-logout-link="false"
			data-use-continue-as="false"></div>
		<div id="fb-root"></div>
		<!-- 
	<fb:login-button scope="public_profile,email"
		onlogin="checkLoginState();">
	</fb:login-button>
	 -->
		<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.12&appId=1616500528432537&autoLogAppEvents=1';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

		<script>
		window.fbAsyncInit = function() {
			FB.init({
				appId : b9d5e0e9970128e99c9f47e1d5f6e960,
				cookie : true,
				xfbml : true,
				version : v2.12
			});

			FB.AppEvents.logPageView();

		};
	</script>
</body>
</html>