<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="day11_16_combine.model.porder"%>
<%@page import="day11_16_combine.dao.porder.porderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>完成頁面</title>
<link rel=stylesheet type="text/css" href="../../css/class.css">
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
	<div class="title">訂單新增完成</div>
	<table width=600 align=center border=1>
		<tr>
			<td height=150><jsp:include page="../title.jsp" />
		<tr>
			<td height=300 valign=top><table align=center>
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
						<td colspan=2>共計<%=p.getSum()%>元
					<tr>
						<td colspan=2><input type="button" value="回到導覽頁"
							onclick="javascript:location.href='../day11_16ex3_Big_Order_Member_Example_Home.jsp'">
							<input type="button" value="回到會員中心"
							onclick="javascript:location.href='../member/day11_16ex1_welcom.jsp'">
				</table>
		<tr>
			<td height=100><jsp:include page="../end.jsp" />
	</table>
	<HR>
	<span class="functiontitle">程式碼：</span>
	<BR>
	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR>



</body>
</html>