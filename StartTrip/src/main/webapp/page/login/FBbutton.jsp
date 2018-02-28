<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Facebook login</title>
<head>
<script src="src/main/webapp/js/jquery-3.3.1.min.js"></script>
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
				version : 'v2.12',
			});

			FB.AppEvents.logPageView();

		};
		//檢查登入狀態

		FB.getLoginStatus(function (response) {

		    /* 如果有授權資料
		        也可以用 response.status 來判斷
		        response.status = 'connected'  已連接
		        response.status = 'not_authorized'  未授權 
		        請參考 FB SDK  FB.getLoginStatus
		        https://developers.facebook.com/docs/reference/javascript/FB.getLoginStatus/
		    */

		     if (response.authResponse) {
		          //授權登入後就可以取到 accessToken，以後可以做一些事
		          //可以做什麼事可以看這裡  http://developers.facebook.com/docs/reference/api/
		          //https://developers.facebook.com/docs/reference/api/examples/  
		          //但這個例子用不到

		          var accessToken = response.authResponse.accessToken;
		          FB.api('/me', function (response) {
		                 CheckPlayer(response.id, response.name, response.email, response.birthday);
		         });
		     } else {
		    	 FB.login(function (response) {

		              if (response.authResponse) {

		                     FB.api('/me', function (response) {
		                           //所以 login 後可以直接取得下面的值，並傳入 CheckPlayer 這 function 
		                           //然後在 CheckPlayer 中透過AJAX在資料庫中檢查並寫入資料庫
		                           CheckPlayer(response.id, response.name, response.email, response.birthday);
		                     });
		               } else {
		                    alert('登入失敗!');
		               }
		         }, {
		                 scope: 'email,user_birthday'
		         });
		     }
		});

		function CheckPlayer(uid, cname, email, birthday) {

		       $.ajax({
		              url: 'AJAX/CheckGamePlayer.aspx',
		              type: 'POST',
		              data: { uid: uid, cname: cname, email: email, birthday: birthday },
		              dateType: 'html',
		              success: function () {
		                    //檢查資料庫並新增完之後就看要幹嘛
		               }
		       })
		     }
	</script>
</body>
</html>