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
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

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
	String strID = request.getParameter("id");
	porder p = (porder) session.getAttribute("GP");
	Integer ID = -10000;
	Integer nowStatus = 0; //現在的狀態
	//1 ===>修改完成
	//0 ===>一開始進來，什麼都沒有
	//-1 ===> 只有ID，可以取得order
	//-2 ===> 有Porder，要修改資料
	//-3 ===> 這個Order 不是 User所有或沒有這筆訂單，無法修改(要回到0)

	//如果從只有ID來的，要接收其ID欄位，並填入資料	
	try {
		if (p != null) {
			Integer pro1 = Integer.parseInt(request.getParameter("pro1"));
			Integer pro2 = Integer.parseInt(request.getParameter("pro2"));
			Integer pro3 = Integer.parseInt(request.getParameter("pro3"));

			p.setPro1(pro1);
			p.setPro2(pro2);
			p.setPro3(pro3);
			p.getSum();
			new porderDao().updateObject(p.getId(), p);
			session.setAttribute("GP", null);
			nowStatus = 1;
		} else /*if ((strID != null && !strID.equals("")) && p == null) */{
			ID = Integer.parseInt(strID);
			p = new porderDao().getobject(ID);
			if (p == null) {
				//嘗試取得後還是null，代表沒有這筆訂單。
				nowStatus = -3;
			} else if (p.getName().equals(m.getName()) || m.getName().equals("管理者AAABBBCCC")) {
				//out.println("ID是"+strID);
				nowStatus = -1;
				session.setAttribute("GP", p);
			} else {
				nowStatus = -3;
				p = null;
				session.setAttribute("GP", null);
			}
		} 

	} catch (Exception e) {
		//request.getRequestDispatcher("./day11_16ex1_query_order.jsp").forward(request, response);
	}

	//如果是從有其他資訊(名字)來的，則將其寫入資料庫後，將GP設為null。
%>
<script>
	function reset() {
		console.log("要執行reset囉!");
		var txtName = document.getElementById("txtname");
		var txtPro1 = document.getElementById("txtpro1");
		var txtPro2 = document.getElementById("txtpro2");
		var txtPro3 = document.getElementById("txtpro3");
		var txtSum = document.getElementById("txtsum");
		console.log("現在的txtName是===>" + txtName.value);
		txtName.value = "";
		txtPro1.value = "0";
		txtPro2.value = "0";
		txtPro3.value = "0";
		txtSum.value = "0";
		return true;
	}

	function check() {
		var txtName = document.getElementById("txtname");
		var txtPro1 = document.getElementById("txtpro1");
		var txtPro2 = document.getElementById("txtpro2");
		var txtPro3 = document.getElementById("txtpro3");
<%=(p == null) ? "return true;" : ""%>
	if (txtName.value.length == 0) {
			alert("請輸入姓名。");
			return false;
		}
		if (txtPro1.value.length == 0) {
			alert("請輸入文具類的數量(若無則請填0)。");
			return false;
		}
		if (txtPro2.value.length == 0) {
			alert("請輸入玩具類的數量(若無則請填0)。");
			return false;
		}
		if (txtPro3.value.length == 0) {
			alert("請輸入書籍類的數量(若無則請填0)。");
			return false;
		}

		$("input").prop("disabled", false);
		return true;
	}
</script>
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
									<%
										switch (nowStatus) {
										case 1:
											out.println("<tr><td colspan=6> <font color = \"green\">編輯完成。</font>");
											break;
										case -1:
											out.println("<tr><td colspan=6> <font color = \"green\">成功取出您的資料，請於下方編輯。</font>");
											break;
										case -3:
											out.println("<tr><td colspan=6> <font color = \"red\">您所輸入的ID帳單編號不存在或不是您的帳單。</font>");
											break;
										}
									%>
									<tr bgcolor="LightSkyBlue">
										<td width=6%>ID
										<td width=22%>名稱
										<td width=13%>文具類
										<td width=13%>玩具類
										<td width=13%>書籍類
										<td>總計
									<tr>
										<td><input type="number" name="id" placeHolder="ID"
											style="width: 3em" <%=(nowStatus == -1) ? "disabled" : ""%> />
										<td><input type="text" name="name" id="txtname"
											placeHolder="買家姓名" size="10" disabled
											<%=(p != null) ? "value=\"" + p.getName() + "\"" : ""%> />
										<td><input type="number" name="pro1" id="txtpro1"
											placeHolder="Pro1數量"
											<%=(nowStatus == 0 || nowStatus == -3 || nowStatus == 1) ? "disabled" : ""%>
											<%=(p != null) ? "value=\"" + p.getPro1() + "\"" : ""%>
											style="width: 4em" value="0" />
										<td><input type="number" name="pro2" id="txtpro2"
											placeHolder="Pro2數量"
											<%=(nowStatus == 0 || nowStatus == -3 || nowStatus == 1) ? "disabled" : ""%>
											<%=(p != null) ? "value=\"" + p.getPro2() + "\"" : ""%>
											style="width: 4em" value="0" />
										<td><input type="number" name="pro3" id="txtpro3"
											placeHolder="Pro3數量"
											<%=(nowStatus == 0 || nowStatus == -3 || nowStatus == 1) ? "disabled" : ""%>
											<%=(p != null) ? "value=\"" + p.getPro3() + "\"" : ""%>
											style="width: 4em" value="0" />
										<td><input type="number" name="sum" placeHolder="總計數量"
											id="txtsum" disabled
											<%=(p != null) ? "value=\"" + p.getSum() + "\"" : ""%>
											style="width: 7em" value="0" />
									<tr>
										<td colspan=6><input type="SUBMIT" value="送出"
											onClick="return check()">
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