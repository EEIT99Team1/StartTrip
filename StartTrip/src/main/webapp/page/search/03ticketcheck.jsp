<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html ">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>訂票資料確認</title>
</head>
<body>

    <h3>訂票資料確認</h3>
    <hr />

    <table>
	    <thead style="bonder:2px solid black">
		    <tr style="bonder:2px solid black">
			    <th></th>
			    <th>班機機型</th>
			    <th>起飛時間</th>
			    <th>起飛地點</th>
			    <th>降落時間</th>
			    <th>降落地點</th>
			    <th>飛行時間</th><!--包含轉機次數 -->
			    <th>航班</th>
			    <th>艙等</th>
			    <th>行李限重</th>
		    </tr>
	    </thead>
    <tbody style="bonder:2px solid black">
    	<tr>
	    	<td>去程</td>
	    	<td></td>
	    	<td></td>
	    	<td></td>
	    	<td></td>
    	</tr>
    	<tr>
    		<td>去程</td>
	    	<td></td>
	    	<td></td>
	    	<td></td>
	    	<td></td>
	    </tr>
    	<tr>
    		<td>回程</td>
	    	<td></td>
	    	<td></td>
	    	<td></td>
	    	<td></td>
    	</tr>
    	<tr>
    		<td>回程</td>
	    	<td></td>
	    	<td></td>
	    	<td></td>
	    	<td></td>
	    </tr>
    </tbody>
    </table>
    <hr />
    
    
    ${go1.start}<br/>
    ${go1.endstart}<br/>
    ${go1.uptime}<br/>
    ${go1.downtime}<br/>
    ${go1.adult}<br/>
    ${go1.child}<br/>
    ${go1.flight}<br/>
    ${go1.model}<br/>
    <hr />
    ${go2.start}<br/>
    ${go2.endstart}<br/>
    ${go2.uptime}<br/>
    ${go2.downtime}<br/>
    ${go2.adult}<br/>
    ${go2.child}<br/>
    ${go2.flight}<br/>
    ${go2.model}<br/>
    <hr />
    ${back1.start}<br/>
    ${back1.endstart}<br/>
    ${back1.uptime}<br/>
    ${back1.downtime}<br/>
    ${back1.adult}<br/>
    ${back1.child}<br/>
    ${back1.flight}<br/>
    ${back1.model}<br/>
    <hr />
    ${back2.start}<br/>
    ${back2.endstart}<br/>
    ${back2.uptime}<br/>
    ${back2.downtime}<br/>
    ${back2.adult}<br/>
    ${back2.child}<br/>
    ${back2.flight}<br/>
    ${back2.model}<br/>
    <hr />
    <a href="04enter.jsp">
    	<input type="submit" value="確認訂票" /></a>
    <a href="02select.jsp"><input type="button" value="取消，回上一頁" /></a>
    
    
</body>
</html>