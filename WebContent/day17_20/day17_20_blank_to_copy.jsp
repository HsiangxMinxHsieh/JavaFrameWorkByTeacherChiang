<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS實作範例</title>
<link rel=stylesheet type="text/css" href="./css/st1.css" />
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
	<div class="main"></div>
	<div class="footer">
		<table width="100%" align="center" border=0>
			<tr>
				<td align="center" valign="center"><jsp:include page="end.jsp"></jsp:include>
		</table>
	</div>


</body>
</html>