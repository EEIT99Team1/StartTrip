<!-- 讀取funstion -->
<script>
	$(document).ready(function() {
		
			var cartnum = 0;
			
			$(".addcart").click(function(){	
				
			$("html").addClass("noscroll");					
				
			var shopcart = $(".shopimg");

			//搜尋img位置
			var addimg = $(this).parent().parent().find("div:eq(0) img:eq(0)");
			//複製搜尋出的img，並改變大小定位
			var cloneimg = addimg.clone();
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
				cloneimg.animate({
					"width":"0px",
					"height":"0px",
 				},function(){
					$(".cartnum").html(++cartnum);
					$(this).detach();
					$("html").removeClass("noscroll"); 
				});
			});		
		});
		
	});
</script>