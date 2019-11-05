<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>尺筆訂單管理頁面</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">尺筆訂單管理頁面</div>
	<table width=600 align=center border=1>
		<tr>
			<td height=150><jsp:include page="head.jsp" />
		<tr>
			<td height=300 valign=top>
				<table align=center>
					<tr>
						<td>1)<a href="./member/day34ex1_login.jsp">會員管理</a> <BR>
					<tr>
						<td>2)<a href="./porder/day34ex1_porder.jsp">訂單管理</a> <BR>
				</table>
		<tr>
			<td height=100><jsp:include page="end.jsp" />
	</table>
	<HR>
	<span class="functiontitle">Struts簡介：</span>
	<BR>
	※簡單來說，利用struts.xml檔，設定來自於何處，與各個result要導入的頁面即可實現Servlet的「判斷頁面並處理導向至何處」。
	<BR> ※但是，並無法實現Servlet中的複雜功能，例如設定cookie、session等。
	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR>
	<BR>&lt;table width=600 align=center border=1&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td height=150&gt;&lt;jsp:include
	page=&quot;head.jsp&quot; /&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td height=300 valign=top&gt;
	<BR> &lt;table align=center&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td&gt;1)&lt;a
	href=&quot;./member/day34ex1_login.jsp&quot;&gt;會員管理&lt;/a&gt;
	&lt;BR&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td&gt;2)&lt;a
	href=&quot;./porder/day34ex1_porder.jsp&quot;&gt;訂單管理&lt;/a&gt;
	&lt;BR&gt;
	<BR> &lt;/table&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td height=100&gt;&lt;jsp:include page=&quot;end.jsp&quot;
	/&gt;
	<BR> &lt;/table&gt;
	<BR>
	<BR>



</body>
</html>