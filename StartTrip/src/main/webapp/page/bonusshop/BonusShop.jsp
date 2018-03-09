<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width= device-width, initial-scale=1.0">
<title>Bonus shop</title>
<link href="<c:url value="/css/bonusshop/BonusShop.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<%-- <script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script> --%>
<!-- <script type="/js/bootstrap.min.js"></script> -->

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<article>
		<section>
<!-- 			<div class="titlebox"> -->
<%-- 			<img class="titleimg" alt="廣告" src="<c:url value="/image/bonusshop/air.jpg"/>"> --%>
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active titlebox">
		      <img class="titleimg" src="<c:url value="/image/bonusshop/air.jpg"/>" alt="First slide">
		    </div>
		    <div class="carousel-item titlebox">
		      <img class="titleimg" src="<c:url value="/image/bonusshop/air2.jpg"/>" alt="Second slide">
		    </div>
		    <div class="carousel-item titlebox">
		      <img class="titleimg" src="<c:url value="/image/bonusshop/air3.jpg"/>" alt="Third slide">
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>

		</section>
		
		<HR color="block" size="10" width="100%"  align="center">
		
				
	<!-- downdiv -->
		<div class="container">
<!-- 		下部區塊 -->
			<div class="row">
<!-- 			商品格區塊 -->
				<div class="col-md-4 product">
<!-- 				圖片區塊 -->
					<div class="box">
						<img class="image" alt="商品1" src="<c:url value="/image/bonusshop/commodity1.jpg"/>">
					</div>
<!-- 				文字區塊 -->
					<p class="center">商品1</p>
<!-- 				按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span class="bonus">12</span>
					</div>
					<div class="center">
						<input class="btn btn-primary addcart" type="submit" value="選擇">						
					</div>
				</div>
<!-- 				區塊1 -->
				

				<div class="col-md-4">
<!-- 				圖片區塊 -->
					<div class="box">
						<img class="image" alt="商品2" src="<c:url value="/image/bonusshop/commodity2.jpg"/>">
					</div>
<!-- 				文字區塊 -->
					<p class="center">商品2</p>
<!-- 				按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span class="bonus">45</span>
					</div>
					<div class="center">

						<input class="btn btn-primary addcart" type="submit" value="選擇">	

					</div>
				</div>
<!-- 				區塊2 -->
				

				<div class="col-md-4">
<!-- 				圖片區塊 -->
					<div class="box">
						<img class="image" alt="商品3" src="<c:url value="/image/bonusshop/commodity3.jpg"/>">
					</div>
<!-- 				文字區塊 -->
					<p class="center">商品3</p>
<!-- 				按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span class="bonus">78</span>
					</div>
					<div class="center">

						<input class="btn btn-primary addcart" type="submit" value="選擇">	

					</div>
				</div>
<!-- 				區塊3 -->
					
					
				<div class="col-md-4">
<!-- 				圖片區塊 -->
					<div class="box">
						<img class="image" alt="商品4" src="<c:url value="/image/bonusshop/commodity4.jpg"/>">
					</div>
<!-- 				文字區塊 -->
					<p class="center">商品4</p>
<!-- 				按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span class="bonus">123</span>
					</div>
					<div class="center">

						<input class="btn btn-primary addcart" type="submit" value="選擇">	

					</div>
				</div>
<!-- 				區塊4 -->
				

				<div class="col-md-4">
<!-- 				圖片區塊 -->
					<div class="box">
						<img class="image" alt="商品5" src="<c:url value="/image/bonusshop/commodity5.jpg"/>">
					</div>
<!-- 				文字區塊 -->
					<p class="center">商品5</p>
<!-- 				按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span class="bonus">456</span>
					</div>
					<div class="center">

						<input class="btn btn-primary addcart" type="submit" value="選擇">	

					</div>
				</div>
<!-- 				區塊5 -->
								
			
				<div class="col-md-4">
<!-- 				圖片區塊 -->
					<div class="box">
						<img class="image" alt="商品6" src="<c:url value="/image/bonusshop/commodity6.jpg"/>">
					</div>
<!-- 				文字區塊 -->
					<p class="center">商品6</p>
<!-- 				按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span class="bonus">789</span>
					</div>
					<div class="center">

						<input class="btn btn-primary addcart" type="submit" value="選擇">	

					</div>
				</div>
<!-- 				區塊6		 -->

			<div class="shopcart">
				<img class="shopimg" alt="購物車" src="<c:url value="/image/bonusshop/cart.png"/>">
				<span class="cartnum">0</span>
			</div>	
<!-- 			購物車			 -->

			<div class="opencart">
				<table class="carttable">
					<thead>
						<tr class="fontcss">
							<th>商品</th>
							<th>點數</th>
							<th>刪除</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
<!-- 					商品插入用		 -->
				</table>
<!-- 				插入的商品顯示區 -->
				<div>
					<table>
						<thead>
							<tr>
								<th><input class="btn btn-success" type="submit" value="確認購物"></th>
								<th><input class="btn btn-danger dbtnall" type="button" value="全部清除"></th>
							</tr>
						</thead>
					</table>					
				</div>
<!-- 				確認及清除鈕區塊 -->
			</div>
<!-- 				購物車選單 -->	
			
		</div><!--row-->
	</div><!--container-->

	</article>
	
	<jsp:include page="/page/bonusshop/myjs/ShopCart.jsp"/>
	<jsp:include page="/page/bonusshop/myjs/AddCartshop.jsp"/>
	<jsp:include page="/page/bonusshop/myjs/DeleteButton.jsp"/>
	
</body>
</html>