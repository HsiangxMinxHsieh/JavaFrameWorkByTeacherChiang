<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="day11_16_combine.model.member"%>
<%@page import="day11_16_combine.model.porder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>購物頁面</title>
<link rel=stylesheet type="text/css" href="../css/st1.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<%
	member m = (member) session.getAttribute("M");
	try {
		m.getName();
	} catch (NullPointerException e) {
		//response.sendRedirect("../member/day11_16ex1_login.jsp");
		request.getRequestDispatcher("../porder/day11_16ex1_needlogin.jsp").forward(request, response);
	}
	porder p = (porder) session.getAttribute("P");
%>
<script LANGUAGE="javascript">
	function check() {
		if (document.menu.product1.value == 0
				&& document.menu.product2.value == 0
				&& document.menu.product3.value == 0) {
			alert("請至少選取一種類別以購買。");

			return false;
		}
		return true;
	}
	function resetSel() {
		//歸零第一個選單
		var options1 = document.querySelectorAll('#select1 option');
		for (var i = 1, l = options1.length; i < l; i++) {
			options1[i].selected = false;
		}

		//歸零第二個選單
		var options2 = document.querySelectorAll('#select2 option');
		for (var i = 1, l = options2.length; i < l; i++) {
			options2[i].selected = false;
		}

		//歸零第三個選單
		var options3 = document.querySelectorAll('#select3 option');
		for (var i = 1, l = options3.length; i < l; i++) {
			options3[i].selected = false;
		}
		return true;
	}
</script>
<body>

	<div class="header">
		<table width="70%" align="center" border=0>
			<tr>
				<td align="center" valign="center"><jsp:include
						page="../title.jsp"></jsp:include>
		</table>
	</div>
	<div class="sidebar">
		<table width="100%" align="center" border=0>
			<tr>
				<td align="center" valign="center"><a
					href="../member/day11_16ex1_welcom.jsp">會員中心</a>
			<tr>
				<td align="center" valign="center"><a
					href="../porder/day11_16ex5_order.jsp">購物頁面</a>
			<tr>
				<td align="center" valign="center"><a
					href="../member/day11_16ex1_edit.jsp">修改資料</a>
			<tr>
				<td align="center" valign="center"><a
					href="../porder/day11_16ex1_query_order.jsp">查修訂單</a>
			<tr>
				<td align="center" valign="center"><a
					href="../member/day11_16ex1_logout.jsp">我要登出</a>
		</table>
	</div>
	<div class="main">
		<div style="margin: auto; vertical-align: middle">
		<!-- main TOP -->
			<table align=center border=0>
				<tr>
					<td><s:form action="day11_16ex5_confirm.jsp" name="menu">
							<tr>
								<td colspan=3>親愛的<font color="blue"><%=m.getName()%></font>，以下是您的可購清單
									<HR>
							<tr>
							<tr valign="top">
								<td width=33%><img src="./img/pro1.png" width=300>
									<div valign="bottom">
										文具類 價格：150元 <BR> 數量： <select name="product1" id="select1">
											<option value="0">0</option>
											<option value="1"
												<%=(p != null && p.getPro1() == 1) ? "selected" : ""%>>1</option>
											<option value="2"
												<%=(p != null && p.getPro1() == 2) ? "selected" : ""%>>2</option>
											<option value="3"
												<%=(p != null && p.getPro1() == 3) ? "selected" : ""%>>3</option>
											<option value="4"
												<%=(p != null && p.getPro1() == 4) ? "selected" : ""%>>4</option>
											<option value="5"
												<%=(p != null && p.getPro1() == 5) ? "selected" : ""%>>5</option>
											<option value="6"
												<%=(p != null && p.getPro1() == 6) ? "selected" : ""%>>6</option>
											<option value="7"
												<%=(p != null && p.getPro1() == 7) ? "selected" : ""%>>7</option>
											<option value="8"
												<%=(p != null && p.getPro1() == 8) ? "selected" : ""%>>8</option>
											<option value="9"
												<%=(p != null && p.getPro1() == 9) ? "selected" : ""%>>9</option>
										</select>
									</div>
								<td width=33%><img src="./img/pro2.png" width=300>
									<div valign="bottom">
										玩具類 價格：300元 <BR> 數量： <select name="product2" id="select2">
											<option value="0">0</option>
											<option value="1"
												<%=(p != null && p.getPro2() == 1) ? "selected" : ""%>>1</option>
											<option value="2"
												<%=(p != null && p.getPro2() == 2) ? "selected" : ""%>>2</option>
											<option value="3"
												<%=(p != null && p.getPro2() == 3) ? "selected" : ""%>>3</option>
											<option value="4"
												<%=(p != null && p.getPro2() == 4) ? "selected" : ""%>>4</option>
											<option value="5"
												<%=(p != null && p.getPro2() == 5) ? "selected" : ""%>>5</option>
											<option value="6"
												<%=(p != null && p.getPro2() == 6) ? "selected" : ""%>>6</option>
											<option value="7"
												<%=(p != null && p.getPro2() == 7) ? "selected" : ""%>>7</option>
											<option value="8"
												<%=(p != null && p.getPro2() == 8) ? "selected" : ""%>>8</option>
											<option value="9"
												<%=(p != null && p.getPro2() == 9) ? "selected" : ""%>>9</option>
										</select>
									</div>
								<td width=33%><img src="./img/pro3.png" width=300>
									<div valign="bottom">
										書籍類 價格：500元 <BR> 數量： <select name="product3" id="select3">
											<option value="0">0</option>
											<option value="1"
												<%=(p != null && p.getPro3() == 1) ? "selected" : ""%>>1</option>
											<option value="2"
												<%=(p != null && p.getPro3() == 2) ? "selected" : ""%>>2</option>
											<option value="3"
												<%=(p != null && p.getPro3() == 3) ? "selected" : ""%>>3</option>
											<option value="4"
												<%=(p != null && p.getPro3() == 4) ? "selected" : ""%>>4</option>
											<option value="5"
												<%=(p != null && p.getPro3() == 5) ? "selected" : ""%>>5</option>
											<option value="6"
												<%=(p != null && p.getPro3() == 6) ? "selected" : ""%>>6</option>
											<option value="7"
												<%=(p != null && p.getPro3() == 7) ? "selected" : ""%>>7</option>
											<option value="8"
												<%=(p != null && p.getPro3() == 8) ? "selected" : ""%>>8</option>
											<option value="9"
												<%=(p != null && p.getPro3() == 9) ? "selected" : ""%>>9</option>
										</select>
									</div>
							<tr>
								<td colspan=3 align=center><input type="submit"
									value="確定送出" onclick="return check()"> <input
									type="button" value="重新選擇" onclick="return resetSel()">
							<tr>
								<td>
						</s:form>
			</table>
			<!-- main END -->
		</div>
	</div>
	<div class="footer">
		<table width="100%" align="center" border=0>
			<tr>
				<td align="center" valign="center"><jsp:include
						page="../end.jsp"></jsp:include>
		</table>
	</div>
	<!-- END -->



</body>
</html>