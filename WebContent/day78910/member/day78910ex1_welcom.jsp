<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="day78910.model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登入成功頁面</title>
<link rel=stylesheet type="text/css" href="../../css/class.css">
<link rel=stylesheet type="text/css" href="./css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<%
member m =(member)session.getAttribute("M");
%>
<body>
	<div class="title">登入成功頁面</div>
	<table width=600 align=center border=1>
		<tr>
			<td height=150 align=center><jsp:include page="../title.jsp" />
				<tr>
			<td height=300　 valign=top>
				<h3>登入成功！歡迎<font color="blue"><%=m.getName() %></font>，請點<a href="../porder/day78910ex5_order.jsp">我</a>跳轉至購物畫面．．．</h3>
		
		<tr>
			<td height=100 align=right><jsp:include page="../end.jsp" />
	
	</table>
	<HR> <span class="functiontitle">程式碼：</span>
	<BR>
	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR>



		</body>
</html>