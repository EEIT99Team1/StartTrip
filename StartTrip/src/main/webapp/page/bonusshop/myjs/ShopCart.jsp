<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
jQuery.fn.slideUpLeftHide = function( speed, callback ) {
this.animate({
width : "hide",
height: "hide",
paddingLeft : "hide",
paddingRight : "hide",
marginLeft : "hide",
marginRight : "hide"
}, speed, callback );
};
jQuery.fn.slideUpLeftShow = function( speed, callback ) {
this.animate({
width : "show",
height: "show",
paddingLeft : "show",
paddingRight : "show",
marginLeft : "show",
marginRight : "show"
}, speed, callback );
};
</script>

<script>
$(document).ready(function() {
	var opencart = $(".opencart");
	var open = true;
	$(".shopimg").click(function(){	
		if(open){
			opencart.slideUpLeftShow(300);
			opencart.css({"background-color":"#DDDDDD","opacity":"0.9"});
			open = false;
		}else{
			opencart.slideUpLeftHide(300);
			open = true;
		}
	});//點擊的function	
});//ready
</script>