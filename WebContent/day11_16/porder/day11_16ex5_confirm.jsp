<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="day11_16_combine.model.member"%>
<%@page import="day11_16_combine.model.porder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>訂單確認頁面</title>
<link rel=stylesheet type="text/css" href="../../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<%
	member m = (member) session.getAttribute("M");
	int pro1 = Integer.parseInt(request.getParameter("product1"));
	int pro2 = Integer.parseInt(request.getParameter("product2"));
	int pro3 = Integer.parseInt(request.getParameter("product3"));
	porder p = new porder();
	p.setName((m != null && m.getName() != null) ? m.getName() : "沒有購買者");
	p.setPro1(pro1);
	p.setPro2(pro2);
	p.setPro3(pro3);
	session.setAttribute("P", p);
%>

<body>
	<div class="title">請確認您的訂單</div>
	<table width=600 align=center border=1>
		<tr>
			<td height=150><jsp:include page="../title.jsp" />
		<tr>
			<td height=300 valign=top><table align=center>
					<tr>
						<td colspan=2>親愛的<font color="blue"><%=m.getName()%></font>，這是你的訂單資料
						
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
						<td colspan=2>
						<input type="button" value="重新選購" onclick="javascript:location.href='day11_16ex5_order.jsp'">
						<input type="button" value="完成確認" onclick="javascript:location.href='day11_16ex5_finish.jsp'">
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