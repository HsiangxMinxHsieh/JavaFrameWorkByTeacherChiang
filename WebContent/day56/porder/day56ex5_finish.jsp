<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="day3456.Model.porder"%>
<%@page import="day3456.Dao.daoIm.PorderDao"%>
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
	porder p = (porder) session.getAttribute("P");

	new PorderDao().add(p);
%>
<body>
	<div class="title">訂單新增完成</div>
	<table width=600 align=center border=1>
		<tr>
			<td height=150><jsp:include page="../head.jsp" />
		<tr>
			<td height=300 valign=top><table align=center>
					<tr>
						<td colspan=2>以下是<font color=blue><%=p.getName()%></font>您的訂單：
						
					<tr>
						<td>尺數量：
						<td><%=p.getRuler()%>
					<tr>
						<td>比數量：
						<td><%=p.getPen()%>
					<tr>
						<td>共 計：
						<td><%=p.getSum()%> 元
						<tr>
						<td colspan=2><a href="../day56ex4_index.jsp">回到功能首頁</a>
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