<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<nav>
		<ul class="menu">
			<li class="menuliimg"><img class="menuimg" src="<c:url value='/image/index/01.png'/>" /></li>
            <li class="menuli"><a href="#">機票</a></li>
            <li class="menuli"><a href="#">飯店</a></li>
			<li><input type="button" id="button" class="button" style="float: right;" value="Loging"/></li>
		</ul>
		
					<!--下拉選單 -->
			<div class="customermenu" >
					<div class="customeroption">
						<ul>
							<li><a href="www.google.com">個人資料</a></li>
							<li>歷史訂單</li>
							<li>購物車</li>
							<li>登出</li>
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
					<div id="googleIconSize" class="g-signin2"
						data-onsuccess="onSignIn"></div>
					<a href="#" onclick="signOut();">Sign out</a>
				</div>
		</div>
	</div>
	</nav>
