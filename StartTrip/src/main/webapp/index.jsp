<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>首頁</title>
<!-- 彈跳視窗需要 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="google-signin-client_id" content="731303854433-8mlq24ikh4gnnbdff1dbhkmpgk3hou01.apps.googleusercontent.com">
	
<link href="css/search/hometitle.css" rel="stylesheet" />
<link href="css/search/jquery-ui.min.css" rel="stylesheet">
<link href="css/login/bouncebutton.css" rel="stylesheet" />

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>
<script src="js/jquery-ui.min.js"></script>
<script>
	
    $( function() {
        $("#datego").datepicker()
    });
    $(function () {
        $("#dateback").datepicker();
    });
</script>

</head>
<body>
	<header>
		<nav>
            <ul class="menu">
                <li ><img class="menuimg" src="image/01.png" /></li>
                <li class="menuli"><a href="#">機票</a></li>
                <li class="menuli">飯店</li>
				<li><a id="button" class="button" href="#" style="float:right;padding-top:2%;padding-bottom:2%;">Login</a></li>
            </ul>
			<!-- Trigger/Open The Modal -->
			<!-- 	<button id="button">登入</button> -->
			<!-- The Modal -->
			<div id="myModal" class="modal">

				<!-- Modal content -->
				<div class="modal-content">
					<div class="modal-header">
						<span class="close">&times;</span>
						<h2>會員登入</h2>
					</div>

					<div class="modal-body">
						<form id="inputAccountAndPasswordSpaceFormId" action="<c:url value="/LoginServlet"/>" method="post">
							<label>帳號：</label><input type="text" name="userEmail" size="20"
								value="${param.userEmail}">&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.AccountEmptyError}
             					</Font></small><br /> 
							<label>密碼：</label><input type="password" name="pswd" size="20"
								value="${param.password}">&nbsp;<small><Font color='red'  size="-3">${ErrorMsgKey.PasswordEmptyError}
             					</Font></small><br /> <br /> 
							<c:set var="target" value="${pageContext.request.servletPath}" scope="session" />
							<input id="mybutton" class="button" type="submit" value="Login">
<%-- 							<a id="mybutton" class="button" href="<c:url value="/LoginServlet"/>">Login</a> --%>
						</form>

					</div>
					<div class="modal-footer">
						<div id="googleIconSize" class="g-signin2"
							data-onsuccess="onSignIn"></div>
						<a href="#" onclick="signOut();">Sign out</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<article class="mainbody">
        <form class="search" action="FlightGet.controller" method="get">
            <div >
                <div class="searchdiv">
                    <h3>地點:</h3>
                    <div>
                        出發地:<input class="citytext" type="text" name="goplace"/>
<!--                  <select> -->
<!--                     <option>台灣</option> -->
<!--                     <option>日本</option> -->
<!--                  </select> -->
                        目的地:<input class="citytext" type="text" name="endplace"/>
                 <select>
                 	<option>台灣</option>
                 	<option>日本</option>
                 </select>
                    </div>
                </div>
                <div class="searchdiv">
                    <h3>人數:</h3>
                    <div>
                        大人:
                <select name="adult">
                    <option value="1">1人</option>
                    <option value="2">2人</option>
                    <option value="3">3人</option>
                    <option value="4">4人</option>
                </select>

                        小孩:
                <select name="child">
                    <option value="0">0人</option>
                    <option value="1">1人</option>
                    <option value="2">2人</option>
                    <option value="3">3人</option>
                    <option value="4">4人</option>
                </select>
           </div>
       </div>
       <div class="searchdiv">
            <h3>日期:</h3>
               <div>
                            去程:
                            <input type="text" id="datego" name="gotime"/>
                            回程:
                            <input type="text" id="dateback" name="backtime"/>
<!--                             <a href="02middle.html"><input type="button" value="查詢" /></a> -->
							<input type="submit" value="查詢" />
                    </div>
                </div>
                <div class="searchdiv">
                    <input type="radio" name="way" id="double" required value="Return" checked /><label for="double">來回</label>
                    <input type="radio" name="way" id="one" value="OneWay" /><label for="one">單程</label>
                    艙等:
                    <select name="cabin">
                        <option value="Y">經濟客艙 </option>
                        <option value="Y">商務艙</option>
                        <option value="Y">豪華商務艙</option>
                        <option value="Y">頭等艙</option>
                    </select>
                </div>
            </div>
        </form>
    </article>
    
	    <footer>
	        <span>電話: 0912-345-678</span>
	    	<span> email:team1@eeit99.com</span>
	    	
	    </footer>
	<script>
// 		Google+第三放登入取得資料方法
		$(document).ready(function(){
		function onSignIn(googleUser) {
			var profile = googleUser.getBasicProfile();
			console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
			console.log('Name: ' + profile.getName());
			console.log('Image URL: ' + profile.getImageUrl());
			console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
// 			var m1 = $("<img></img>").attr("src", profile.getImageUrl());
// 			$("#button").append(m1);
		}});
	</script> 
	<script>
	$(document).ready(function(){
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the button that opens the modal
		var btn = document.getElementById("button");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];
		
		//取得Login裡面的那個Login按鈕。
// 		var mybutton = document.getElementById("mybutton");
		
		// When the user clicks the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}
		
// 		mybutton.onclick = function(){
// 			modal.style.display = "block";	
// 		}
		
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
		
		
		
	});
	</script>
	<!-- googleSignOut -->
	<script>
	$(document).ready(function(){
		$(".citytext").keyup(function(){
			var keyin=$(this).val();
			$.get("SelectBox.controller",{"keyin":keyin},function(data){
				console.log("data:"+data);
			})
			console.log("23");
		});
	});
	</script>
	<script>
		//判斷登入是否成功，成功(hasError=false)後就關掉彈跳視窗、失敗(hasError=true)就繼續保持視窗打開著。
		$(document).ready(function(){
		var error=${hasError};
		
// 		var user=${param.userEmail};
// 		var password=${param.password};
// 				console.log(error+user+password);
			if (error) {
				$(".modal").css("display","block");
			}else{
// 				$(".modal").css("display","none");
// 				$(".button").text().remove();
				$(".button").text("顏堃");
				
			};
		});
	</script>
</body>
</html>
