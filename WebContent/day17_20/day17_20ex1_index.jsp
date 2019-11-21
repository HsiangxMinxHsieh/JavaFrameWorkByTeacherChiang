<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS實作範例</title>
<link rel=stylesheet type="text/css" href="./css/st1.css" />
<style type="text/css">
.main {
	display: -webkit-flex;
	display: flex;
	-webkit-justify-content: center;
	justify-content: center;
}
</style>
</head>
<body>
	<div class="header">
		<table width="70%" align="center" border=0>
			<tr>
				<td align="center" valign="center"><jsp:include
						page="title.jsp"></jsp:include>
		</table>
	</div>
	<div class="sidebar">
		<table width="100%" align="center" border=0>
			<tr>
				<td align="center" valign="center"><span
					style="font-size: 80px;">導<BR>覽<BR>頁
				</span>
		</table>
	</div>
	<div class="main">
		<div style="margin: auto; vertical-align: middle">
			<table style="margin: auto; vertical-align: middle" align=center
				border=0>
				<tr>
					<td>1)<a href="./member/day11_16ex1_login.jsp">登入</a> <BR>
				<tr>
					<td>2)<a href="./member/day11_16ex1_add.jsp">註冊</a> <BR>
				<tr>
					<td>3)<a href="./porder/day11_16ex5_order.jsp">購物</a> <BR>
			</table>
		</div>

	</div>
	<div class="footer">
		<table width="100%" align="center" border=0>
			<tr>
				<td align="center" valign="center"><jsp:include page="end.jsp"></jsp:include>
		</table>
	</div>



</body>
</html>