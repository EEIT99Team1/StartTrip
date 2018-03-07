<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="<c:url value='/css/search/hometitle.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/search/jquery-ui.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/css/ login/bouncebutton.css'/>"
	rel="stylesheet" />

<header>
	<nav>
		<ul class="menu">
			<li><img class="menuimg" src="<c:url value='/image/index/01.png'/>" /></li>
			<li class="menuli"><a href="#">機票</a></li>
			<li class="menuli"><a href="http://localhost:8080/StartTrip/page/House/House.jsp">飯店</a></li>
			<li><a id="button" class="button" href="#" style="float: right;">Login</a></li>
		</ul>
		<!--Trigger/Open The Modal
				<button id="button">登入</button>
			The Modal -->
		<div id="myModal" class="modal">

			
			<div class="modal-content">
				<div class="modal-header">
					<span class="close">&times;</span>
					<h2>會員登入</h2>
				</div>

				<div class="modal-body">
						<form id="inputAccountAndPasswordSpaceFormId"
							action="<c:url value="/LoginServlet"/>" method="post">
							<label>帳號：</label><input type="text" name="userEmail" size=20"
								value="${param.userEmail}">
								&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.AccountEmptyError}
             					</Font></small><br />
							<label>密碼：</label><input type="password" name="pswd" size="20"
								value="${param.password}">
								&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.PasswordEmptyError}
             					</Font></small><br /><br /> <br />
							<!-- <a id="mybutton" class="button" href="#">Login</a> -->
							<c:set var="target" value="${pageContext.request.servletPath}"
								scope="session" />
							<input id="mybutton" class="button" type="submit" value="Login">
						</form>

				</div>
				<div class="modal-footer">
					<div id="googleIconSize" class="g-signin2"
						data-onsuccess="onSignIn"></div>
				</div>
			</div>
		</div>
	</nav>
</header>
<%-- <jsp:include page="page/shared/indexheader.jsp" /> --%>
