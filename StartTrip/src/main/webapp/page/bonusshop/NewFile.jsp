<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript"   src="jquery.js"></script>
<title>購物車</title>
<style type="text/css">
h1{
    text-align:center}
table{
    margin:0 auto;
    width:60%;
    border:2px solid #09C;
    border-collapse:collapse}
table th,table td{
    border:2px solid #09C;
    padding:5px;
    
    }
th{
    background-color:#0CC;}
</style>
<script type="text/javascript">

    

</script>
</head>
<body>
<h1>真劃算</h1>
<table>
    <tr>
        <th>商品</th>
        <th>單價</th>
        <th>顏色</th>
        <th>庫存</th>
        <th>好評率</th>
        <th>操作</th>
    </tr>
    <tr>
        <td>羅技鼠標</td>
        <td>80</td>
        <td>黑色</td>
        <td>893</td>
        <td>98%</td>
        <td align="center"><input type="button" value="加入購物車" onclick="addShopping(this)"/></td>
    </tr>
    <tr>
        <td>微軟鍵盤</td>
        <td>150</td>
        <td>黑色</td>
        <td>100</td>
        <td>98%</td>
        <td align="center"><input type="button" value="加入購物車" onclick="addShopping(this)"/></td>
    </tr>
    <tr>
        <td>手機殼</td>
        <td>60</td>
        <td>透明</td>
        <td>200</td>
        <td>98%</td>
        <td align="center"><input type="button" value="加入購物車" onclick="addShopping(this)"/></td>
    </tr>
    <tr>
        <td>耳機</td>
        <td>100</td>
        <td>藍色</td>
        <td>302</td>
        <td>98%</td>
        <td align="center"><input type="button" value="加入購物車" onclick="addShopping(this)"/></td>
    </tr>
    
</table>

<h1>購物車</h1>
<table>
<thead>
    <tr>
    <td>商品</td>
    <td>單價</td>
    <td>數量</td>
    <td>金額</td>
    <td>刪除</td>
    </tr>
</thead>
<tbody id="goods">
<!--
    <tr>
    
        <td>羅技鼠標</td>
        <td>80</td>
        <td>
        <input type="button" value="-"/>
        <input type="text" size="3" readonly="readonly"/>
        <input type="button" value="+"/>
        </td>
        <td>80</td>
        <td align="center">
        <input type="button" value="*"/>
        </td>
    </tr>-->
</tbody>
<tfoot>
    <tr>
       <td colspan="3" align="right">總計</td>
       <td></td>
       <td></td>
    </tr>
</tfoot>
</table>
</body>
</html>