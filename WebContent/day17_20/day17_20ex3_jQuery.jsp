<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQuery Mobile範例與說明</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">JQuery Mobile範例與說明</div>
	<HR>
	<span class="functiontitle">使用範例：</span>
	<BR>

	<div data-role="header" data-position="fixed">
		<h1>GJUN</h1>
	</div>

	<div data-role="content">
		<h1>Content</h1>
		<form action="./day17_20ex3_jQueryOut.jsp">
			<table width=500 align="center">
				<TR>
					<TD>name:
					<TD><input type="text" name="name" />
				<TR>
					<TD>password:
					<TD><input type="password" name="password" />
				<TR>
					<TD>Date：
					<TD><input type="date" name="date"/>
				<TR>
					<TD colspan=2><input type="submit" value="提交"/>
				<TR>
			</table>
		</form>
	</div>

	<div data-role="footer" data-position="fixed">end</div>
	<HR>
	<span class="functiontitle">需於標頭檔區(head)內貼上以下三行：</span>
	<BR> &lt;link rel=&quot;stylesheet&quot;
	href=&quot;http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css&quot;
	/&gt;
	<BR> &lt;script
	src=&quot;http://code.jquery.com/jquery-1.11.1.min.js&quot;&gt;&lt;/script&gt;
	<BR> &lt;script
	src=&quot;http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js&quot;&gt;&lt;/script&gt;
	<BR>
	<BR>


	<HR>
	<span class="functiontitle">本頁範例內容：</span>
	<BR> &lt;div data-role=&quot;header&quot;&gt;
	<BR> &lt;h1&gt;GJUN&lt;/h1&gt;
	<BR> &lt;/div&gt;
	<BR>
	<BR> &lt;div data-role=&quot;content&quot;&gt;
	<BR> &lt;h1&gt;Content&lt;/h1&gt;
	<BR> &lt;/div&gt;
	<BR>
	<BR> &lt;div data-role=&quot;footer&quot;&gt;end&lt;/div&gt;
	<BR>
	<BR>


</body>
</html>