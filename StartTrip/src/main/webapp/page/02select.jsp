<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>查詢結果</title>
    <link href="../style/title.css" rel="stylesheet" />
    
</head>
<body>
    <header>
		<a href="../index.jsp"><img src="../image/01.png" /></a>
		<nav>
			<ul>
				<li><a href="../index.jsp">機票</a></li>
				<li>飯店</li>
				<li><input type="button" value="登入" style="float: right;" /></li>
			</ul>

		</nav>

	</header>

    <div class="mborder">
        <div class="planeimg">
            <img src="../image/01.png" />
        </div>
        <a href="03ticketcheck.jsp" class="taketicket">
        <input type="button" value="訂票" />
        </a>
        <div>

            機場<br />
            時間${flight.departureDateTime}<br />

            <hr />

            機場<br />
            時間<br />
        </div>

</div>


    <div class="mborder">
        <div class="planeimg">
            <img src="../image/01.png" />
        </div>
        <a href="03ticketcheck.jsp" class="taketicket">
            <input type="button" value="訂票" />
        </a>
        <div>
	            機場<br />
	            時間<br />
	            <hr />
	            機場<br />
	            時間<br />
        </div>

    </div>
</body>
</html>