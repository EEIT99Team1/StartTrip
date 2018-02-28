<%@ page contentType="text/html; charset=UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>首頁</title>
<link href="style/hometitle.css" rel="stylesheet" />
<style>
</style>
<script src="style/CombinedCompact/CalendarPopup.js"></script>
<script>
	var cal = new CalendarPopup();
</script>
</head>
<body>
	<header style="background-color: antiquewhite">
		<a href="#"><img src="image/01.png" /></a>
		<nav>
			<ul>
				<li><a href="#">機票</a></li>
				<li>飯店</li>
				<li><input type="button" value="登入" style="float: right;" /></li>
			</ul>
		</nav>

	</header>
	<fieldset>
		<form action="FlightGet.controller" method="get">
			<div class="mainbody">
				<div>
					<h3>地點:</h3>
					<div>
						出發地: <input type="text" name="goplace"/>
						目的地: <input type="text" name="endplace"/>
					</div>

					<h3>人數:</h3>
					<div>
						大人: <select name="adult">
							<option value="1">1人</option>
							<option value="2">2人</option>
							<option value="3">3人</option>
							<option value="4">4人</option>
						</select> 小孩: <select name="child">
							<option value="1">1人</option>
							<option value="2">2人</option>
							<option value="3">3人</option>
							<option value="4">4人</option>
						</select>
					</div>
				</div>


				<div>
					<h3>日期:</h3>
					<div>
						去程: <a href="#"
							onclick="cal.select(document.forms[0].date, 'bookmark', 'yyyy/MM/dd'); return false;">
							<input type="text" id="date" name="gotime"/>
						</a> 回程: <a href="#" id="bookmark"
							onclick="cal.select(document.forms[0].date1,'bookmark','yyyy/MM/dd'); return false;">
							<input type="text" id="date1" name="backtime"/>
						</a> <input type="submit" value="查詢" />
					</div>
				</div>
				<div>
					<input type="radio" name="way" id="double" checked="checked"/>來回 <input
						type="radio" name="way" id="one" />單程 艙等: <select name="cabin">
						<option value="Y">經濟客艙</option>
						<option value="Y">商務艙</option>
						<option value="Y">豪華商務艙</option>
						<option value="Y">頭等艙</option>
					</select>
				</div>


			</div>
		</form>
	</fieldset>

</body>
</html>