<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="day11_16_combine.model.member"%>
<%@page import="day11_16_combine.dao.porder.porderDao"%>
<%@page import="day11_16_combine.model.porder"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員訂單查詢與修改</title>
<link rel=stylesheet type="text/css" href="../../css/class.css">
<link rel=stylesheet type="text/css" href="./css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	function check() {
		var txtName = document.getElementById("txtname");
		var txtUser = document.getElementById("txtuser");
		var txtPassword = document.getElementById("txtpassword");
		if (txtName.value.length == 0) {
			alert("請輸入姓名。");
			return false;
		}
		if (txtUser.value.length == 0) {
			alert("請輸入帳號。");
			return false;
		}
		if (txtPassword.value.length == 0) {
			alert("請輸入密碼。");
			return false;
		}
		$("input").prop("disabled", false);
		return true;
	}
</script>
<%
	member m = (member) session.getAttribute("M");
	try {
		m.getName();
	} catch (NullPointerException e) {
		//response.sendRedirect("../member/day11_16ex1_login.jsp");
		request.getRequestDispatcher("../porder/day11_16ex1_needlogin.jsp").forward(request, response);
	}
	//這裡要判斷是從哪裡來的，並執行動作：
	//如果是從其他頁來的，不做任何動作。
	String strID = request.getParameter("ID");
	porder p = (porder) session.getAttribute("GP");
	//如果從只有ID來的，要接收其ID欄位，並填入資料	
	if (strID != null) {
		Integer ID = Integer.parseInt(strID);
		
			
		session.setAttribute("GP", p);
	} else if(p!= null){
		
		
	}
	try {

	} catch (Exception e) {

	}

	//如果是從有其他資訊(名字)來的，則將其寫入資料庫後，將GP設為null。
%>

<body>

	<table width=600 align=center border=1>
		<tr>
			<td height=150 align=center><jsp:include page="../title.jsp" />
		<tr>
			<td height=300　 valign=top>

				<table align=center>
					<tr>
						<td colspan=2>會員訂單查詢與修改
					<tr>
						<td colspan=2>請於下方輸入訂單ID後按下送出，編輯完成後再次按下送出即可完成編輯。
							<form action="day11_16ex1_query_order.jsp" method="post">
								<table width=460 align="center" border=1>
									<tr bgcolor="LightSkyBlue">
										<td width=30>ID
										<td width=100>名稱
										<td width=60>文具類
										<td width=60>玩具類
										<td width=60>書籍類
										<td width=100>總計
									<tr>
										<td><input type="text" name="id" placeHolder="ID" size="1" />
										<td><input type="text" name="name" value="買家姓名" size="3" />
										<td><input type="number" name="id" placeHolder="Pro1數量"
											size="3" value="0"/>
										<td><input type="number" name="id" placeHolder="Pro2數量"
											size="3" value="0"/>
										<td><input type="number" name="id" placeHolder="Pro3數量"
											size="3" value="0"/>
										<td><input type="number" name="id" placeHolder="總計數量"
											size="5" value="0"/>
									<tr>
										<td colspan=6><input type="SUBMIT" value="送出查詢">
								</table>
							</form> <BR>以下為<font color="blue"><%=m.getName()%></font> 您的所有訂單：<BR>
							<%
								List<porder> dataList = new porderDao().queryByUserAndJudgeIsAdmin(m.getName());
								out.println("<table width=460 align=center border=1>");
								out.println(
										"<tr bgcolor=\"LightSkyBlue\"><td width=30 >ID<td width=100 >名稱<td width=60 >文具類<td width=60 >玩具類<td width=60 >書籍類<td width=100 >總計");

								//迴圈印出資料庫內資料 
								for (porder data : dataList) {
									out.println("<tr>");
									out.println("<td>" + data.getId());
									out.println("<td>" + data.getName());
									out.println("<td>" + data.getPro1());
									out.println("<td>" + data.getPro2());
									out.println("<td>" + data.getPro3());
									out.println("<td>" + data.getSum());
								}

								out.println("</table>");
							%>
						
					<tr>
						<td colspan=2><input type="button" value="回到會員中心"
							onclick="javascript:location.href='../member/day11_16ex1_welcom.jsp'">
				</table>
		<tr>
			<td height=100 align=right><jsp:include page="../end.jsp" />
	</table>

	<HR>
	<span class="functiontitle">day34AddAction程式碼：</span>
	<BR> package day34.Controller;
	<BR>
	<BR>import java.io.IOException;
	<BR>
	<BR>import com.opensymphony.xwork2.ActionSupport;
	<BR>
	<BR>import day34.Dao.daoIm.MemberDao;
	<BR>import day34.Model.member;
	<BR>
	<BR>public class day34AddAction extends ActionSupport {
	<BR> private static final long serialVersionUID = 1L;
	<BR>
	<BR> private String name;
	<BR> private String user;
	<BR> private String password;
	<BR>
	<BR> public String getName() {
	<BR> return name;
	<BR> }
	<BR>
	<BR> public void setName(String name) {
	<BR> this.name = name;
	<BR> }
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
	<BR> String NAME = getName();
	<BR> String USER = getUser();
	<BR> String PASSWORD = getPassword();
	<BR> member m1 = new member(getName(), USER, PASSWORD);
	<BR> int result = new MemberDao().checkBeforeAdd(m1);
	<BR>// System.out.println("收到的NAME是===>"+NAME);
	<BR> // 依照結果導入不同頁面：
	<BR> /** 成功回傳1，失敗回傳0，已有重複回傳-1，輸入空值回傳-2 */
	<BR> switch (result) {
	<BR> case 1: // 成功
	<BR> return "AddSuccess";
	<BR> case 0: // 因為JDBC導致的失敗
	<BR> return "JDBCFail";
	<BR> case -1: // 已有重複
	<BR> return "HaveRepeat";
	<BR> case -2:// 輸入空值
	<BR> return "EnterNull";
	<BR> default:
	<BR> return "";
	<BR> }
	<BR> }
	<BR>}
	<BR>

	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR>
	<BR>&lt;table width=600 align=center border=1&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td height=150 align=center&gt;&lt;jsp:include
	page=&quot;../head.jsp&quot; /&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td height=300 valign=top&gt;
	<BR> &lt;form action=&quot;day34add&quot;
	method=&quot;post&quot;&gt;
	<BR> &lt;table align=center&gt;
	<BR> &lt;tr&gt;
	<BR> &lt;td colspan=2&gt;無此帳號！請新增資料
	<BR> &lt;tr&gt;
	<BR> &lt;td&gt;名字：&lt;input type=&quot;text&quot;
	name=&quot;name&quot;&gt; &lt;BR&gt;
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