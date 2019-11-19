<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="day11_16_combine.model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員中心頁面</title>
<link rel=stylesheet type="text/css" href="../../css/class.css">
<link rel=stylesheet type="text/css" href="./css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<%
	member m = (member) session.getAttribute("M");
%>
<body>
	<div class="title">會員中心頁面</div>
	<table width=600 align=center border=1>
		<tr>
			<td height=150 align=center><jsp:include page="../title.jsp" />
		<tr>
			<td height=300　 valign=top>
				<h3>
					登入成功！歡迎<font color="blue"><%=m.getName()%></font><BR>
					您的帳戶資料如下供您確認：<BR>
					<table width=400 align=center border=1>
						<tr>
							<td width="20%"><font color="red">項目</font>
							<td><font color="red">資料</font></td>
						<tr>
							<td>帳號
							<td><%=m.getUser()%>
						<tr>
							<td>密碼
							<td><%=m.getPassword()%>
						<tr>
							<td>住址
							<td><%=m.getAddress()%>
						<tr>
							<td>手機
							<td><%=m.getMobile()%>
						<tr>
							<td>電話
							<td><%=m.getPhone()%>
					</table>
					<BR> 請<a href="../porder/day11_16ex5_order.jsp">點我</a>跳轉至購物畫面．．．
					<BR> 請<a href="./day11_16ex1_edit.jsp">點我</a>跳轉至個人資料修改畫面．．．
					<BR> 請<a href="./day11_16ex1_query_order.jsp">點我</a>跳轉至查詢訂單畫面．．．
					<BR> 請<a href="./day11_16ex1_logout.jsp">點我</a>登出．．．
				</h3>
		<tr>
			<td height=100 align=right><jsp:include page="../end.jsp" />
	</table>
	<HR>
	<span class="functiontitle">程式碼：</span>
	<BR>
	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR>



</body>
</html>