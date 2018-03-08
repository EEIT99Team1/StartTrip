<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
function strToJson(str){
    var json = (new Function("return " + str))();
    return json;
}//Sting >> JSON
	
$(document).ready(function() {
	var ans=[];
	
	$(".citytext").keyup(function() {
		var keyin = $(this).val();
		if(keyin.length>0){
			$.ajax({
				url:'<c:url value="/SelectBox.controller"/>',
				type:'GET',
				data:{keyin:keyin},
				scriptCharset:'UTF-8',
				success:function(data){
					ans.length=0;
					var dataObj=strToJson(data);
					for(var i=0,max=dataObj.length;i<max;i++){
						var aircode=dataObj[i].aircode;
						var airport=dataObj[i].airport;
						var country=dataObj[i].country;
						console.log(aircode+":"+airport);
						ans.push(aircode+airport);
						$(".citytext").autocomplete({
							source:ans
						});
					}
					$(".citytext").autocomplete({
						source:ans
					});
				}//success function
			});//ajax結束
		}else{
			ans.length=0;
		};//if(keyin.length>1)判斷結束
	});
});
</script>