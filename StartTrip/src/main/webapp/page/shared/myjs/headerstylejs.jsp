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

</script>