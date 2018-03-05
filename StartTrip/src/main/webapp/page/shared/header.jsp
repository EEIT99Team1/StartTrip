<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<header>
	<nav>
		<ul class="menu">
			<li><img class="menuimg" src="<c:url value='/image/index/01.png'/>" /></li>
			<li class="menuli"><a href="#">機票</a></li>
			<li class="menuli">飯店</li>
			<li><a id="button" class="button" href="#" style="float: right;">Login</a></li>
		</ul>
		<!--Trigger/Open The Modal
				<button id="button">登入</button>
			The Modal -->
		<div id="myModal" class="modal">

			Modal content
			<div class="modal-content">
				<div class="modal-header">
					<span class="close">&times;</span>
					<h2>會員登入</h2>
				</div>

				<div class="modal-body">
					<form id="inputAccountAndPasswordSpaceFormId" method="post">
						<label>帳號：</label><input type="text"><br /> <label>密碼：</label><input
							type="password"><br /> <br /> <a id="mybutton"
							class="button" href="#">Login</a>
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
