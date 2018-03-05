<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="<c:url value='/css/search/jquery-ui.min.css'/>" rel="stylesheet">
<link href="<c:url value='/css/login/bouncebutton.css'/>" rel="stylesheet" />

<footer>
	<span>電話: 0912-345-678</span> 
	<span> email:team1@eeit99.com</span>
</footer>

<script>
	//Google+第三放登入取得資料方法
	function onSignIn(googleUser) {
		var profile = googleUser.getBasicProfile();
		console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		console.log('Name: ' + profile.getName());
		console.log('Image URL: ' + profile.getImageUrl());
		console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
		var m1 = $("<img></img>").attr("src", profile.getImageUrl());
		$("#button").append(m1);
	}
</script>
<script>
	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
	var btn = document.getElementById("button");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
		modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
	var mybtn = document.getElementById("mybutton");
	mybtn.onclick = function() {
		modal.style.display = "none";
	};
</script>
<!-- googleSignOut -->
<script>
	function signOut() {
		var auth2 = gapi.auth2.getAuthInstance();
		auth2.signOut().then(function() {
			console.log('User signed out.');
		});
	}
</script>


<script>
	$(document).ready(function() {
		$(".citytext").keyup(function() {
			var keyin = $(this).val();
			$.get("SelectBox.controller", {
				"keyin" : keyin
			}, function(data) {
				console.log("data:" + data);
			})
			console.log("23");
		});
	});
</script>