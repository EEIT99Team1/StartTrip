<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
$(function(){
	$.ajax({
		url:'<c:url value="/FileUpLoad.controller"/>',
		type:'GET',
		dataType:"json",
		scriptCharset:'UTF-8',
		success:function(data){
			var documentFragmentDiv=$(document.createDocumentFragment());
			var documentFragmentLi=$(document.createDocumentFragment());
			for(var i=0,max=data.length;i<max;i++){
				var div=$("<div></div>").addClass("carousel-item");
				var li=$("<li></li>").attr({"data-target":"#carouselExampleIndicators","data-slide-to":i});
				if(i==0){
					div.addClass("active");
					li.addClass("active");
				}
				var img=$("<img></img>").addClass("titleimg").attr({src:'<c:url value="/image/backstage/'+data[i]+'"/>'});
				div.append(img);
				documentFragmentDiv.append(div);
				documentFragmentLi.append(li);
			}
			var title=$(".titlebox");
			title.append(documentFragmentDiv);
			var ol=$(".carousel-indicators");
			ol.append(documentFragmentLi);
		}
	});
});
</script>