<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>功能首頁</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">大型購物網站範例功能首頁</div>
	<table width=600 align=center border=1>
		<tr>
			<td height=150><jsp:include page="title.jsp" />
				<tr>
			<td height=300 valign=top>
				<table align=center>
					<tr>
						<td>1)<a href="./member/day11_16ex1_login.jsp">登入</a> <BR>
					
					<tr>
						<td>2)<a href="./member/day11_16ex1_add.jsp">註冊</a> <BR>
					
					<tr>
						<td>3)<a href="./porder/day11_16ex5_order.jsp">購物</a> <BR>
				
				</table>
		
		<tr>
			<td height=100><jsp:include page="end.jsp" />
	
	</table>
	<HR> <span class="functiontitle">程式碼：</span>
	<BR>
	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR>



		</body>
</html>