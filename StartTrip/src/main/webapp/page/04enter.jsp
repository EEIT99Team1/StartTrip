<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>資料填寫</title>
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
    <form>
        <h3>資料填寫</h3>
        <hr />
        <div>
            姓氏(護照上的英文姓):<input type="text" />
            名字(護照上的英文名):<input type="text" />
        </div>
        <div>
            性別:
            <input type="radio"  id="ml" required value="male" /><label for="ml">男</label>
            <input type="radio" id="fl" value="female" /><label for="fl">女</label>
        </div>
        <div>
            國籍:
            <select>
                <option>台灣 </option>
                <option>日本</option>
                <option>中國</option>
                <option>美國</option>
            </select>
        </div>
        <div>
            手機號碼:
            <select>
                <option>+886 </option>
            </select>
            <input type="text" />
        </div>
        <div>
            電子郵件:
            <input type="text" />
        </div>
        <div>
            在確認電子郵件:
            <input type="text" />
        </div>
        <div>
            出生年月日:
            <input type="text" />
            (格式:yyyy/MM/dd)

        </div>
        <div>
            護照號碼:
            <input type="text" />
        </div>
        <div>
            護照到期日:
            <select>
                <option>台灣</option>
                <option>日本</option>
                <option>中國</option>
                <option>美國</option>
            </select>
            <select>
                <option>台灣</option>
                <option>日本</option>
                <option>中國</option>
                <option>美國</option>
            </select>
            <select>
                <option>台灣</option>
                <option>日本</option>
                <option>中國</option>
                <option>美國</option>
            </select>
        </div>
        <hr />
        <div>
            <a href="06check.jsp"><input type="button" value="下一步" /></a>
            <a href="02select.jsp"><input type="button" value="返回查詢結果" /></a>
        </div>
    </form>
</body>
</html>