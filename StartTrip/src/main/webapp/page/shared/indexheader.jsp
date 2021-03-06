<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
  <script src="https://apis.google.com/js/api:client.js"></script>
<%-- <link href="<c:url value='/css/login/bouncebutton.css'/>"type="text/css" rel="stylesheet" /> --%>
<%-- <link href="<c:url value='/css/login/FB&Googlebutton.css'/>" rel="stylesheet" > --%>

<style>
#fbRead {display: none;}
#fPaswrd{display: none;}
/* Google button CSS */
    #customGoogleBtn {display: inline-block;background:#DD4B39;color:#FFF; width:190px;
      height:34px;border-radius: 5px;border: thin solid #888;box-shadow: 1px 1px 1px grey;
      white-space: nowrap;font-size: 16px;text-align:center;line-height:34px;
      font-weight: bold;font-family: 'Roboto', sans-serif;}
    #customGoogleBtn:hover {cursor: pointer;}
</style>
<script type="text/javascript">
	$(function() {
		$("#date").datepicker({dateFormat : 'yy-mm-dd',changeYear : true,changeMonth : true,yearRange : '-100:+0',maxDate : "+0D"})
	});
	function refreshcode() {
		document.getElementById("code").src = "CodeMakerServlet?a="+ Math.random() + 100;
		return false;}
</script>
<script>
//Google
  var googleUser = {}; var startApp = function() {
    gapi.load('auth2', function(){
      // Retrieve the singleton for the GoogleAuth library and set up the client.
      auth2 = gapi.auth2.init({
        client_id: '145884058344-anfdfmdnrv2eb0so3t0tdanec9gqv9tm.apps.googleusercontent.com',
        //cookiepolicy: 'single_host_origin',
        // Request scopes in addition to 'profile' and 'email'
        scope: 'profile email'});
      attachSignin(document.getElementById('customGoogleBtn'));
    });
  };
  function attachSignin(element) {
    console.log("element.id:"+element.id);
    auth2.attachClickHandler(element, {},
        function(googleUser) {
          console.log('FamilyName='+googleUser.getBasicProfile().getFamilyName());
          console.log('GivenName='+googleUser.getBasicProfile().getGivenName());
          console.log('Email='+googleUser.getBasicProfile().getEmail());
          document.getElementById('inputAccountAndPasswordSpaceFormId').style.display = 'none';
			document.getElementById('otherBtns').style.display = 'none';
			$("#fbRead").show();
			$("#inputFname").val(googleUser.getBasicProfile().getGivenName());
			$("#inputLname").val(googleUser.getBasicProfile().getFamilyName());
			$("#inputEmail").val(googleUser.getBasicProfile().getEmail());
        }, function(error) {
          alert(JSON.stringify(error, undefined, 2));
        });
  }
//   googlesignOut
  function signOut() {var auth2 = gapi.auth2.getAuthInstance();
  		auth2.signOut().then(function () {console.log('User signed out.');});}
  </script>
