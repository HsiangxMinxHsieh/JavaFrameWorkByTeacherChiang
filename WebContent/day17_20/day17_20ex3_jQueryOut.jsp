<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>資料接收頁面</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<%
	String NAME = request.getParameter("name");
	String PASSWORD = request.getParameter("password");
	String DATE = request.getParameter("date");
%>
<body>
	<div class="title">JQuery Mobile範例與說明資料接收頁面</div>
	<div data-role="content" align=center>
		<table width=400 align="center">
			<TR>
				<TD>Name:
				<TD><%=NAME%>
			<TR>
				<TD>Password:
				<TD><%=PASSWORD%>
			<TR>
				<TD>Date：
				<TD><%=DATE%>
			<TR>
		</table>

	</div>
	<HR>
	<span class="functiontitle">程式碼：</span>
	<BR>
	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR>


</body>
</html>