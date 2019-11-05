<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS語法範例</title>
<link href="../css/classday56.css" rel=stylesheet type="text/css">

<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">CSS語法範例</div>
	<table width=600 align=center border=0>
		<tr class="head">
			<td height=150><jsp:include page="head.jsp" />
		<tr class="content">
			<td height=300 valign=top>
				<table align=center>
					<tr>
						<td>1)<a href="#">會員管理</a> <BR>
					<tr>
						<td>2)<a href="#">訂單管理</a> <BR>
				</table>
		<tr class="end">
			<td height=100><jsp:include page="end.jsp" />
	</table>
	<HR>
	<span class="functiontitle">CSS簡介：</span>
	<BR> ※簡單來說，CSS是「多個網頁要套用一種格式」所誕生的套用格式的方法，使用方式大致如下：
	<BR> 1.將要顯示的格式寫為CSS檔案，並指定格式(例如：.ccc{}或#ddd{})
	<BR> 2.將要套用的此格式的網頁處寫上該CSS標明的格式(例如：clas="ccc"或id="ddd")
	<BR>
	3.注意：如果有include網頁內有寫css檔案，include下方的網頁將會依照include的網頁內容的css，因此通常include的網頁內不要寫css引入較佳！
	<BR>
	<HR>
	<span class="functiontitle">本網頁內容：</span>
	<BR><font color=red> &lt;link href=&quot;../css/classday56.css&quot;
	rel=stylesheet type=&quot;text/css&quot; &gt;</font>
	<BR>
	<BR>&lt;style type=&quot;text/css&quot;&gt;
	<BR>.title {
	<BR> width: 500px;
	<BR>}
	<BR>&lt;/style&gt;
	<BR>&lt;/head&gt;
	<BR>&lt;body &gt;
	<BR> &lt;div class=&quot;title&quot; &gt;CSS語法範例&lt;/div&gt;
	<BR> &lt;table width=600 align=center border=0&gt;
	<BR> &lt;tr<font color=red> class=&quot;head&quot;</font>&gt;
	<BR> &lt;td height=150&gt;&lt;jsp:include
	page=&quot;head.jsp&quot; /&gt;
	<BR> &lt;tr<font color=red> class=&quot;content&quot;</font>&gt;
	<BR> &lt;td height=300 valign=top&gt;
	<BR> &lt;table align=center&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td&gt;1)&lt;a href=&quot;#&quot;&gt;會員管理&lt;/a&gt;
	&lt;BR&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td&gt;2)&lt;a href=&quot;#&quot;&gt;訂單管理&lt;/a&gt;
	&lt;BR&gt;
	<BR> &lt;/table&gt;
	<BR> &lt;tr <font color=red>class=&quot;end&quot;</font>&gt;
	<BR> &lt;td height=100&gt;&lt;jsp:include page=&quot;end.jsp&quot;
	/&gt;
	<BR> &lt;/table&gt;
	<BR>&lt;/body&gt;
	<BR>
	<HR>
	<span class="functiontitle">CSS(classday56.css)內容：</span>
	<BR>
	<BR> @charset &quot;UTF-8&quot;;
	<BR>
	<BR>body {
	<BR> font-family: arial, &quot;Microsoft JhengHei&quot;,
	&quot;微軟正黑體&quot;, sans-serif !important;
	<BR> background-color: #F1FDF1;
	<BR>}
	<BR>
	<BR>td {
	<BR> align: center;
	<BR> valign: bottom;
	<BR> text-align: center;
	<BR> margin: auto;
	<BR> text-align: center;
	<BR>}
	<BR>
	<font color=red> <BR>.head { <BR> background-color:
		#D6F9D6; <BR>} <BR>.content{ <BR> background-color:
		#F6FDF5; <BR>} <BR>.end{ <BR> background-color:
		#718870; <BR>} <BR></font>
	<BR>.functiontitle {
	<BR> font-weight: bold;
	<BR> color: Olive;
	<BR> font-size: 18px;
	<BR> line-height: 30px;
	<BR> padding: 5px;
	<BR> background-color: MintCream;
	<BR>}
	<BR>
	<BR>.title {
	<BR> font-weight: bold;
	<BR> color: red;
	<BR> margin: auto;
	<BR> font-size: 24px;
	<BR> text-align: center;
	<BR> padding: 10px;
	<BR> background-color: #D6F9D6;
	<BR>}
	<BR>
	<BR>




</body>
</html>