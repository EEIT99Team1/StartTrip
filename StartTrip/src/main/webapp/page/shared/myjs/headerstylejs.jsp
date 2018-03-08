<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script  type="text/javascript">
$(function () {
    $(window).load(function () {
        $(window).bind('scroll resize', function () {
            var $this = $(this);
            var $this_Top = $this.scrollTop();
            if ($this_Top < 150) {
                $('#top-bar').stop().animate({ 'opacity': '0.9' }, 500);

                $('#top-bar').hover(over, out);
                function over() {
                    $(this).stop().animate({ 'opacity': '0.9' });
                }
                function out() {
                    $(this).stop().animate({ 'opacity': '0.9' });
                }
            }
            else if ($this_Top > 150) {
                $('#top-bar').stop().animate({ 'opacity': '0.4' }, 500);

                $('#top-bar').hover(over, out);
                function over() {
                    $(this).stop().animate({ 'opacity': '0.9' }, 150);
                }
                function out() {
                    $(this).stop().animate({ 'opacity': '0.4' }, 150);
                }
            }

        }).scroll();
    });   
});

$(function () {
    $('.barbutton').on('click', function () {
       	$('.aside').toggleClass('open');
       	if ($('.aside').hasClass('open')) {
	        $('.aside').stop().animate({ left: '-50px' }, 250, 'easeOutBack');
	        $('.barbuttonimg').attr('src', "<c:url value='/image/search/left.png'/>");
	    	} else {
	        $('.aside').stop().animate({ left: '-275px' }, 250, 'easeInBack');
	        $('.barbuttonimg').attr('src', "<c:url value='/image/search/right.png'/>");
    	};
 	});
});
</script>