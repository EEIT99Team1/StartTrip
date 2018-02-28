<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<title>會員系統</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="shortcut icon" href="img/webicon.ico" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#dialog").dialog({
			autoOpen : false,
			show : {
				effect : "blind",
				duration : 1000
			},
			hide : {
				effect : "blind",
				duration : 1000
			}
		});

		$("#opener").on("click", function() {
			$("#dialog").dialog("open");
		});
	});
</script>
</head>
<body style="background: url(img/img1.jpg)">
	<div id="dialog" title="會員登入">
		<div class="control-group">
			<label id="accountName-label" class="control-label" for="accountName">帳號（請使用電子郵件登入）</label>
			<div class="controls">
				<input aria-labelledby="accountName-label" id="accountName"
					name="accountName" title="帳號（請使用電子郵件登入）" maxlength="320"
					type="text" tabindex="1" class="input-block input-large"
					placeholder="帳號（請使用電子郵件登入）" autocorrect="off" spellcheck="false" />
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
			<div class="control-group submit ">
				<button type="submit" id="submit"
					class="btn btn-primary btn-large btn-block " data-loading-text=""
					tabindex="1">
					登入StartTrip帳號 <i class="spinner-battlenet"></i>
				</button>
				<button id="facebook" class="btn btn-block btn-large" rel="external"
					tabindex="1">使用Facebook快速登入</button>
			</div>
		</div>
		<input type="hidden" id="useSrp" name="useSrp" value="false" /> <input
			type="hidden" id="publicA" name="publicA" value="" /> <input
			type="hidden" id="clientEvidenceM1" name="clientEvidenceM1" value="" />
		<div class="persistWrapper">
			<label id="persistLogin-label" class="checkbox-label css-label hide"
				for="persistLogin"> <input
				aria-labelledby="persistLogin-label" id="persistLogin"
				name="persistLogin" type="checkbox" checked="checked" tabindex="1" />
				<span class="input-checkbox"></span> 保持登入狀態
			</label>
		</div>
		<ul id="help-links">
			<li><a rel="internal" href="" tabindex="1" id="signup">
					建立免費的StartTrip帳號 </a></li>
			<li><a rel="internal" href="" tabindex="1" id="loginSupport">
					無法登入？ </a></li>
		</ul>
	</div>

	<button id="opener">會員登入</button>

	<div class="footer-links nav-left">
		<a class="nav-item nav-a" href="" data-analytics="global-nav"
			data-analytics-placement="Footer - eula">StartTrip® 最終用戶授權協議</a> <span>|</span>
		<a class="nav-item nav-a" href="" data-analytics="global-nav"
			data-analytics-placement="Footer - Privacy">隱私</a> <span>|</span> <a
			class="nav-item nav-a" href="" data-analytics="global-nav"
			data-analytics-placement="Footer - Terms">條款</a> <span>|</span> <a
			class="nav-item nav-a" href="" data-analytics="global-nav"
			data-analytics-placement="Footer - copyright">違反版權</a>
		<div class="copyright">©2018 StartTrip有限公司（StartTrip, Inc.）版權所有。</div>
		<div class="nav-footer-icon-container">
			<ul class="nav-footer-icon-list">
			</ul>
		</div>
	</div>
</body>
</html>