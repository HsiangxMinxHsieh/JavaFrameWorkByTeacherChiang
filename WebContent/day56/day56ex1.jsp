<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TagLib 簡介</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">TagLib 簡單使用與範例</div>
	<span class="functiontitle">JSTL使用範例：</span>
	<BR>
	<c:out value="Yes!!!123" />
	<BR>
	<span class="functiontitle">JSTL語法原始碼：</span>
	<BR>&lt;c:out value=&quot;Yes!!!123&quot; /&gt;
	<BR>
	<span class="functiontitle">注意事項：</span>
	<BR> 1.JSTL使用前需於WEB-INF/lib內載入
	taglibs-standard-impl-1.2.5.jar與taglibs-standard-spec-1.2.5.jar
	<BR>(此二檔案在apache-tomcat-8.5.46\webapps\examples\WEB-INF\lib就有。)
	<BR> 2.須於標頭檔處輸入：&lt;%@ taglib prefix=&quot;c&quot;
	uri=&quot;http://java.sun.com/jsp/jstl/core&quot;%&gt;
	<HR>
	<span class="functiontitle">Struts Tag使用範例：</span>
	<BR>
	<BR>以下程式碼至資料庫查詢頁面：
	<BR>
	<s:form action="../day56login">
		<s:textfield name="user" label="帳號：" />
		<s:password name="password" label="密碼：" />
		<s:submit value="完成送出" />
		<s:reset value="打錯重置" />
	</s:form>
	<BR>以下程式碼至結果查詢頁面：
	<BR>
	<s:form action="day56ex2.jsp">
		<s:textfield name="user" label="帳號：" />
		<s:password name="password" label="密碼：" />
		<s:radio list="#{1:'男',2:'女'}" name="gender" label="性別："
			required="true" value="1" />
		<s:checkboxlist list="#{1:'運動',2:'閱讀',3:'電影'}" name="interest"
			label="興趣：" />
		<s:textarea name="memo" label="備忘：" cols="21" rows="10" />
		<s:submit value="完成送出" />
		<s:reset value="打錯重置" />
	</s:form>

	<BR>
	<span class="functiontitle">Struts Tag語法原始碼：</span>
	<BR>以下程式碼至資料庫查詢頁面：
	<BR>&lt;s:form action=&quot;../day56login&quot;&gt;
	<BR> &lt;s:textfield name=&quot;user&quot; label=&quot;帳號：&quot;
	/&gt;
	<BR> &lt;s:password name=&quot;password&quot;
	label=&quot;密碼：&quot; /&gt;
	<BR> &lt;s:submit value=&quot;完成送出&quot; /&gt;
	<BR> &lt;s:reset value=&quot;打錯重置&quot; /&gt;
	<BR> &lt;/s:form&gt;
	<BR>
	<BR> 以下程式碼至結果查詢頁面：
	<BR> &lt;s:form action=&quot;day56ex2.jsp&quot;&gt;
	<BR> &lt;s:textfield name=&quot;user&quot; label=&quot;帳號：&quot;
	/&gt;
	<BR> &lt;s:password name=&quot;password&quot;
	label=&quot;密碼：&quot; /&gt;
	<BR> &lt;s:radio
	list=&quot;#&#123;1:&#x27;男&#x27;,2:&#x27;女&#x27;&#125;&quot;
	name=&quot;gender&quot; label=&quot;性別：&quot;
	<BR> required=&quot;true&quot; value=&quot;1&quot; /&gt;
	<BR> &lt;s:checkboxlist
	list=&quot;#&#123;1:&#x27;運動&#x27;,2:&#x27;閱讀&#x27;,3:&#x27;電影&#x27;&#125;&quot;
	name=&quot;interest&quot; label=&quot;興趣：&quot;/&gt;
	<BR> &lt;s:textarea name=&quot;memo&quot; label=&quot;備忘：&quot;
	cols=&quot;21&quot; rows=&quot;10&quot; /&gt;
	<BR> &lt;s:submit value=&quot;完成送出&quot; /&gt;
	<BR> &lt;s:reset value=&quot;打錯重置&quot; /&gt;
	<BR> &lt;/s:form&gt;
	<BR>
	<BR>



</body>
</html>