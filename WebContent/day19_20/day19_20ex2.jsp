<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vue JS使用範例</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<link rel=stylesheet type="text/css" href="./css/style.css">

<style type="text/css">
.title {
	width: 500px;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="./js/main.js"></script>
</head>
<body onload="initial()">
	<div class="title">Vue JS使用範例</div>
	<h1>這是用來測試CSS是否已載入的文字</h1>
	<HR>
	<span class="functiontitle">※利用data來直接顯示輸入值：</span>
	<BR>
	<p id="msg">{{ message }}</p>
	<p class="msg2">{{ message2 }}</p>
	<HR>
	<span class="functiontitle">此網頁內容：</span>
	<BR>
	<BR>&lt;%@ page language=&quot;java&quot;
	contentType=&quot;text/html; charset=UTF-8&quot;
	<BR> pageEncoding=&quot;UTF-8&quot;%&gt;
	<BR> &lt;!DOCTYPE html&gt;
	<BR> &lt;html&gt;
	<BR> &lt;head&gt;
	<BR> &lt;meta charset=&quot;UTF-8&quot;&gt;
	<BR> &lt;title&gt;Vue JS使用範例&lt;/title&gt;
	<BR> &lt;link rel=stylesheet type=&quot;text/css&quot;
	href=&quot;../css/class.css&quot;&gt;
	<font color=red> <BR> &lt;link rel=stylesheet
		type=&quot;text/css&quot; href=&quot;./css/style.css&quot;&gt;
	</font>
	<BR>
	<BR> &lt;style type=&quot;text/css&quot;&gt;
	<BR> .title {
	<BR> width: 500px;
	<BR> }
	<BR> &lt;/style&gt;
	<font color=red> <BR> &lt;script
		src=&quot;https://cdn.jsdelivr.net/npm/vue/dist/vue.js&quot;&gt;&lt;/script&gt;
		<BR> &lt;script src=&quot;./js/main.js&quot;&gt;&lt;/script&gt;
	</font>
	<BR> &lt;/head&gt;
	<BR> &lt;body
	<font color=red> onload=&quot;initial()&quot;</font>&gt;
	<BR> &lt;div class=&quot;title&quot;&gt;Vue JS使用範例&lt;/div&gt;
	<BR> &lt;h1&gt;這是用來測試CSS是否已載入的文字&lt;/h1&gt;
	<BR> &lt;HR&gt;
	<BR> &lt;span
	class=&quot;functiontitle&quot;&gt;※利用data來直接顯示輸入值：&lt;/span&gt;
	<BR> &lt;BR&gt;
	<font color=red> <BR> &lt;p id=&quot;msg&quot;&gt;{{
		message }}&lt;/p&gt; <BR> &lt;p class=&quot;msg2&quot;&gt;{{
		message2 }}&lt;/p&gt;
	</font>
	<BR> &lt;HR&gt;
	<BR> &lt;/body&gt;
	<BR> &lt;/html&gt;
	<BR>
	<HR>
	<span class="functiontitle">css內容：</span>
	<BR> @charset &quot;UTF-8&quot;;
	<BR> body {
	<BR> color: #999;
	<BR> padding: 5px 16px;
	<BR> font-size: 14pt;
	<BR> line-height: 150%;
	<BR> }
	<BR> h1 {
	<BR> font-size: 24pt;
	<BR> }
	<BR> p {
	<BR> font-size: 18pt;
	<BR> }
	<BR>
	<BR>


	<HR>
	<span class="functiontitle">main.js內容：</span>
	<BR> function initial() {
	<BR>
	<BR> new Vue({
	<BR> el : '#msg',
	<BR> data : {
	<BR> message : 'this is Vue.js sample!吼黑哈',
	<BR> }
	<BR> })
	<BR> new Vue({
	<BR> el : '.msg2',
	<BR> data : {
	<BR> message2 : '巨匠電腦!吼黑哈'
	<BR> }
	<BR> })
	<BR> }
	<BR>
	<BR>


</body>
</html>