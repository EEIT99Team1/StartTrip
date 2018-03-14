<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="<c:url value='/css/login/bouncebutton.css'/>"type="text/css" rel="stylesheet" />

	<jsp:include page="/page/shared/myjs/headerstylejs.jsp" />
<header>
	<nav>
        <ul id="top-bar" class="menu">
	        <li class="menuliimg"><img class="menuimg" src="<c:url value='/image/index/01.png'/>" /></li>
	        <li class="menuli"><a href="#">機票</a></li>
	        <li class="menuli"><a href="#">飯店</a></li>
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
							<label>帳號：</label><input type="text" name="userEmail" size="20"
								value="${param.userEmail}">
								&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.AccountEmptyError}
             					</Font></small><br />
							<label>密碼：</label><input type="password" name="pswd" size="20"
								value="${param.password}">
								&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.PasswordEmptyError}
             					</Font></small><br /><br />
             					&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.LoginError}</Font></small><br /><br />
							<c:set var="target" value="${pageContext.request.servletPath}"
								scope="session" />
							<input id="mybutton" class="button" type="submit" value="Login">
						</form>
				
			</div>
				<div class="modal-footer">
<!-- 					<div id="googleIconSize" class="g-signin2" -->
<!-- 						data-onsuccess="onSignIn"></div> -->
					<a href="<c:url value="/page/register/Register.jsp"/>">Sign up</a>
					<a href="#" onclick="signOut();">Sign out</a>
				</div>
		</div>
	</div>
	</nav>
</header>
