<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
    <meta charset="utf-8" />
    <title>訂購完成</title>
    
 	<link href="<c:url value='/css/search/jquery-ui.min.css'/>" type="text/css" rel="stylesheet">
	<link href="<c:url value='/css/login/bouncebutton.css'/>"type="text/css" rel="stylesheet" />
	<link href="<c:url value='/css/login/FB&Googlebutton.css'/>" rel="stylesheet" >

	<link href="<c:url value='/css/title.css'/>" type="text/css" rel="stylesheet" />
	<link href="<c:url value='/css/footer.css'/>" type="text/css" rel="stylesheet" />
<%-- 	<link href="<c:url value='/css/search/searchbody.css'/>" type="text/css" rel="stylesheet" /> --%>
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
	
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
    <style>
        .container{
			width: 900px;
		}
		
		.table {
			width: 96%;
			margin:auto;
            opacity:0.7;
            background: -webkit-linear-gradient(top,#A6FFFF,#84C1FF);
			padding:0;
		}
		
		.table th{
			vertical-align: middle;
		}
		.table td{
			width: 50%;
			text-align: center;
			vertical-align: middle;
		
		}
		
		.table1 td{
			text-align: center;
			vertical-align: middle;
			width: auto;
		}
		.table1th{
			text-align: center;
			vertical-align: middle;
		}
		
		body{
		background:rgba(255, 244, 194,0.6);
		}
    </style>
    
</head>
<body>
	<jsp:include page="/page/shared/header.jsp" />
	<br/><br/><br/>
    
    <div class = "container">
    <br/>
    <h1>訂購完成，感謝您的購買</h1>
    <hr />
    <br/>
		<table class="table table-sm table1">
			<thead>
				<tr>
					<th colspan="7">
						<h3>機票資訊</h3>
					</th>
				</tr>
			</thead>
			<thead class="table1th">
				<tr>
					<th></th>
					<th>訂單編號:</th>
					<th><span style="color:red">${go1.flightorderid}</span></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th>機票金額:</th>
					<th>${flightprice}元(台幣)</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th>大人人數:</th>
					<th>${go1.adult}人</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th>小孩人數:</th>
					<th>${go1.child}人</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>

	        	<tr>
	                <th></th>
	                <th>班機機型</th>
	                <th>起飛</th>
	                <th style="width: 20px"></th>
	                <th>降落</th>
	                <th>飛行時間</th>
	                <th></th>
	        	</tr>
			</thead>
	        <tbody>
	            <tr>
	                <th rowspan="6">去程:</th>
	                <td rowspan="3">${go1.model}</td>
	                <td rowspan="2">${go1.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${go1.downtime}</td>
	                <td rowspan="3">${go1.flighttime}</td>
	                <td>航班：${go1.flight}</td>
	            </tr>
	            <tr>
	                <td>艙等：${go1.cabin}</td>
	            </tr>
	            <tr>
	                <td>${go1.start}</td>
	                <td></td>
	                <td>${go1.endstart}</td>
	                <td>重量：30kg</td>
	            </tr>
	            <c:if test="${not empty go2}">
	            <tr>
	                <td rowspan="3">${go2.model}</td>
	                <td rowspan="2">${go2.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${go2.downtime}</td>
	                <td rowspan="3">${go2.flighttime}</td>
	                <td>航班：${go2.flight}</td>
	            </tr>
	            <tr>
	                <td>艙等：${go2.cabin}</td>
	            </tr>
	            <tr>
	                <td>${go2.start}</td>
	                <td></td>
	                <td>${go2.endstart}</td>
	                <td>重量：30kg</td>
	            </tr>
	            </c:if>
	        </tbody>
	    

	    <c:if test="${not empty back1}">
	    
			<thead  class="table1th">
	        	<tr>
	                <th></th>
	                <th>班機機型</th>
	                <th>起飛</th>
	                <th style="width: 20px"></th>
	                <th>降落</th>
	                <th>飛行時間</th>
	                <th></th>
	        	</tr>
			</thead>
			
	        <tbody>
	            <tr>
	                <th rowspan="6">回程:</th>
	                <td rowspan="3">${back1.model}</td>
	                <td rowspan="2">${back1.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${back1.downtime}</td>
	                <td rowspan="3">${back1.flighttime}</td>
	                <td>航班：${back1.flight}</td>
	            </tr>
	            <tr>
	                <td>艙等：${back1.cabin}</td>
	            </tr>
	            <tr>
	                <td>${back1.start}</td>
	                <td></td>
	                <td>${back1.endstart}</td>
	                <td>重量：30kg</td>
	            </tr>
	            <c:if test="${not empty back2}">
	            <tr>
	                <td rowspan="3">${back2.model}</td>
	                <td rowspan="2">${back2.uptime}</td>
	                <td rowspan="2"></td>
	                <td rowspan="2">${back2.downtime}</td>
	                <td rowspan="3">${back2.flighttime}</td>
	                <td>航班：${back2.flight}</td>
	            </tr>
	            <tr>
	                <td>艙等：${back2.cabin}</td>
	            </tr>
	            <tr>
	                <td>${back2.start}</td>
	                <td></td>
	                <td>${back2.endstart}</td>
	                <td>重量：30kg</td>
	            </tr>
	            </c:if>
	        </tbody>
	        
        </c:if>
        </table>
        <br />
	</div>
	<br />

	<div  class = "container">
		<table class="table table-sm">
	        <thead >
				<tr>
					<th colspan="2">
						<h4>聯絡人資料確認</h4>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>電子郵件:</td>
					<td>${obean.email}</td>
				</tr>
				<tr>
					<td>聯絡人姓氏:</td>
					<td>${obean.efirstname}</td>
				</tr>
				<tr>
					<td>聯絡人名字:</td>
					<td>${obean.elastname}</td>
				</tr>
				<tr>
					<td>聯絡人電話:</td>
					<td>${obean.ephone}</td>
				</tr>
			</tbody>
		</table>
		</div>
		<br />
<!-- 		<table class="checktable"> -->
<!-- 			<thead class="checkthead"> -->
<!-- 	        	<tr> -->
<!-- 	                <td></td> -->
<!-- 	                <td>班機機型</td> -->
<!-- 	                <td>起飛</td> -->
<!-- 	                <td style="width: 20px"></td> -->
<!-- 	                <td>降落</td> -->
<!-- 	                <td>飛行時間</td> -->
<!-- 	                <td></td> -->
<!-- 	        	</tr> -->
<!-- 			</thead> -->
<!-- 	        <tbody> -->
<!-- 	            <tr> -->
<!-- 	                <th rowspan="6">去程:</th> -->
<%-- 	                <td rowspan="3">${go1.model}</td> --%>
<%-- 	                <td rowspan="2">${go1.uptime}</td> --%>
<!-- 	                <td rowspan="2"></td> -->
<%-- 	                <td rowspan="2">${go1.downtime}</td> --%>
<!-- 	                <td rowspan="3">()3時10分</td> -->
<%-- 	                <td>${go1.flight}</td> --%>
<!-- 	            </tr> -->
<!-- 	            <tr> -->
<!-- 	                <td>():經濟艙(F)</td> -->
<!-- 	            </tr> -->
<!-- 	            <tr> -->
<%-- 	                <td>${go1.start}</td> --%>
<!-- 	                <td></td> -->
<%-- 	                <td>${go1.endstart}</td> --%>
<!-- 	                <td>():30kg</td> -->
<!-- 	            </tr> -->
<!-- 	            <tr> -->
<%-- 	                <td rowspan="3">${go2.model}</td> --%>
<%-- 	                <td rowspan="2">${go2.uptime}</td> --%>
<!-- 	                <td rowspan="2"></td> -->
<%-- 	                <td rowspan="2">${go2.downtime}</td> --%>
<!-- 	                <td rowspan="3">()3時10分</td> -->
<%-- 	                <td>${go2.flight}</td> --%>
<!-- 	            </tr> -->
<!-- 	            <tr> -->
<!-- 	                <td>():經濟艙(F)</td> -->
<!-- 	            </tr> -->
<!-- 	            <tr> -->
<%-- 	                <td>${go2.start}</td> --%>
<!-- 	                <td></td> -->
<%-- 	                <td>${go2.endstart}</td> --%>
<!-- 	                <td>():30kg</td> -->
<!-- 	            </tr> -->
<!-- 	        </tbody> -->
<!-- 	    </table> -->
<!-- 	    </br> -->
<!-- 	    </br> -->
<!-- 	    <table class="checktable"> -->
<!-- 	        <thead class="checkthead"> -->
<!-- 	        	<tr> -->
<!-- 	                <td></td> -->
<!-- 	                <td>班機機型</td> -->
<!-- 	                <td>起飛</td> -->
<!-- 	                <td style="width: 20px"></td> -->
<!-- 	                <td>降落</td> -->
<!-- 	                <td>飛行時間</td> -->
<!-- 	                <td></td> -->
<!-- 	        	</tr> -->
<!-- 			</thead> -->
<!-- 	        <tbody> -->
<!-- 	            <tr> -->
<!-- 	                <th rowspan="6">回程:</th> -->
<%-- 	                <td rowspan="3">${back1.model}</td> --%>
<%-- 	                <td rowspan="2">${back1.uptime}</td> --%>
<!-- 	                <td rowspan="2"></td> -->
<%-- 	                <td rowspan="2">${back1.downtime}</td> --%>
<!-- 	                <td rowspan="3">()3時10分</td> -->
<%-- 	                <td>${back1.flight}</td> --%>
<!-- 	            </tr> -->
<!-- 	            <tr> -->
<!-- 	                <td>():經濟艙(F)</td> -->
<!-- 	            </tr> -->
<!-- 	            <tr> -->
<%-- 	                <td>${back1.start}</td> --%>
<!-- 	                <td></td> -->
<%-- 	                <td>${back1.endstart}</td> --%>
<!-- 	                <td>():30kg</td> -->
<!-- 	            </tr> -->
<!-- 	            <tr> -->
<%-- 	                <td rowspan="3">${back2.model}</td> --%>
<%-- 	                <td rowspan="2">${back2.uptime}</td> --%>
<!-- 	                <td rowspan="2"></td> -->
<%-- 	                <td rowspan="2">${back2.downtime}</td> --%>
<!-- 	                <td rowspan="3">()3時10分</td> -->
<%-- 	                <td>${back2.flight}</td> --%>
<!-- 	            </tr> -->
<!-- 	            <tr> -->
<!-- 	                <td>():經濟艙(F)</td> -->
<!-- 	            </tr> -->
<!-- 	            <tr> -->
<%-- 	                <td>${back2.start}</td> --%>
<!-- 	                <td></td> -->
<%-- 	                <td>${back2.endstart}</td> --%>
<!-- 	                <td>():30kg</td> -->
<!-- 	            </tr> -->
<!-- 	        </tbody> -->
	        
<!--         </table> -->
		<div id="passengerVeiw">
		
		<c:if test="${not empty abean1}">
			<div  class ="container">
				<table  class="table table-sm">
		        	<thead>
						<tr>
							<th colspan="2">
								乘客1
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>FirstName:</td>
							<td>${abean1.firstname}</td>
						</tr>
						<tr>
							<td>LastName:</td>
							<td>${abean1.lastname}</td>
						</tr>
						<tr>
							<td>連絡電話:</td>
							<td>${abean1.phone}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</c:if>
		
			<br />
					
		<c:if test="${not empty abean2}">
		<div  class ="container">
			<table class="table table-sm">
	        	<thead >
					<tr>
						<th colspan="2">乘客2</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${abean2.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${abean2.lastname}</td>
					</tr>
					<tr>
						<td>連絡電話:</td>
						<td>${abean2.phone}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
			<br />
		
		<c:if test="${not empty abean3}">
		<div  class ="container">
			<table  class="table table-sm">
		        <thead>
					<tr>
						<th colspan="2">乘客3</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${abean3.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${abean3.lastname}</td>
					</tr>
					<tr>
						<td>連絡電話:</td>
						<td>${abean3.phone}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
		
			<br />
		
		<c:if test="${not empty abean4}">
		<div  class ="container">
			<table  class="table table-sm">
		        <thead>
					<tr>
						<th colspan="2">乘客4</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${abean4.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${abean4.lastname}</td>
					</tr>
					<tr>
						<td>連絡電話:</td>
						<td>${abean4.phone}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
			<br />
		
		<c:if test="${not empty cbean1}">
		<div  class ="container">
			<table  class="table table-sm">
		        <thead>
					<tr>
						<th colspan="2">孩童1</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${cbean1.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${cbean1.lastname}</td>
					</tr>
					<tr>
						<td>生日:</td>
						<td>${cbean1.kidbirthday}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
		
			<br />
		
		<c:if test="${not empty cbean2}">
		<div  class ="container">
				<table  class="table table-sm">
		        	<thead>
						<tr>
							<th colspan="2">孩童2</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${cbean2.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${cbean2.lastname}</td>
					</tr>
					<tr>
						<td>生日:</td>
						<td>${cbean2.kidbirthday}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>

		<br />
		
		<c:if test="${not empty cbean3}">
		<div  class ="container">
			<table  class="table table-sm">
		        <thead>
					<tr>
						<th colspan="2">孩童3</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${cbean3.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${cbean3.lastname}</td>
					</tr>
					<tr>
						<td>生日:</td>
						<td>${cbean3.kidbirthday}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
		
			<br />
		
		<c:if test="${not empty cbean4}">
		<div  class ="container">
				<table  class="table table-sm">
		        	<thead>
						<tr>
							<th colspan="2">孩童4</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FirstName:</td>
						<td>${cbean4.firstname}</td>
					</tr>
					<tr>
						<td>LastName:</td>
						<td>${cbean4.lastname}</td>
					</tr>
					<tr>
						<td>生日:</td>
						<td>${cbean4.kidbirthday}</td>
					</tr>
				</tbody>
			</table>
		</div>
		</c:if>
		
		<br />
		
		</div>


    <div   class = "container" style="padding:0 18% 45px 18%;background:rgba(255, 244, 194,0);">
        <form action="<c:url value='/ForwordToHouse.controller'/>" method="get">
        <input  class="btn btn-success"  type="button" value="列印明細" />
        <a href="<c:url value='/index.jsp'/>">
        <input  class="btn btn-success"  type="button" value="回查詢首頁" /></a>
        	<input  class="btn btn-success"  type="submit" value="續訂民宿" />
        </form>
    </div>
    
    		
	<jsp:include page="/page/shared/footer.jsp"/>
	<jsp:include page="/page/shared/myjs/loginjs.jsp" />
</body>
</html>