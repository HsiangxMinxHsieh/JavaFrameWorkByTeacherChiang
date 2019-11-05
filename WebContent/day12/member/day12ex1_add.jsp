<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>尺筆會員新增</title>
<link rel=stylesheet type="text/css" href="../../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">尺筆會員新增</div>
	<!-- 為了實現與struts並存，因此加上.servlet，並於web.xml中指定呼叫植-->
	<form action="../../day12MemberAction.servlet" method="GET">
		名字：<input type="text" name="name" /><BR> 帳號：<input type="text"
			name="user" /><BR> 密碼：<input type="password" name="password" /><BR>
		<input type="submit" value="完成送出"><BR>
	</form>

	<HR>
	<span class="functiontitle">程式碼：</span>
	<BR>
	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR> &lt;!-- 為了實現與struts並存，因此加上.servlet，並於web.xml中指定呼叫植--&gt;
	<BR> &lt;form action=&quot;../../day12MemberAction.servlet&quot;
	method=&quot;GET&quot;&gt;
	<BR> 名字：&lt;input type=&quot;text&quot; name =
	&quot;name&quot;/&gt;&lt;BR&gt;
	<BR> 帳號：&lt;input type=&quot;text&quot; name =
	&quot;user&quot;/&gt;&lt;BR&gt;
	<BR> 密碼：&lt;input type=&quot;password&quot; name =
	&quot;password&quot;/&gt;&lt;BR&gt;
	<BR> &lt;input type=&quot;submit&quot; value
	=&quot;完成送出&quot;&gt;&lt;BR&gt;
	<BR> &lt;/form&gt;
	<BR>
	<BR>


</body>
</html>