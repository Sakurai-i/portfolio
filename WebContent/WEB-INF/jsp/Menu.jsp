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
				background: linear-gradient(to right, #FFA500 0%, #FFA500 20%, #ffffff 20%,  #ffffff 100%); 
			}
			a,h2 {
				color: #A52A2A;
				font-size: 20pt;
			}
			div#menuList {
				font-size: 20pt;
				width: 40%;
				height: 100vh;
				float: left;
			}
			div#main {
				font-size: 20pt;
				width: 60%;
				height: 100vh;
				float: right;
			}
		</style>
	</head>
	<body>
		<div id="all">
			<div id="main">
			</div>
			<div id="menuList">
				<a href="/Portfolio/MypageServlet">🏠 マイページ</a>
				<br><br>
				<a href="/Portfolio/MoneyBookServlet">✏ 家計簿入力</a>
				<br><br>
				<a href="/Portfolio/AllListServlet">📖 一覧</a>
				<br><br>
				<h2>🚪 ログアウト</h2>
			</div>
		</div>
	</body>
</html>