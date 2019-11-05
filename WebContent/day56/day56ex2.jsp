<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TagLib 接收端</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<%!String getInterestResult(String[] arr) {
		if (arr == null || arr.length == 0)
			return "未選擇任何興趣。";
		String sum = "";
		for (String s : arr) {
			sum += getContent(s) + " ";
		}
		return sum;
	}

	String getContent(String s) {
		switch (s) {
		case "1":
			return "運動";
		case "2":
			return "閱讀";
		case "3":
			return "電影";
		default:
			return "";
		}
	}%>


<body>
	<div class="title">TagLib 接收端</div>
	<span class="functiontitle">來自第一頁的資料：</span>
	<BR> 您於上一頁輸入的資料如下：
	<BR>帳號：<%=request.getParameter("user")%>
	<BR>密碼：<%=request.getParameter("password")%>
	<BR>性別：<%=(request.getParameter("gender").equals("1")) ? "男生" : "女生"%>
	<BR>興趣：<%=getInterestResult(request.getParameterValues("interest"))%>
	<BR>備忘：<%=request.getParameter("memo")%>
	<BR>
	<span class="functiontitle">此網頁原始碼：</span>
	<BR> &lt;%@ taglib prefix=&quot;c&quot;
	uri=&quot;http://java.sun.com/jsp/jstl/core&quot;%&gt;
	<BR>&lt;%@ taglib prefix=&quot;s&quot;
	uri=&quot;/struts-tags&quot;%&gt;
	<BR>&lt;!DOCTYPE html&gt;
	<BR>&lt;html&gt;
	<BR>&lt;head&gt;
	<BR>&lt;meta charset=&quot;UTF-8&quot;&gt;
	<BR>&lt;title&gt;TagLib 接收端&lt;/title&gt;
	<BR>&lt;link rel=stylesheet type=&quot;text/css&quot;
	href=&quot;../css/class.css&quot;&gt;
	<BR>&lt;style type=&quot;text/css&quot;&gt;
	<BR>.title {
	<BR> width: 500px;
	<BR>}
	<BR>&lt;/style&gt;
	<BR>&lt;/head&gt;
	<BR>&lt;%!String getInterestResult(String[] arr) {
	<BR> if (arr == null || arr.length == 0)
	<BR> return &quot;未選擇任何興趣。&quot;;
	<BR> String sum = &quot;&quot;;
	<BR> for (String s : arr) {
	<BR> sum += getContent(s) + &quot; &quot;;
	<BR> }
	<BR> return sum;
	<BR> }
	<BR>
	<BR> String getContent(String s) {
	<BR> switch (s) {
	<BR> case &quot;1&quot;:
	<BR> return &quot;運動&quot;;
	<BR> case &quot;2&quot;:
	<BR> return &quot;閱讀&quot;;
	<BR> case &quot;3&quot;:
	<BR> return &quot;電影&quot;;
	<BR> default:
	<BR> return &quot;&quot;;
	<BR> }
	<BR> }%&gt;
	<BR>
	<BR>
	<BR>&lt;body&gt;
	<BR> &lt;div class=&quot;title&quot;&gt;TagLib 接收端&lt;/div&gt;
	<BR> &lt;span
	class=&quot;functiontitle&quot;&gt;來自第一頁的資料：&lt;/span&gt;
	<BR> &lt;BR&gt; 您於上一頁輸入的資料如下：
	<BR>
	&lt;BR&gt;帳號：&lt;%=request.getParameter(&quot;user&quot;)%&gt;
	<BR>
	&lt;BR&gt;密碼：&lt;%=request.getParameter(&quot;password&quot;)%&gt;
	<BR>
	&lt;BR&gt;性別：&lt;%=(request.getParameter(&quot;gender&quot;).equals(&quot;1&quot;))
	? &quot;男生&quot; : &quot;女生&quot;%&gt;
	<BR>
	&lt;BR&gt;興趣：&lt;%=getInterestResult(request.getParameterValues(&quot;interest&quot;))%&gt;
	<BR>
	&lt;BR&gt;備忘：&lt;%=request.getParameter(&quot;memo&quot;)%&gt;
	<BR> &lt;BR&gt;
	<BR>&lt;/body&gt;
	<BR>
	<BR>

</body>
</html>