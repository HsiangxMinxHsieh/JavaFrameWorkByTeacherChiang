<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vue JS使用範例2</title>
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
<body onload="initial2()">
	<div class="title">Vue JS使用範例2</div>
	<h1>這是用來測試CSS是否已載入的文字</h1>
	<div id="msg">
		<p v-html="message"></p>
		<input type="text" v-model="text1"> <input type="button"
			v-on:click="doAction" value="click">
	</div>
	<HR>
	<span class="functiontitle">此網頁內容：</span>
	<BR>&lt;%@ page language=&quot;java&quot;
	contentType=&quot;text/html; charset=UTF-8&quot;
	<BR> pageEncoding=&quot;UTF-8&quot;%&gt;
	<BR> &lt;!DOCTYPE html&gt;
	<BR> &lt;html&gt;
	<BR> &lt;head&gt;
	<BR> &lt;meta charset=&quot;UTF-8&quot;&gt;
	<BR> &lt;title&gt;Vue JS使用範例2&lt;/title&gt;
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
	<BR> &lt;body<font color=red> onload=&quot;initial2()&quot;</font>&gt;
	<BR> &lt;div class=&quot;title&quot;&gt;Vue JS使用範例2&lt;/div&gt;
	<BR> &lt;h1&gt;這是用來測試CSS是否已載入的文字&lt;/h1&gt;<font color = red>
	<BR> &lt;div id=&quot;msg&quot;&gt;
	<BR> &lt;p v-html=&quot;message&quot;&gt;&lt;/p&gt;
	<BR> &lt;input type=&quot;text&quot; v-model=&quot;text1&quot;&gt;
	&lt;input type=&quot;button&quot;
	<BR> v-on:click=&quot;doAction&quot; value=&quot;click&quot;&gt;
	<BR> &lt;/div&gt;</font>
	<BR> &lt;HR&gt;
	<BR> &lt;/body&gt;
	<BR> &lt;/html&gt;
	<BR>
	<BR>
	<HR>
	<span class="functiontitle">main.js內容：</span>
	<BR>
	<BR> function initial2() {
	<BR>
	<BR> new Vue({
	<BR> el : &#x27;#msg&#x27;,
	<BR> data : {
	<BR> message : &#x27;輸入文字以改變此處值。&#x27;,
	<BR> },
	<BR> methods : {
	<BR> doAction : function() {
	<BR> var str = this.text1;
	<BR> this.message = &#x27;你輸入了：&lt;font color=&quot;red&quot;
	size=&quot;10&quot;&gt;&#x27; + str + &#x27;&lt;/font&gt;.&#x27;;
	<BR> }
	<BR> }
	<BR>
	<BR> })
	<BR> }
	<BR>
	<BR>
	<BR>





</body>
</html>