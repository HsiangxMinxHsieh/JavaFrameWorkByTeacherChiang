<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登出頁面</title>
<link rel=stylesheet type="text/css" href="../css/st1.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<%
	session.setAttribute("M", null);
%>
<body>
	<div class="header">
		<table width="70%" align="center" border=0>
			<tr>
				<td align="center" valign="center"><jsp:include
						page="../title.jsp"></jsp:include>
		</table>
	</div>
	<div class="sidebar">
		<table width="100%" align="center" border=0>
			<tr>
				<td align="center" valign="center"><span
					style="font-size: 80px;">登<BR>出<BR>頁
				</span>
		</table>
	</div>
	<div class="main">
		<div style="margin: auto; vertical-align: middle">
			<!-- main TOP -->
			<table width=600 align=center border=0>
				<tr>
					<td height=300　 valign=top>
						<h3>
							您已登出，請先登入。<BR>請<a href="./day11_16ex1_login.jsp">點我</a>進入登入頁面。
							<BR>或 <BR>請<a href="../day17_20ex1_index.jsp">點我</a>進入導覽頁面。
						</h3>
			</table>
			<!-- main END -->
		</div>
	</div>
	<div class="footer">
		<table width="100%" align="center" border=0>
			<tr>
				<td align="center" valign="center"><jsp:include
						page="../end.jsp"></jsp:include>
		</table>
	</div>
<!-- END -->
</body>
</html>