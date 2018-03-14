<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	//Google+第三放登入取得資料方法
	$(document).ready(function(){
	function onSignIn(googleUser) {
		var profile = googleUser.getBasicProfile();
		console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		console.log('Name: ' + profile.getName());
		console.log('Image URL: ' + profile.getImageUrl());
		console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
// 		var m1 = $("<img></img>").attr("src", profile.getImageUrl());
// 		$("#button").append(m1);
	}});
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
$(document).ready(function(){
	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
// 	var btn = document.getElementById("button");
	
	//沒有寫var 代表全域變數
	btn = $("#button");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	
	//取得Login裡面的那個Login按鈕。
//		var mybutton = document.getElementById("mybutton");
	
	// When the user clicks the button, open the modal 
// 	btn.onclick = function() {
// 		modal.style.display = "block";
// 	}
	btn.on("click",function() {
		modal.style.display = "block";
	});

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}
	
//		mybutton.onclick = function(){
//			modal.style.display = "block";	
//		}
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
});
</script>
<script>
		$("#mybutton").css("display","none");
		var userEmail, password;

		 $(document).ready(function(){
			 $('input[name="userEmail"]').keyup(function(){
				 if($('input[name="userEmail"]').val().trim()!=""){
					 userEmail = true;
				 }else{
					 userEmail = false;
				 };
					//以防使用者只輸入帳號時，不會跳出視窗
				 if($('input[name="pswd"]').val().trim()!=""){
					 password = true;
				 }else{
					 password = false;
				 };
				 showLoginButton();
			 });
			 $('input[name="pswd"]').keyup(function(){
				 if($('input[name="pswd"]').val().trim()!=""){
					 password = true;
				 }else{
					 password = false;
				 };
				//以防使用者只輸入密碼時，不會跳出視窗
				 if($('input[name="userEmail"]').val().trim()!=""){
					 userEmail = true;
				 }else{
					 userEmail = false;
				 };
				 showLoginButton();
			 });
			 function showLoginButton(){
				 if(userEmail && password){
					 $("#mybutton").css("display","block");
				 }else{
					 $("#mybutton").css("display","none");
				 }
			 }
		 });
</script>
<script>
//讓外面的Login顯示登入者姓名。
$(document).ready(function(){
		var firstname = ${firstname};
		var lastname = ${lastname};
		$("#button").val(lastname+firstname);
});
</script>
<script>
$(document).ready(function(){
	$("#logout").on('click',function(){
		sendPost("<c:url value='/LogoutServlet'/>");
		$("#button").val("Loging");	
	});
})
</script>
<script>
function sendPost(url){
	  var form = document.createElement("form");

	  // 設定表單的一些屬性，包含網頁接收伺服器回應的頁面或框架
	  form.setAttribute("method", "post");
	  form.setAttribute("action", url);

	  // 隱藏的submit按鈕，預防瀏覽器不支援模糊的表單設計。（可不用）
	  var hiddenSubmit = document.createElement("input");
	  hiddenSubmit.setAttribute("type", "submit");
	  hiddenSubmit.setAttribute("style", "display:none;");
	  form.appendChild(hiddenSubmit);

	  // 將表單加入網頁中
	  document.body.appendChild(form); 

	  // 送出請求
	  form.submit();
	}
</script>
<script>
<!-- 判斷輸入帳密狀態 -->
$(document).ready(function(){
	//是否有錯誤，hasError=true有錯，hasError=false沒錯。
	var loginStatus = ${hasError};
	if(loginStatus){
		$("#myModal").css("display","block");
	}else{
// 		var customermenu = false;
		btn.off('click');
// 		if(!customermenu){
// 				btn.click(function(){
// 				$('.customermenu').css('display','block');
// 				});
// 			customermenu = true;
// 	    }else{
// 	    		btn.click(function(){
// 				$('.customermenu').css('display','none'); 
// 				});  	
// 	    	};
		btn.click(function(){
			$('.customermenu').toggle(500);
		})
		};	
	});
</script>
<script>
$(document).ready(function(){
		$(".customeroption li").mouseover(function(){
				$(this).css('background-color','#7AC5CD');
		});
		$(".customeroption li").mouseout(function(){
				$(this).css('background-color','red');
		});
});
</script>
<script>
$(document).ready(function(){
	
});

</script>
