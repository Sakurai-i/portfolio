<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="model.MoneyBook,java.util.List" %>
<%
//リストをリクエストスコープから取得
List<MoneyBook> mbList = (List<MoneyBook>) request.getAttribute("mbList");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>一覧</title>
		<style>
			h1 {
				color: #ffffff;
				font-size: 30pt; 
			}
			p {
				font-size: 12pt;
			}
		</style>
	</head>
	<body>
		<div class="menuList">
			<h1>一覧</h1>
			<%@ include file="Menu.jsp" %>
		</div>
		<div class="main">
			<br><br><br>
			<% for(MoneyBook mb : mbList) { %>
				<p><%= mb.getDate() %> :<%= mb.getPrice() %> :<%= mb.getComment() %> :<%= mb.getTag() %> : <%= mb.getPhoto() %></p>
			<% } %>
		</div>
	</body>
</html>