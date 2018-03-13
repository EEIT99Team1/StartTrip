<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>

</head>
<body>
		<div style = "width:300px;height:300px;border:solid 2px red">
			<table>
				<thead>
				<tr>
					<th>商品</th>
					<th>品名</th>
					<th>點數</th>
					<th>數量</th>
					<th colspan="2">確認欄</th>			
				</tr>				
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
						<td>6</td>
					</tr>
				</tbody>
			</table>			
		</div>
		<div>
			<input class="btn btn-primary addcart" type="submit" value="確定購買">
			<input class="btn btn-danger dbtnall" type="submit" value="取消購買">
		</div>


</body>
</html>