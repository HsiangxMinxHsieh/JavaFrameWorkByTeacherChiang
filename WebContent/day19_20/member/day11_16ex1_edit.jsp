<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="day11_16_combine.model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員編輯</title>
<link rel=stylesheet type="text/css" href="../css/st1.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
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
		$("input").prop("disabled", false);
		return true;
	}
</script>
<%
	member m = (member) session.getAttribute("M");
	try {
		m.getName();
	} catch (NullPointerException e) {
		//response.sendRedirect("../member/day11_16ex1_login.jsp");
		request.getRequestDispatcher("../porder/day11_16ex1_needlogin.jsp").forward(request, response);
	}
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
				<td align="center" valign="center"><a
					href="../member/day11_16ex1_welcom.jsp">會員中心</a>
			<tr>
				<td align="center" valign="center"><a
					href="../porder/day11_16ex5_order.jsp">購物頁面</a>
			<tr>
				<td align="center" valign="center"><a
					href="../member/day11_16ex1_edit.jsp">修改資料</a>
			<tr>
				<td align="center" valign="center"><a
					href="../porder/day11_16ex1_query_order.jsp">查修訂單</a>
			<tr>
				<td align="center" valign="center"><a
					href="../member/day11_16ex1_logout.jsp">我要登出</a>
		</table>
	</div>
	<div class="main">
		<div style="margin: auto; vertical-align: middle">
			<form action="day11_16Edit" method="post">
				<table align=center>
					<tr>
						<td colspan=2>會員編輯
					<tr>
						<td>姓名：<input id="txtname" type="text" name="name"
							required="required" value="<%=m.getName()%>"> <BR>
					<tr>
						<td>帳號：<input id="txtuser" type="text" name="user"
							value="<%=m.getUser()%>" disabled="disabled"> <BR>
					<tr>
						<td>密碼：<input id="txtpassword" type="password"
							name="password" value="<%=m.getPassword()%>"> <BR>
					<tr>
						<td>地址：<input type="text" name="Address"
							value=<%=(m.getAddress() != null && !m.getAddress().equals("null") && !m.getAddress().equals(""))
					? m.getAddress()
					: "未填入地址"%>>
							<BR>
					<tr>
						<td>手機：<input type="text" name="Mobile"
							value=<%=(m.getMobile() != null && !m.getMobile().equals("null") && !m.getMobile().equals(""))
					? m.getMobile()
					: "未填入手機"%>>
							<BR>
					<tr>
						<td>電話：<input type="text" name="Phone"
							value=<%=(m.getPhone() != null && !m.getPhone().equals("null") && !m.getPhone().equals("")) ? m.getPhone()
					: "未填入電話"%>>
							<BR>
					<tr>
						<td colspan=2><input type="SUBMIT" value="編輯完成"
							onclick="return check()" />
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