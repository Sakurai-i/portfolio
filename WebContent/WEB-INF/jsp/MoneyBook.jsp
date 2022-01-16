<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>家計簿入力</title>
		<style>
			h1 {
				color: #ffffff;
			}
			input {
				font-size: 20pt;
			}
			#button {
				position: absolute; right: 10%;
				margin-center: 100px;
			}
		</style>
	</head>
	<body>
		<div id="menuList">	
			<h1>家計簿入力</h1>
			<%@ include file="Menu.jsp" %>
		</div>
		
		<div id="main">	
			<br>
			<div id="input1">
				<form>
					<p><b><span style="border: 1px solid; color: #ffffff; font-size: 30px; border-radius: 10px; background-color: #F08080;">収 入</span></b><input type="text" style="width:200px;" placeholder="金額を入力">円</p>
				</form>
			</div>
			<div id="input2">
				<form>
					<p>コメント：<input type="text" style="width:200px;"></p>
				</form>
				<form>
					<p>タグ：<input type="text" style="width:200px;" placeholder="#"></p>
				</form>
				<form enctype=multipart/form-data>
					<p>写真：<input type="file" name="file"/></p>
					<input type="submit" value="アップロード" />
					<img src="/fileupload/upload/">
				</form>
			</div>
			<br>
			<div id="input1" style="display:inline-flex">
				<form>
					<p><b><span style="border: 1px solid; color: #ffffff; font-size: 30px; border-radius: 10px; background-color: #87CEFA;">支 出</span></b><input type="text" style="width:200px;" placeholder="金額を入力">円</p>
				</form>
			</div>
			<div id="input2">
				<form>
					<p>コメント：<input type="text" style="width:200px;"></p>
				</form>
				<form>
					<p>タグ：<input type="text" style="width:200px;" placeholder="#"></p>
				</form>
				<form enctype=multipart/form-data>
					<p>写真：<input type="file" name="file"/></p>
					<input type="submit" value="アップロード" />
					<img src="/fileupload/upload/">
				</form>
			</div>
			<br>
			<div id="button">
				<input style="color: #ffffff; background-color: #DC143C; font-size:30px; width: 100px;height: 50px" type="button" value="登録">
				<input style="color: #ffffff; background-color: #696969; font-size:30px; width: 100px;height: 50px" type="button" value="戻る">
			</div>
		</div>	
	</body>
</html>