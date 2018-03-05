<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width= device-width, initial-scale=1.0">
<title>Bonus shop</title>
<link href="<c:url value="/css/bonusshop/bonusshop.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>

<script>
		$(function(){
			$("table tr:nth-child(odd)").css("background-color",'#eee');
			$("#chkAll").click(function() {
	
				if(this.checked){
					$("table tr td input[type='checkbox']")
						.prop("checked",true);
				}else{
					$("table tr td input[type='checkbox']")
						.removeAttr("checked");
				}	
			});
			$("#btnDel").click(function(){
				var intL=$("table tr td input:checked:not('#chkAll')").length;
				console.log(intL);
				if(intL){
					$("table tr td input[type=checkbox]:not('#chkAll')").each(function(index){
								if(this.checked){
									$(this).parent().parent().remove();
								}
						})
				}
			})

		});
		

	</script>

<!-- <script type="js/bootstrap.min.js"></script> -->
</head>
<body>
<%-- <%@ include file='/page/shared/header.jsp' %> --%>
	<article>
		<section>
			<div class="titlebox">
				<img class="titleimg" alt="廣告" src="<c:url value="/image/bonusshop/air.jpg"/>">
			</div>			
		</section>
		
		<HR color="block" size="10" width="100%"  align="center">
				
	<!-- downdiv -->
		<div class="container">
		<!-- 分割區塊 -->
			<div class="row">

				<div class="col-md-4 product">
				<!--圖片區塊 -->
					<div class="box">
						<img class="image" alt="狗" src="<c:url value="/image/bonusshop/dog4.jpg"/>">
					</div>
				<!-- 文字區塊 -->
					<p class="center">商品1</p>
				<!--按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span>xxx</span>
					</div>
					<div class="center">
						<input class="btn btn-primary addcart" type="submit" value="選擇">						
					</div>
				</div><!--區塊1 -->
				

				<div class="col-md-4">
				<!--圖片區塊 -->
					<div class="box">
						<img class="image" alt="狗" src="<c:url value="/image/bonusshop/dog4.jpg"/>">
					</div>
				<!-- 文字區塊 -->
					<p class="center">商品2</p>
				<!--按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span>xxx</span>
					</div>
					<div class="center">

						<input class="btn btn-primary addcart" type="submit" value="選擇">	

					</div>
				</div><!--區塊2 -->
				

				<div class="col-md-4">
				<!--圖片區塊 -->
					<div class="box">
						<img class="image" alt="狗" src="<c:url value="/image/bonusshop/dog4.jpg"/>">
					</div>
				<!-- 文字區塊 -->
					<p class="center">商品3</p>
				<!--按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span>xxx</span>
					</div>
					<div class="center">

						<input class="btn btn-primary addcart" type="submit" value="選擇">	

					</div>
				</div><!--區塊3 -->
					
					
				<div class="col-md-4">
				<!--圖片區塊 -->
					<div class="box">
						<img class="image" alt="狗" src="<c:url value="/image/bonusshop/dog4.jpg"/>">
					</div>
				<!-- 文字區塊 -->
					<p class="center">商品4</p>
				<!--按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span>xxx</span>
					</div>
					<div class="center">

						<input class="btn btn-primary addcart" type="submit" value="選擇">	

					</div>
				</div><!--區塊4 -->
				

				<div class="col-md-4">
				<!--圖片區塊 -->
					<div class="box">
						<img class="image" alt="狗" src="<c:url value="/image/bonusshop/dog4.jpg"/>">
					</div>
				<!-- 文字區塊 -->
					<p class="center">商品5</p>
				<!--按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span>xxx</span>
					</div>
					<div class="center">

						<input class="btn btn-primary addcart" type="submit" value="選擇">	

					</div>
				</div><!--區塊5 -->
								
			
				<div class="col-md-4">
				<!--圖片區塊 -->
					<div class="box">
						<img class="image" alt="狗" src="<c:url value="/image/bonusshop/dog4.jpg"/>">
					</div>
				<!-- 文字區塊 -->
					<p class="center">商品6</p>
				<!--按鈕區塊 -->
					<div>

						<label>點數：</label>
						<span>xxx</span>
					</div>
					<div class="center">

						<input class="btn btn-primary addcart" type="submit" value="選擇">	

					</div>
				</div><!--區塊6 -->			

			<div class="shopimg">			
				<img class="shopcart" alt="購物車" src="<c:url value="/image/bonusshop/cart.png"/>">
				<span class="cartnum">0</span>
			</div>				

		</div>
	</div>

	</article>
	
	<jsp:include page="/page/bonusshop/addcartshop.jsp"/>
</body>
</html>