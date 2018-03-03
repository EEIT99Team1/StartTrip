<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bonus shop</title>
<meta name="viewport" content="width= device-width, initial-scale=1.0">
<link href="<c:url value="/css/bonusshop/bonusshop2.css"/>">
<script type="js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- <script type="js/bootstrap.min.js"></script> -->
<script>
	$(document).ready(function() {

	})
</script>
</head>
<body>
	<article> 
	<section>
		<div class="titlebox">廣告頁</div>
	</section> <!-- downdiv -->
	<div class="container">
		<!-- 分割區塊 -->
		<div class="row">
			<!--區塊1 -->
			<div class="col-md-4 product"></div>
					<div class="box">
						<img class="img-responsive" alt="狗" src="<c:url value="/image/bonusshop/dog4.jpg"/>">
					</div>
				<!-- 文字區塊 -->
					<p class="center">商品1</p>
				<!--按鈕區塊 -->
					<div>
						<label>數量：</label>
						<input type="text" placeholder="數量" size="2">
						<br>
						<label>總點數：</label>
						<span>xxx</span>
					</div>
					<div class="center">
						<input type="submit" value="選擇">						
					</div>
				</div>		
				<div class="row">
					<div class="col-md-4"></div>
					<div class="box">
						<img class="img-responsive" alt="狗" src="<c:url value="/image/bonusshop/dog4.jpg"/>">
					</div>
				<!-- 文字區塊 -->
					<p class="center">商品1</p>
				<!--按鈕區塊 -->
					<div>
						<label>數量：</label>
						<input type="text" placeholder="數量" size="2">
						<br>
						<label>總點數：</label>
						<span>xxx</span>
					</div>
					<div class="center">
						<input type="submit" value="選擇">						
					</div>
				</div>
				<div class="row">	
					<div class="col-md-4"></div>
					<div class="box">
						<img class="img-responsive" alt="狗" src="<c:url value="/image/bonusshop/dog4.jpg"/>">
					</div>
				<!-- 文字區塊 -->
					<p class="center">商品1</p>
				<!--按鈕區塊 -->
					<div>
						<label>數量：</label>
						<input type="text" placeholder="數量" size="2">
						<br>
						<label>總點數：</label>
						<span>xxx</span>
					</div>
					<div class="center">
						<input type="submit" value="選擇">						
					</div>
			</div>
	</div>
	<!-- downdiv --> </article>

</body>
</html>