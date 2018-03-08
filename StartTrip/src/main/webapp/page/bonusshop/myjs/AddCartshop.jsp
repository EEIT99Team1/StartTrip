<!-- 讀取funstion -->
<script>
	$(document).ready(function() {			
			
			$(".addcart").click(function(){	
			
			//購物車左下數量顯示
			var cartnum = 0; 
			var i = $(".cartnum").text();
			i++;
			$(".cartnum").text(i);
			
			var shopcart = $(".shopimg");			
			
// 			$("html").addClass("noscroll");

	
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
 					//刪除動畫多餘元素
					$(this).detach();
// 					$("html").removeClass("noscroll");  	
 				},function(){
 				//用來添加至購物車
 					var cloneimgb = addimg.clone();
 					var tr = $("<tr></tr>");
 					var tda = $("<td></td>");
 					var tdb = tda.clone();
 					var tdc = tda.clone();
 					var bonus = addimg.parent().parent().find("div:eq(1) span:eq(0)").text();
 					var dbtn = $("<input class='btn btn-primary dbtn' type= 'submit' value= 'delete'>");
 										
 					cloneimgb.css({
 						"width":'100px',
 						"height":'100px',
 		 				"opacity":'0.8', 		 				
 					});
					tr.append(tda.append(cloneimgb),tdb.append(bonus).addClass("bonus"),tdc.append(dbtn));	 					
					$(".carttable").append(tr);
 					dbtn.on("click",dbtnr);
 				});
			});//圖片動畫的function			
		});//點擊的function		
	});//ready的function
</script>