<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	$(function() {
		 var date = $("#datego").datepicker({
			changeMonth: true,
	        changeYear: true,
	        minDate: 1, 

		})
		});
		$(function() {
		$("#dateback").datepicker({
			changeMonth: true,
	        changeYear: true,
	        minDate:1, 
		});
	});

	$(function() {
		$("#datepicker").datepicker();
		$.datepicker.setDefaults({
			dateFormat : "yy-mm-dd"
		});
	})
</script>
