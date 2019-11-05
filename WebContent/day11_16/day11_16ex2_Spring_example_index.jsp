<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<div class="title">Spring範例輸入</div>
	<form action = "../day11_16test2.servlet" method="post">
		名字：<input type="text" name="name"/><BR>
		國文：<input type="number" name="chi"/><BR>
		<button>送出</button>
		</form>
	<HR>
	<span class="functiontitle">程式碼：</span>
	<BR>
	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR>


</body>
</html>