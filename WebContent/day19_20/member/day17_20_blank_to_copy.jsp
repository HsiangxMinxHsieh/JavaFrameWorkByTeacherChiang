<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS實作範例</title>
<link rel=stylesheet type="text/css" href="../css/st1.css" />
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
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
					href="./day11_16ex1_logout.jsp">我要登出</a>
		</table>
	</div>
	<div class="main">
		<div style="margin: auto; vertical-align: middle">
			<!-- main TOP -->

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