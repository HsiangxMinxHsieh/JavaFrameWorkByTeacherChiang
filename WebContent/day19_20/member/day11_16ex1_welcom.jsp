<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="day11_16_combine.model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員中心頁面</title>
<link rel=stylesheet type="text/css" href="../css/st1.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<%	
	session.setAttribute("fail",null);
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
			歡迎<font color="blue"><%=m.getName()%></font><BR>
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
					<td><%=(m.getAddress() != null && !m.getAddress().equals("null") && !m.getAddress().equals(""))
					? m.getAddress()
					: "未填入地址"%>
				<tr>
					<td>手機
					<td><%=(m.getMobile() != null && !m.getMobile().equals("null") && !m.getMobile().equals(""))
					? m.getMobile()
					: "未填入手機"%>
				<tr>
					<td>電話
					<td><%=(m.getPhone() != null && !m.getPhone().equals("null") && !m.getPhone().equals("")) ? m.getPhone()
					: "未填入電話"%>
			</table>
			<BR>
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