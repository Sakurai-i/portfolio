<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.MoneyBook,java.util.List" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>家計簿入力</title>
		<style>
			h1 {
				color: #ffffff;
				font-size: 30pt;
			}
			input {
				font-size: 20pt;
			}
			button {
				position: absolute; right: 10%;
				margin-center: 100px;
			}
			p {
				font-size: 20pt;
			}
		</style>
	</head>
	<body>
		<div class="menuList">	
			<h1>家計簿入力</h1>
			<%@ include file="Menu.jsp" %>
		</div>
		<div class="main">
			<!-- <form action="/Portfolio/MypageServlet" method="post" enctype=multipart/form-data> -->
			<br><br>
			<input type="date" class="w120" value="<fmt:formatDate value="${mealCancel.mealCancelDate}" pattern="yyyy-MM-dd" />">
			<br><br><br>
			<form action="/Portfolio/MypageServlet" method="post" >
					<p><b><span style="hight: 40px; width: 200px; padding: 20px;  color: #ffffff; font-size: 30px; border-radius: 10px; background-color: #FF69A3;">収 入</span></b><input type="text" style="width:200px;" placeholder="金額を入力">円</p>
					<p>コメント：<input type="text" name="comment" style="width:200px;"></p>
					<p>タグ：<input type="text" name="tag" style="width:200px;" placeholder="#"></p>
					<p>写真：<input type="file" name="file"/></p>
					<!-- <input type="submit" value="アップロード" /> -->
					<span style="font-size: 15px;"><img src="/fileupload/upload/"></span>
				<br>
				<div id="input1" style="display:inline-flex">
					<p><b><span style="hight: 40px; width: 200px; padding: 20px; color: #ffffff; font-size: 30px; border-radius: 10px; background-color: #2C7CFF;">支 出</span></b><input type="text" style="width:200px;" placeholder="金額を入力">円</p>
				</div>
				<div id="input2">
					<p>コメント：<input type="text" style="width:200px;"></p>
					<p>タグ：<input type="text" style="width:200px;" placeholder="#"></p>
					<p>写真：<input type="file" name="file"/></p>
					<!-- <input type="submit" value="アップロード" /> -->
					<img src="/fileupload/upload/">
				</div>
				<br>
				<div class="button">
					<input style="color: #ffffff; background-color: #DC143C; font-size:30px; width: 100px;height: 50px" type="submit" value="登録">
					<input style="color: #ffffff; background-color: #696969; font-size:30px; width: 100px;height: 50px" type="button" value="戻る">
				</div>
			</form>
		</div>
	</body>
</html>