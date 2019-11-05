<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>web.xml</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 700px;
}
</style>
</head>
<body>
	<div class="title">至第三堂課下課前的web.xml(蝦米製作，servlet與struts共存版)</div>
	&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
	<BR>&lt;web-app
	xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
	<BR> xmlns=&quot;http://xmlns.jcp.org/xml/ns/javaee&quot;
	<BR> xsi:schemaLocation=&quot;http://xmlns.jcp.org/xml/ns/javaee
	http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd&quot;
	<BR> version=&quot;3.1&quot;&gt;
	<BR> &lt;display-name&gt;JavaFrameWork&lt;/display-name&gt;
	<BR> &lt;welcome-file-list&gt;
	<BR> &lt;welcome-file&gt;index.html&lt;/welcome-file&gt;
	<BR> &lt;welcome-file&gt;index.htm&lt;/welcome-file&gt;
	<BR> &lt;welcome-file&gt;index.jsp&lt;/welcome-file&gt;
	<BR> &lt;welcome-file&gt;default.html&lt;/welcome-file&gt;
	<BR> &lt;welcome-file&gt;default.htm&lt;/welcome-file&gt;
	<BR> &lt;welcome-file&gt;default.jsp&lt;/welcome-file&gt;
	<BR> &lt;/welcome-file-list&gt;
	<BR> &lt;!-- 忘記關鍵字： struts2 web.xml sample 第一個結果。 --&gt;
	<BR> &lt;filter&gt;
	<BR> &lt;filter-name&gt;struts2&lt;/filter-name&gt;
	<BR>
	&lt;filter-class&gt;org.apache.struts2.dispatcher.filter.StrutsPrepareAndExecuteFilter&lt;/filter-class&gt;
	<BR> &lt;/filter&gt;
	<BR>
	<BR> &lt;filter-mapping&gt;
	<BR> &lt;filter-name&gt;struts2&lt;/filter-name&gt;
	<BR> &lt;url-pattern&gt;/*&lt;/url-pattern&gt;
	<BR> &lt;/filter-mapping&gt;
	<BR> &lt;!-- 為了讓servlet與struts2可以共存，必須指定呼叫servlet的位置 --&gt;
	<BR> &lt;servlet&gt;
	<BR> &lt;servlet-name&gt;day12Member&lt;/servlet-name&gt;
	<BR>
	&lt;servlet-class&gt;day12.Controller.MemberAction&lt;/servlet-class&gt;
	<BR> &lt;/servlet&gt;
	<BR> &lt;servlet-mapping&gt;
	<BR> &lt;servlet-name&gt;day12Member&lt;/servlet-name&gt;
	<BR>
	&lt;url-pattern&gt;/day12MemberAction.servlet&lt;/url-pattern&gt;
	<BR> &lt;/servlet-mapping&gt;
	<BR>&lt;/web-app&gt;
	<BR>
	<BR>

</body>
</html>