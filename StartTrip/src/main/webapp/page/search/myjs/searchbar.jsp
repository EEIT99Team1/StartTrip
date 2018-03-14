<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
 $(function () {
                   $('.barbutton').on('click', function () {
                        $('.aside').toggleClass('open');
                        if ($('.aside').hasClass('open')) {
                           $('.aside').stop().animate({ left: '-50px' }, 250, 'easeOutBack');
                           $('.barbuttonimg').attr('src',"<c:url value='/image/search/left.png'/>");
                        } else {
                           $('.aside').stop().animate({ left: '-275px' }, 250, 'easeInBack');
                           $('.barbuttonimg').attr('src', "<c:url value='/image/search/right.png'/>");
                        };
                   })
 })
</script>