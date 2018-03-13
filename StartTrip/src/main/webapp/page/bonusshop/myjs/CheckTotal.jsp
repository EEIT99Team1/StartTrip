<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
	// 	確認購買點擊後跳出確認視窗
	$(".cbtnall").click(function() {
		$(".checktotal").css("display", "block");
		//讀取servlet的會員bonus
		$.get("<c:url value="/ShopCartServlet"/>", function() {
			$(".nowbonus").html("${nowbonus}");
// 			alert("${errorMsgKey}");			
		});

		// 	顯示選所商品的bonus
		var total = $("#allbonus").text();
		$(".selectbonus").text(total);
	
	});
	// 	檢查視窗的取消購買
	$(".closebtn").click(function() {
		$(".checktotal").css("display", "none");
	});
</script>