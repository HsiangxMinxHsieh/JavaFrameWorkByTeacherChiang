<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="day11_16_combine.model.porder"%>
<%@page import="day11_16_combine.dao.porder.porderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>完成頁面</title>
<link rel=stylesheet type="text/css" href="../css/st1.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<%
	porder p = new porder();
	try {
		p = (porder) session.getAttribute("P");
		if (p == null)
			request.getRequestDispatcher("./day11_16ex5_order.jsp").forward(request, response);
		new porderDao().add(p);
		session.setAttribute("P", null);
	} catch (Exception e) {
		request.getRequestDispatcher("./day11_16ex5_order.jsp").forward(request, response);
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
			<!-- main TOP -->
			<table align=center>
				<tr>
					<td colspan=2>親愛的<font color="blue"><%=p.getName()%></font>，訂單新增已完成如下：
					
				<tr>
					<td colspan=2><HR>
				<tr>
					<td width=50%>品名(金額)
					<td>數量
				<tr>
					<td>文具類(150元)
					<td><%=p.getPro1()%>
				<tr>
					<td>玩具類(300元)
					<td><%=p.getPro2()%>
				<tr>
					<td>書籍類(500元)
					<td><%=p.getPro3()%>
				<tr>
					<td colspan=2><HR>
				<tr>
					<td colspan=2>共計<%=p.getSum()%>元
				<tr>
					<td colspan=2><input type="button" value="回到導覽頁"
						onclick="javascript:location.href='../day17_20ex1_index.jsp'">
						<input type="button" value="回到會員中心"
						onclick="javascript:location.href='../member/day11_16ex1_welcom.jsp'">
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