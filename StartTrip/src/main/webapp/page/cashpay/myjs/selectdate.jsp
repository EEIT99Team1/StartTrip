<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
	$(function(){
		//月份
 		for(var i = 1;i<=12;i++){ 
 		if(i<10){
 			i = "0"+i;
			var j = $("<option></option>").text(i); 		
			$(".dateMonth").append(j);	 		
 		}else{
 			var j = $("<option></option>").text(i); 		
			$(".dateMonth").append(j);	 		
 			}
 		}
		//年
 		for(var i = 0;i<=99;i++){ 
 			if(i<10){
 			i = "0"+i;
 			var j = $("<option></option>").text(i); 		
 			$(".dateYear").append(j);	
 	 		}else{
 	 		var j = $("<option></option>").text(i); 		
 	 		$(".dateYear").append(j);
 	 		}
 		}
	});
</script>