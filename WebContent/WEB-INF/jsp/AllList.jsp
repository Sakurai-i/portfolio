<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>一覧</title>
		<style>
			h1 {
				color: #ffffff; 
			}
		</style>
	</head>
	<body>
		<div id="menuList">
			<h1>一覧</h1>
			<%@ include file="Menu.jsp" %>
		</div>
		<div id="main">
			<br><br><br>
			<table>
				<tr>
					<td>データ1-1</td>
					<td>ブランク</td>
					<td>データ2-1</td>
					<td>ブランク</td>	
					<td>データ3-1</td>
				</tr>
				<tr>
					<td>データ1-2</td>
					<td>ブランク</td>	
					<td>データ2-2</td>
					<td>ブランク</td>	
					<td>データ3-2</td>
				</tr>
			</table>
		</div>
	</body>
</html>