<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import = "day11_16.model.A" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring範例</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
<%
A a = (A)session.getAttribute("A");
%>
	<div class="title">Spring範例輸出</div>
	您剛才輸入的資料為：<BR>
	名字：<%=a.getName() %><BR>
	國文：<%=a.getChi() %><BR>
	
	<HR>
	<span class="functiontitle">程式碼：</span>
	<BR>
	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR>


</body>
</html>