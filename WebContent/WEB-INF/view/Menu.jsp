<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>メニュー</title>
		<style>
			body {
				font-family: "メイリオ";
			}
			a,h2 {
				color: #A52A2A;
				font-size: 20pt;
			}
			.menuList {
				position: fixed;
				width: 20%;
				height: 100%;
				overflow: auto;
				background: #FFA500; 
			}
			.main {
				margin-left: 400px;
				width: 70%;
			}
		</style>
	</head>
	<body>
		<div class="all">
			<div class="menuList">
				<a href="/Portfolio/MypageServlet">🏠 マイページ</a>
				<br><br>
				<a href="/Portfolio/MoneyBookServlet">✏ 家計簿入力</a>
				<br><br>
				<a href="/Portfolio/AllListServlet">📖 一覧</a>
				<br><br>
				<h2>🚪 ログアウト</h2>
			</div>
			<div class="main">
			</div>
		</div>
	</body>
</html>