<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="<c:url value='/css/search/hometitle.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/search/jquery-ui.min.css'/>" rel="stylesheet">
<link href="<c:url value='/css/login/bouncebutton.css'/>" rel="stylesheet" />

<footer>
	<span>電話: 0912-345-678</span> 
	<span> email:team1@eeit99.com</span>
</footer>

<script>
	//Google+第三放登入取得資料方法
	$(document).ready(function(){
	function onSignIn(googleUser) {
		var profile = googleUser.getBasicProfile();
		alert('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		alert('Name: ' + profile.getName());
		alert('Image URL: ' + profile.getImageUrl());
		alert('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
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

function strToJson(str){
    var json = (new Function("return " + str))();
    return json;
}//Sting >> JSON
	
$(document).ready(function() {
	var ans=[];
	
	$(".citytext").keyup(function() {
		var keyin = $(this).val();
		if(keyin.length>1){
			$.ajax({
				url:'<c:url value="SelectBox.controller"/>',
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
					}
				}//success function
			});//ajax結束
		};//if(keyin.length>1)判斷結束
	});


	$(".citytext").autocomplete({
		source:ans
	});
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
		$("#button").val(firstname+lastname);
});
</script>
<script>
<!-- 判斷登入狀態 -->
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


