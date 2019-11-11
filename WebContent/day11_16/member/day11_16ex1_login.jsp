<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>尺筆訂單會員登入頁面</title>
<link rel=stylesheet type="text/css" href="../../css/class.css">
<link rel=stylesheet type="text/css" href="./css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<%session.setAttribute("M", null); %>
<body>
	<table width=600 align=center border=1>
		<tr>
			<td height=150 align=center><jsp:include page="../title.jsp" />
		<tr>
			<td height=300　 valign=top>
				<form action="day11_16Login" method="post">
					<table align=center>
						<tr>
							<td colspan=2>登入頁面
						<tr>
							<td>帳號：<input type="text" name="user"> <BR>
						<tr>
							<td>密碼：<input type="password" name="password"> <BR>
						<tr>
							<td colspan=2>
								<button>確定送出</button>
					</table>
				</form>
		<tr>
			<td height=100 align=right><jsp:include page="../end.jsp" />
	</table>
	<HR>
	<span class="functiontitle">day34LoginAction程式碼：</span>
	<BR> package day34.Controller;
	<BR>
	<BR>import java.sql.ResultSet;
	<BR>
	<BR>import com.opensymphony.xwork2.ActionSupport;
	<BR>
	<BR>import day34.Dao.daoIm.MemberDao;
	<BR>
	<BR>public class day34LoginAction extends ActionSupport {
	<BR>
	<BR> private static final long serialVersionUID = 1L;
	<BR>
	<BR> private String user;
	<BR> private String password;
	<BR>
	<BR> public String getUser() {
	<BR> return user;
	<BR> }
	<BR>
	<BR> public void setUser(String user) {
	<BR> this.user = user;
	<BR> }
	<BR>
	<BR> public String getPassword() {
	<BR> return password;
	<BR> }
	<BR>
	<BR> public void setPassword(String password) {
	<BR> this.password = password;
	<BR> }
	<BR>
	<BR> public String execute() throws Exception {
	<BR> //老師寫法：只比對帳號是否是「abc」與密碼是否是「1234」
	<BR>// if(getUser().equals("abc") && getPassword().equals("1234"))
	<BR>// {
	<BR>// return SUCCESS;
	<BR>// }
	<BR>// else
	<BR>// {
	<BR>// return ERROR;
	<BR>// }
	<BR>
	<BR> //蝦米寫法：比對資料庫中已儲存的資料
	<BR> ResultSet rs = new MemberDao().queryAll();
	<BR> while (rs.next()) {
	<BR> if (rs.getString("user").equals(getUser()) &&
	rs.getString("password").equals(getPassword()))
	<BR>// return SUCCESS;//系統內建值
	<BR> return "LoginSuccess";
	<BR> }
	<BR>// return ERROR;//系統內建值
	<BR> return "LoginFail";
	<BR> }
	<BR>}
	<BR>
	<BR>


	<HR>
	<span class="functiontitle">struts.xml程式碼：</span>
	<BR>&lt;?xml version=&quot;1.0&quot;
	encoding=&quot;UTF-8&quot;?&gt;
	<BR>&lt;!DOCTYPE struts PUBLIC
	<BR>&quot;-//Apache software fundation//dtd strts configuration
	2.5//en&quot;
	<BR>&quot;http://struts.apache.org/dtds/struts-2.5.dtd&quot;&gt;
	<BR>&lt;struts&gt;
	<BR> &lt;package name=&quot;default&quot;
	extends=&quot;struts-default&quot;&gt;
	<BR> &lt;action name=&quot;day34login&quot;
	<BR> class=&quot;day34.Controller.day34LoginAction&quot;&gt;
	<BR> &lt;!-- 注意，為呼叫端在同一資料夾下的路徑！ --&gt;
	<BR> &lt;result
	name=&quot;LoginSuccess&quot;&gt;day34ex1_welcom.jsp&lt;/result&gt;
	<BR> &lt;result
	name=&quot;LoginFail&quot;&gt;day34ex1_error.jsp&lt;/result&gt;
	<BR> &lt;!-- 以下為使用系統內建值 --&gt;
	<BR> &lt;!--&lt;result
	name=&quot;success&quot;&gt;day34ex1_welcom.jsp&lt;/result&gt;--&gt;
	<BR> &lt;!--&lt;result
	name=&quot;error&quot;&gt;day34ex1_error.jsp&lt;/result&gt;--&gt;
	<BR> &lt;/action&gt;
	<BR> &lt;/package&gt;
	<BR>&lt;/struts&gt;
	<BR>
	<BR>

	<HR>
	<span class="functiontitle">本頁表單內容：</span> &lt;table width=600
	align=center border=1&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td height=150 align=center&gt;&lt;jsp:include
	page=&quot;../head.jsp&quot; /&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td height=300 valign=top&gt;
	<BR> &lt;form action=&quot;day34login&quot;
	method=&quot;post&quot;&gt;
	<BR> &lt;table align=center&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td colspan=2&gt;登入頁面
	<BR> &lt;tr&gt;
	<BR> &lt;td&gt;帳號：&lt;input type=&quot;text&quot;
	name=&quot;user&quot;&gt; &lt;BR&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td&gt;密碼：&lt;input type=&quot;password&quot;
	name=&quot;password&quot;&gt; &lt;BR&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td colspan=2&gt;
	<BR> &lt;button&gt;確定送出&lt;/button&gt;
	<BR> &lt;/table&gt;
	<BR> &lt;/form&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td height=100 align=right&gt;&lt;jsp:include
	page=&quot;../end.jsp&quot; /&gt;
	<BR> &lt;/table&gt;
	<BR>
	<BR>




</body>
</html>