<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>尺筆訂單會員登入頁面</title>
<link rel=stylesheet type="text/css" href="../css/st1.css">
<style type="text/css">
.title {
	width: 500px;
}

.main {
	
}
</style>
</head>
<%
	session.setAttribute("M", null);
%>
<script>
	function check() {
		if (loginForm.user.value == "") {
			alert("請輸入帳號。");
			return;
		}
		if (loginForm.password.value == "") {
			alert("請輸入密碼。");
			return;
		}
		loginForm.submit();
	}
</script>
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
					style="font-size: 80px;">登<BR>入<BR>頁
				</span>
		</table>
	</div>
	<div class="main">
		<div style="margin: auto; vertical-align: middle">
			<form name="loginForm" action="day11_16Login" method="post">
				<table border=0>
					<tr>
						<td colspan=2>登入頁面
					<tr>
						<td>帳號：<input type="text" name="user"> <BR>
					<tr>
						<td>密碼：<input type="password" name="password"> <BR>
					<tr>
						<td colspan=2><input type="button" value="確定送出"
							onClick="check()">
				</table>
			</form>
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