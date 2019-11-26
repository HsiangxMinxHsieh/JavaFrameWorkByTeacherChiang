<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員新增</title>
<link rel=stylesheet type="text/css" href="../css/st1.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<script>
	function check() {
		var txtName = document.getElementById("txtname");
		var txtUser = document.getElementById("txtuser");
		var txtPassword = document.getElementById("txtpassword");
		if (txtName.value.length == 0) {
			alert("請輸入姓名。");
			return false;
		}
		if (txtUser.value.length == 0) {
			alert("請輸入帳號。");
			return false;
		}
		if (txtPassword.value.length == 0) {
			alert("請輸入密碼。");
			return false;
		}
		return true;
	}
</script>
<%
	Boolean isLoginFail = false;
	String data = (String) session.getAttribute("fail");
	if (data != null && !data.equals(""))
		isLoginFail = true;
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
					style="font-size: 80px;">註<BR>冊<BR>頁
				</span>
		</table>
	</div>
	<div class="main">
		<div style="margin: auto; vertical-align: middle">
			<!-- main TOP -->
			<form action="day11_16Add" method="post">
				<table align=center>
					<%=(isLoginFail) ? "<tr><td colspan=2><font color=\"red\">會員登入失敗！無此帳號，請於此頁註冊。</font>" : ""%>
					<tr>
						<td colspan=2>會員新增
					<tr>
						<td>姓名：<input id="txtname" type="text" name="name"
							required="required"> <BR>
					<tr>
						<td>帳號：<input id="txtuser" type="text" name="user"> <BR>
					<tr>
						<td>密碼：<input id="txtpassword" type="password"
							name="password"> <BR>
					<tr>
						<td>地址：<input type="text" name="Address"> <BR>
					<tr>
						<td>手機：<input type="text" name="Mobile"> <BR>
					<tr>
						<td>電話：<input type="text" name="Phone"> <BR>
					<tr>
						<td colspan=2><input type="SUBMIT" value="確定送出"
							onclick="return check()" />
				</table>
			</form>
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


</body>
</html>