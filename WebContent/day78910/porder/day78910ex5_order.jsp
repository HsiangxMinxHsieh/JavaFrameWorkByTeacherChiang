<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>購物頁面</title>
<link rel=stylesheet type="text/css" href="../../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">購物頁面</div>
	<table width=600 align=center border=1>
		<tr>
			<td height=150><jsp:include page="../title.jsp" />
		<tr>
			<td height=300 valign=top><table align=center border=0>
					<tr>
						<td><s:form action="day78910ex5_confirm.jsp">
								<tr>
									<td><s:textfield name="ruler" label="尺數量" /> <tr>
									<td>
								<s:textfield
											name="pen" label="筆數量" /> <tr>
									<td>
								<s:submit value="完成送出" /><tr>
									<td>
							</s:form>
				</table>
		<tr>
			<td height=100 align=center><jsp:include page="../end.jsp" />
	</table>
	<HR>
	<span class="functiontitle">程式碼：</span>
	<BR>
	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR>


</body>
</html>