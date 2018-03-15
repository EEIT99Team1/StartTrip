<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
#fbRead{
display:none;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#date").datepicker({
			dateFormat: 'yy-mm-dd',
			changeYear: true,
			changeMonth:true,
			yearRange:'-100:+0',
			maxDate: "+0D"
			})
	});
</script>
	<jsp:include page="/page/shared/myjs/headerstylejs.jsp" />
<header>
	<nav>
        <ul id="top-bar" class="menu">
	        <li class="menuliimg"><a href="<c:url value="/index.jsp"/>"><img class="menuimg" src="<c:url value='/image/index/01.png'/>" /></a></li>
	        <li class="menuli"><a href="<c:url value="/index.jsp"/>">機票</a></li>
	        <li class="menuli"><a href="http://localhost:8080/StartTrip/page/House/House.jsp">飯店</a></li>
	        <li class="menuli"><a href="<c:url value="/page/bonusshop/BonusShop.jsp"/>">紅利商城</a></li>
			<li><input type="button" id="button" class="button" style="float: right;" value="Login"/></li>
		</ul>
<!--下拉選單 -->
			<div class="customermenu" >
					<div class="customeroption">
						<ul>				
							<li><a href="<c:url value="/page/register/CutomerInfoAndUpdate.jsp"/>">個人資料</a></li>
							<li><a href="<c:url value='/OrderHistoryController.controller'/>">歷史訂單</a></li>
							<li><a href="<c:url value="/page/bonusshop/BonusShop.jsp"/>">紅利商店</a></li>
							<li><a href="<c:url value="/BonusShopOrderHistory.controller"/>">紅利商品歷史訂單</a></li>
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
						<form id="inputAccountAndPasswordSpaceFormId"
							action="<c:url value="/LoginServlet"/>" method="post">
							<label>帳號：</label>
							<input type="text" name="userEmail" size="20" value="${param.userEmail}">
							&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.AccountEmptyError}</Font></small><br />
							<label>密碼：</label>
							<input type="password" name="pswd" size="20" value="${param.password}">
							&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.PasswordEmptyError}</Font></small><br /><br />
             				&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.LoginError}</Font></small><br /><br />
             				<a href = "" style = "padding:0px 0px 0px 18px" onclick = "window.open('page/shared/forgetPassword.jsp')">忘記密碼？</a>
							<c:set var="target" value="${pageContext.request.servletPath}" scope="session" />
							<input id="mybutton" class="button" type="submit" value="Login">
						</form>
						
						<form action="<c:url value="/InsertFBMemberServlet" />" method="post" id="fbRead">
						<div>
						<br/>
						<label for="email" >Email：</label> 
						<input id="inputEmail" type="text" readonly name="email" size="40" value="${param.email}"/>
						<small><Font color='red'  size="-3">${error.emailerr}</Font></small>
						<small><Font color='red'  size="-3">${success.successIDDup}</Font></small>
						</div>
						<br/>
						<div>
							<label for="password">密碼：</label> 
							<input required type="password" name="password" size="15" >
							<small><Font color='red'  size="-3">${error.passworderr}</Font></small>
						</div>
						<br/>
						<div>	
							<label for="lastname">姓：</label> 
							<input required id="inputLname" type="text" name="lastname" size="20" value="${param.lastname}" required/>
							<small><Font color='red'  size="-3">${error.lastnameerr}</Font></small>
						</div>
						<br/>
						<div>
							<label for="firstname">名：</label> 
							<input required id="inputFname" type="text" name="firstname" size="10" value="${param.firstname}" required/>
							<small><Font color='red'  size="-3">${error.firstnameerr}</Font></small>
						</div>
						<br/>
						<div>
							<label for="country">國家：</label> <select name="country" value="${param.country}"required>
								<option selected value="TW">台灣</option>
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
								生日：<input required type="text" id="date" name="birthday" value="${param.birthday}" required/> 
								<small><Font color='red'  size="-3">${error.birthdayerr}</Font></small>
						</div>
						<br/>
						<div >
								電話：<input required type="text" name="phonenumber" size="20" value="${param.phonenumber}" required /> 
								<small><Font color='red'  size="-3">${error.phonenumbererr}</Font></small>
						</div>
						<br/>
						<input type="submit" name="submit" value="註冊會員" />
						<br/>
						<br/>
						</form>
						
				
			</div>

				<div class="modal-footer"  id="otherBtns">
				<button class="loginBtn loginBtn--facebook" onclick="_login()" >使用Facebook註冊</button>
				<button class="loginBtn loginBtn--google" data-onsuccess="onSignIn">使用 Google註冊</button>
<!-- 					<div id="googleIconSize" class="g-signin2" -->
<!-- 						data-onsuccess="onSignIn"></div> -->

					<a href="<c:url value="/page/register/Register.jsp"/>">Sign up</a>
					<a href="#" onclick="signOut();">Sign out</a>
				</div>
			</div>
		</div>
	</nav>
</header>
