<script>
		//單筆刪除
		function dbtnr(){
			var i = $(".cartnum").text();
			var k = parseInt($(this).parent().parent().find("td:eq(2)").text());
			var j = parseInt($(this).parent().parent().find("td:eq(1)").text());
			
			var h = i-k;
			var oneprice = j*k;
			var allprice = parseInt($("#allbonus").text());
			var total = allprice - oneprice;
			
			$(".cartnum").text(h);			
			$("#allbonus").text(total)
			
			$(this).parent().parent().remove();

		
		};//Deleteclick
		
		//全部刪除
		$(document).ready(function() {	
			$(".dbtnall").click(function(){				
			$(".carttable").find("tbody").empty();
			$(".cartnum").text(0);
			$("#allbonus").text(0);
			});//click
		});//ready
		
</script>