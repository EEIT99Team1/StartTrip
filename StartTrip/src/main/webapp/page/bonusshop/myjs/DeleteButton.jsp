<script>
		//單筆刪除
		function dbtnr(){
			var i = $(".cartnum").text();
			
			var k = parseInt($(this).parent().parent().find("td:eq(2)").text());
			
			j=i-k;
			
			$(".cartnum").text(j);			
			
			$(this).parent().parent().remove();

		
		};//Deleteclick
		
		//全部刪除
		$(document).ready(function() {	
			$(".dbtnall").click(function(){				
			$(".carttable").find("tbody").empty();
			$(".cartnum").text(0);
			});//click
		});//ready
		
</script>