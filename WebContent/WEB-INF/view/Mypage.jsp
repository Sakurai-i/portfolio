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
		<title>マイページ</title>
		<style>
			h1 {
				color: white;
				font-size: 30pt;
			}
		</style>
	</head>
	<body>
		<div class="menuList">
			<h1>MyPage</h1>
			<%@ include file="Menu.jsp" %>
		</div>
	<% for(MoneyBook mb : mbList) { %>
		<p><%= mb.getDate() %> :<%= mb.getPrice() %> :<%= mb.getComment() %> :<%= mb.getTag() %> : <%= mb.getPhoto() %></p>
	<% } %>
	</body>
</html>