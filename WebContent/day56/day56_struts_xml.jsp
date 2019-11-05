<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>struts.xml</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 700px;
}
</style>
</head>
<body>
	<div class="title">至第五堂課下課前的struts.xml</div>
	<BR>※註：此檔案必須放置於src資料夾內，供struts套件搜尋。
	<HR>
	&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
	<BR>&lt;!DOCTYPE struts PUBLIC
	<BR>&quot;-//Apache software fundation//dtd strts configuration
	2.5//en&quot;
	<BR>&quot;http://struts.apache.org/dtds/struts-2.5.dtd&quot;&gt;
	<BR>&lt;struts&gt;
	<BR> &lt;package name=&quot;default&quot;
	extends=&quot;struts-default&quot;&gt;
	<BR> &lt;action name=&quot;day34login&quot;
	<BR> class=&quot;day34.Controller.day34LoginAction&quot;&gt;
	<BR> &lt;!-- 注意，起始處為呼叫端在同一資料夾下的路徑！ --&gt;
	<BR> &lt;result
	name=&quot;LoginSuccess&quot;&gt;day34ex1_welcom.jsp&lt;/result&gt;
	<BR> &lt;result
	name=&quot;LoginFail&quot;&gt;day34ex1_error_password.jsp&lt;/result&gt;
	<BR> &lt;result
	name=&quot;NeedSignUp&quot;&gt;day34ex1_add.jsp&lt;/result&gt;
	<BR> &lt;!-- 以下為使用系統內建值 --&gt;
	<BR> &lt;!--&lt;result
	name=&quot;success&quot;&gt;day34ex1_welcom.jsp&lt;/result&gt; --&gt;
	<BR> &lt;!--&lt;result
	name=&quot;error&quot;&gt;day34ex1_error.jsp&lt;/result&gt; --&gt;
	<BR> &lt;/action&gt;
	<font color=red>
	<BR> &lt;action name=&quot;day56login&quot;
	<BR> class=&quot;day34.Controller.day34LoginAction&quot;&gt;
	<BR> &lt;!-- 注意，起始處為呼叫端在同一資料夾下的路徑！ --&gt;
	<BR> &lt;result
	name=&quot;LoginSuccess&quot;&gt;day34/member/day34ex1_welcom.jsp&lt;/result&gt;
	<BR> &lt;result
	name=&quot;LoginFail&quot;&gt;day34/member/day34ex1_error_password.jsp&lt;/result&gt;
	<BR> &lt;result
	name=&quot;NeedSignUp&quot;&gt;day34/member/day34ex1_error_password.jsp&lt;/result&gt;
	<BR> &lt;/action&gt;
	</font>
	<BR> &lt;action name=&quot;day34add&quot;
	class=&quot;day34.Controller.day34AddAction&quot;&gt;
	<BR> &lt;!-- 注意，為呼叫端在同一資料夾下的路徑！ --&gt;
	<BR> &lt;result
	name=&quot;AddSuccess&quot;&gt;day34ex1_login.jsp&lt;/result&gt;
	<BR> &lt;result
	name=&quot;JDBCFail&quot;&gt;day34ex1_error_jdbc.jsp&lt;/result&gt;
	<BR> &lt;result
	name=&quot;HaveRepeat&quot;&gt;day34ex1_error_repeat.jsp&lt;/result&gt;
	<BR> &lt;result
	name=&quot;EnterNull&quot;&gt;day34ex1_error_enternull.jsp&lt;/result&gt;
	<BR> &lt;/action&gt;
	<BR> &lt;/package&gt;
	<BR>&lt;/struts&gt;
	<BR>
	<BR>
	<BR>
	<BR>



</body>
</html>