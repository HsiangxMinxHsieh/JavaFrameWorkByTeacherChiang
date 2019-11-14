<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>進入失敗頁面</title>
<link rel=stylesheet type="text/css" href="../../css/class.css">
<link rel=stylesheet type="text/css" href="./css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">進入失敗頁面</div>
	<table width=600 align=center border=1>
		<tr>
			<td height=150 align=center><jsp:include page="../title.jsp" />
				<tr>
			<td height=300　 valign=top>
				<h3>操作過程中遺失登入資料，請先登入。<BR>請<a href="../member/day11_16ex1_login.jsp">點我</a>進入登入頁面。</h3>
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