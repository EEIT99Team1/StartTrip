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
<link href="<c:url value="/css/Bootstrap/bootstrap.css"/>" rel="stylesheet">
<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<jsp:include page="/page/shared/myjs/headerstylejs.jsp" />

</head>
<body>
	<jsp:include page="/page/shared/indexheader.jsp" />
	

	<article>
		<section>
<!-- 			<div class="titlebox"> -->
<%-- 			<img class="titleimg" alt="廣告" src="<c:url value="/image/bonusshop/air.jpg"/>"> --%>
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		  </ol>
		  <div class="carousel-inner titlebox">
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
<!-- 		<輪播牆> -->
		</section>
		
		<HR color="block" size="5" width="100%"  align="center">
		
			
	<!-- downdiv -->
		<div class="container">
<!-- 		下部區塊 -->
			<div class="row">
<!-- 			商品格區塊 -->
				<div class="col-md-4">
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
						<input class="btn btn-primary addcart" id="b1" type="submit" value="選擇">						
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

						<input class="btn btn-primary addcart" id="b2" type="submit" value="選擇">	

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

						<input class="btn btn-primary addcart" id="b3" type="submit" value="選擇">	

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

						<input class="btn btn-primary addcart" id="b4" type="submit" value="選擇">	

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

						<input class="btn btn-primary addcart" id="b5" type="submit" value="選擇">	

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

						<input class="btn btn-primary addcart" id="b6" type="submit" value="選擇">	

					</div>
				</div>
<!-- 				區塊6		 -->

			<div class="shopcart">
				<img class="shopimg" alt="購物車" src="<c:url value="/image/bonusshop/cart.png"/>">
				<span class="cartnum">0</span>
			</div>	
<!-- 			購物車圖示			 -->

			<div class="opencart">
				<table class="carttable">
					<thead>
						<tr class="fontcss">
							<th>商品</th>
							<th>點數</th>
							<th>數量</th>
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
								<th>總點數：<span class="allbonus" id="allbonus" name="allbonus">0</span></th>
								<th><input class="btn btn-success cbtnall" type="submit" value="確認購物"></th>
								<th><input class="btn btn-danger dbtnall" type="button" value="全部清除"></th>
							</tr>
						</thead>
					</table>					
				</div>
<!-- 				確認及清除鈕區塊 -->
			</div>
<!-- 				購物車選單 -->	
			<div class="checktotalbk">
				<div class= "checktotal">
					<p class = "fontstyle">您累計的紅利點數:<span class="nowbonus">{LoginOK.bonus}</span></p>
					<br>
					<p class = "fontstyle">所選商品的總點數:<span class="selectbonus"></span></p>
					<table>
						<thead>
						<tr>
							<td><form action="<c:url value='/ShopCartServlet'/>" method="get"><input class="btn btn-success success" type="submit" value="確定購買"></form></td>
							<td><input class="btn btn-danger closebtn" type="button" value="關閉視窗"></td>
						</tr>
						</thead>				
					</table>
				</div>
			</div>
<!-- 			購物最終確認 -->
		</div><!--row-->
	</div><!--container-->

	</article>
<!-- 	載入function -->
	<jsp:include page="/page/bonusshop/myjs/ShopCart.jsp"/>
	<jsp:include page="/page/bonusshop/myjs/AddCartshop.jsp"/>
	<jsp:include page="/page/bonusshop/myjs/DeleteButton.jsp"/>
	<jsp:include page="/page/bonusshop/myjs/CheckTotal.jsp"/>
	<jsp:include page="/page/bonusshop/myjs/CarouselWall.jsp"/>
	<jsp:include page="/page/shared/myjs/headerstylejs.jsp" />
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />	
</body>
</html>