<header>
	<nav>
		<ul class="menu">
			<li class="menuliimg"><a href="<c:url value="/index.jsp"/>"><img
					class="menuimg" style="height: 80px" src="<c:url value='/image/index/01.png'/>" /></a></li>
			<li class="menuli menuli1"><a href="<c:url value="/index.jsp"/>">機票</a></li>
			<li class="menuli menuli2"><a href="http://localhost:8080/StartTrip/page/House/House.jsp">民宿</a></li>			
			<li class="menuli menuli3"><a href="<c:url value="/page/bonusshop/BonusShop.jsp"/>">紅利商城</a></li>
			<li><input type="button" id="button" class="button" style="float: right;margin-top:23px" value="Login"/></li>

		</ul>

		<!--下拉選單 -->
		<div class="customermenu">
			<div class="customeroption">
				<ul>
					<li><a
						href="<c:url value="/page/register/CutomerInfoAndUpdate.jsp"/>">個人資料</a></li>
					<li><a
						href="<c:url value='/OrderHistoryController.controller'/>">機票訂單</a></li>
					<li><a href="<c:url value="/page/bonusshop/BonusShop.jsp"/>">紅利商店</a></li>
					<li><a
						href="<c:url value="/BonusShopOrderHistory.controller"/>">紅利訂單</a></li>
					<li><a id="logout">登出</a></li>
				</ul>
			</div>
		</div>

		<div id="myModal" class="modal">


			<div class="modal-content">
				<div class="modal-header">
					<span class="close">&times;</span>
					<h2>會員登入</h2>
				</div>

				<div class="modal-body">
					<div id="fLoginfrom">
						<form id="inputAccountAndPasswordSpaceFormId"
							action="<c:url value="/LoginServlet"/>" method="post">
							<label>帳號：</label>
							<input type="text" name="userEmail" size="20" value="${param.userEmail}">
							&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.AccountEmptyError}</Font></small><br />
							<label>密碼：</label>
							<input type="password" name="pswd" size="20">
							&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.PasswordEmptyError}</Font></small><br /><br />
             				&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.LoginError}</Font></small>
             				<div>
             				<a href="<c:url value="/page/register/Register.jsp"/>">Sign up</a>
             				<a href="#" onclick="_pa6789()">忘記密碼？</a>
             				</div>
							<input id="mybutton"  class="button" type="submit" value="Login">
							<c:set var="target" value="${pageContext.request.servletPath}" scope="session" />
						</form>
					</div>
						<form action="<c:url value="/InsertFBMemberServlet" />" method="post" id="fbRead">
						<div>
							<br /> <label for="email">Email：</label> <input id="inputEmail"
								type="text" readonly name="email" size="40"
								value="${param.email}" /> 
						</div>
						<br />
						<div>
							<label for="password">密碼：</label> <input required type="password"
								name="psd1" size="15">
								<label for="password">確認密碼：</label> <input required type="password"
								name="psd2" size="15"> 
						</div>
						<br />
						<div>
							<label for="lastname">姓：</label> <input required id="inputLname"
								type="text" name="lastname" size="20" value="${param.lastname}"
								required readonly /> <small><Font color='red' size="-3">${error.lastnameerr}</Font></small>
						</div>
						<br />
						<div>
							<label for="firstname">名：</label> <input required id="inputFname"
								type="text" name="firstname" size="10"
								value="${param.firstname}" required readonly /> <small><Font
								color='red' size="-3">${error.firstnameerr}</Font></small>
						</div>
						<br />
						<div>
							<label for="country">國家：</label> <select name="country" required>
								<option selected value="TW">台灣</option>
								<option value="AF">澳洲</option>
								<option value="AL">加拿大</option>
								<option value="DZ">印度</option>
								<option value="AS">俄羅斯</option>
								<option value="AD">美國</option>
								<option value="JP">日本</option>
							</select>
						</div>
						<br />
						<div>
							生日：<input required type="text" id="date" name="birthday"
								value="${param.birthday}" required /> <small><Font
								color='red' size="-3">${error.birthdayerr}</Font></small>
						</div>
						<br />
						<div>
							電話：<input required type="text" name="phonenumber" size="20"
								value="${param.phonenumber}" required /> <small><Font
								color='red' size="-3">${error.phonenumbererr}</Font></small>
						</div>

						<br /> <input type="submit" name="submit" value="註冊會員" /><br /> <br />
					</form>
				<!--忘記密碼？ -->
					<form id="fPaswrd" method=post action="<c:url value='/MailServlet' />">
						E-mail：<input type="text"
							pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="input"
							name="email" placeholder="請輸入已註冊帳號" required>
						<br />驗證碼：<input type="text" size="4" maxlength="4" name="rand"
							placeholder="驗證碼" required /><br /><img
							id="code" src="CodeMakerServlet" title="看不清，點擊更換驗證碼"
							style="cursor: pointer;" onclick="return refreshcode()" /> <br />
						<input type=submit value="提交"  >
					</form>
				</div>
			
				<div class="modal-footer" id="otherBtns">
					<button id="" class="loginBtn loginBtn--facebook" onclick="_login()">使用Facebook註冊</button>
					<div id="customGoogleBtn" class="customGPlusSignIn" ><span>使用Google註冊</span><script>startApp();</script></div>
				</div>
			</div>
		</div>
	</nav>
</header>
