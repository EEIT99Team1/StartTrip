<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
$(function() {
	$("#dialogEmail").dialog({autoOpen : false,modal: true,draggable: false,
		position: { my: "right top", at: "right bottom",},
		show : {effect : "blind",duration : 1000},
		hide : {effect : "blind",duration : 1000}});
	$("#openerEmail").on("click", function() {
		$("#dialogEmail").dialog("open");
	});
});
</script>
<style>
.heighttext{line-height: 150px;}
</style>
	<footer id="footer">
            <span><a>©2018 StartTrip有限公司（StartTrip, Inc.）版權所有。</a></span>
            <span><a href="#" id="openerEmail">客服信箱</a> |</span>
            <span>電話: 0912-345-678  |</span>
            <span><a  href="">StartTrip® 最終用戶授權協議</a> |</span>
			<span><a  href="" >隱私條款</a> |</span> 
    </footer>
	<div id="dialogEmail" title="客服信箱">
    	<form action="<c:url value='/CustomerServiceMail' />" method="post">
			<div >
				<label id="CSEmail">Email：</label>
					<input maxlength="40"type="text" name="csEmailinput" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" 
					tabindex="1" placeholder="請填寫正確Email" spellcheck="false" required />
				<div><label >內容種類：</label>
					<select name="cdComplaint" >
						<option selected value="stservice">服務</option>
						<option value="product">商品</option>
						<option value="other">其他</option>
					</select>
				</div>
				<label id="CSContent" >文字內容：</label>
				<div >
					<input type="text" class="heighttext" placeholder="限200字內，禁不雅言語。" name="csContentinput" spellcheck="false" maxlength="200" required/>
				</div>
				<div>
					<input type="submit" value="送出" onclick="sdCSmail()" />
				</div>
			</div>
		</form>
	</div>