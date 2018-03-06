<!-- 讀取funstion -->
<script>
	$(document).ready(function() {
		
			var cartnum = 0;
			
			$(".addcart").click(function(){					
			
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
			},1000,function(){
				//飛至點後消失
				cloneimg.animate({
					"width":"0px",
					"height":"0px",
 				},function(){
					$(".cartnum").html(++cartnum);
					$(this).detach();
// 					$("html").removeClass("noscroll");  	
 				},function(){
 				//用來添加至購物車
 					var cloneimgb = addimg.clone();
 					var tr = $("<tr></tr>");
 					var td = $("<td></td>");
 					var bonus = addimg.parent().parent().find("div:eq(1) span:eq(0)").text();
//  					var addbutton = ;
 					cloneimgb.css({
 						"width":'100px',
 						"height":'100px',
 		 				"opacity":'0.8', 		 				
 					});
					tr.append(td.append(cloneimgb).append(bonus)).addClass("bonus");	 					
					$(".carttable").append(tr);
 				});
			});//圖片動畫的function	
		});//點擊的function
	});//ready的function
</script>