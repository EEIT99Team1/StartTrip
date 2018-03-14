<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 讀取funstion -->
<script>
	$(document).ready(function() {			
			
		$(".addcart").click(function(){			
			//取id並變更id名稱用來篩選重複點擊
			var id = $(this).attr("id");
			var idn = id + "a";
			
			//購物車左下數量顯示
			var cartnum = 0; 
			var i = $(".cartnum").text();
			i++;
			$(".cartnum").text(i);
			
			var shopcart = $(".shopimg");			
			
			//將購物車顯示出來
			$(".shopcart").css("visibility","visible");

//選購商品的飛入動畫

			//搜尋img位置
			var addimg = $(this).parent().parent().find("div:eq(0) img:eq(0)");
			//複製搜尋出的img，並改變大小定位
			var cloneimg = addimg.clone();
			//設定clone後的樣式			
			cloneimg.css({
				"width":'100px',
				"height":'100px',
				"position":"absolute",
				"top":addimg.offset().top,
				"left":addimg.offset().left,
				"z-index":'1000',
				"opacity":'0.4',				
			});

			//將複製搜尋出的img做動畫插入body內將img移動至購屋車上			
			cloneimg.appendTo($("body")).animate({
				"width":'50px',
				"height":'50px',
				"top":shopcart.offset().top,
				"left":shopcart.offset().left,			
			},500,function(){
				//飛至點後消失
				cloneimg.animate({
					"width":"0px",
					"height":"0px",
				},function(){
					$(this).detach();
				});
			});				
//判斷商品累加
 	 			//搜尋idn物件是否有id存在
 				var idnn =  $("#"+idn).attr("id"); 				
 				
 				if(idn != idnn){
 				//用來添加至購物車
 					var cloneimgb = addimg.clone();
 					var tr = $("<tr></tr>");
 					var tda = $("<td></td>");
 					var tdb = tda.clone();
 					var tdc = tda.clone();
 					var tdd = tda.clone();
 					var bonus = addimg.parent().parent().find("div:eq(1) span:eq(0)").text();
 					var dbtn = $("<input class='btn btn-primary dbtn' type= 'submit' value= 'delete'>");
 					var bonusInt =  parseInt(bonus);
 										
 					cloneimgb.css({
 						"width":'100px',
 						"height":'100px',
 		 				"opacity":'0.8', 		 				
 					});
 					
					tr.append(tda.append(cloneimgb),tdb.append(bonus).addClass("bonus"),tdc.text("1").attr("id",idn),tdd.append(dbtn));	 					
					$(".carttable").append(tr);
					//總點數累加
					var tbonus = parseInt($("#allbonus").text());
 					var bns = tbonus + parseInt(bonus);
					tbonus = $("#allbonus").text(bns);

 					//新增刪除鈕
 					dbtn.on("click",dbtnr);
 					
 					}//if
 				else{
 					var i = parseInt($("#"+idn).text());
 					i++;
 					$("#"+idn).text(i);
 					
 					var bonus = addimg.parent().parent().find("div:eq(1) span:eq(0)").text(); 					
					var tbonus = parseInt($("#allbonus").text());
 					var bns = tbonus + parseInt(bonus);
					tbonus = $("#allbonus").text(bns);
					
 					}//else				
		});//點擊的function		
	});//ready的function
</script>