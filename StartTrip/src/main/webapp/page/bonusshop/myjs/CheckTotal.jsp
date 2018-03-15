<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
$(document).ready(function(){
	// 	確認購買點擊後跳出確認視窗
	$(".cbtnall").click(function() {
		$(".checktotalbk").css("display", "block");
		// 	顯示選所商品總bonus
		var total = $("#allbonus").text();
		$(".selectbonus").text(total);
		//讀取servlet的會員bonus
		
	});
	//確定購買後顯示購買成功或失敗
	$(".success").click(function(){
		var j= parseInt($(".nowbonus").text());
		var k= parseInt($(".selectbonus").text());
		var total = $("#allbonus").text();
		if(j>=k){
			alert("購買成功");
		}else{
			alert("您的紅利點數不夠");
		}
		$.get("<c:url value='/ShopCartServlet'/>?allbonus="+total)
	});

	//檢查視窗的取消購買
	$(".closebtn").click(function() {
		$(".checktotalbk").css("display", "none");
	});
});//ready
</script>