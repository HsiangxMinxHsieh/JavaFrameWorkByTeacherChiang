<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="day78910.model.member"%>
<%@page import="day78910.model.porder"%>
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
	member m = new member();
	try {
		m = (member) session.getAttribute("M");

	} catch (Exception e) {

	}
	int r = Integer.parseInt(request.getParameter("ruler"));
	int pen = Integer.parseInt(request.getParameter("pen"));
	porder p = new porder();
	p.setName((m != null && m.getName() != null) ? m.getName() : "沒有購買者");
	p.setRuler(r);
	p.setPen(pen);
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
						<td colspan=2>以下是<font color=blue><%=p.getName()%></font>您的訂單，請確認：


						
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
						<td colspan=2><a href="day78910ex5_finish.jsp">完成確認</a>
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