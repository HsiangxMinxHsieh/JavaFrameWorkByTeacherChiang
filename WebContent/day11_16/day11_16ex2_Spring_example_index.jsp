<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring範例</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">Spring範例輸入</div>
	<form action="../day11_16test2.servlet" method="post">
		名字：<input type="text" name="name" /><BR> 國文：<input type="number"
			name="chi" /><BR>
		<button>送出</button>
	</form>
	<HR>
	<span class="functiontitle">day11_16test2程式碼：</span>
	<BR>package day11_16.controller;
	<BR>
	<BR>import java.io.IOException;
	<BR>import javax.servlet.ServletException;
	<BR>import javax.servlet.annotation.WebServlet;
	<BR>import javax.servlet.http.HttpServlet;
	<BR>import javax.servlet.http.HttpServletRequest;
	<BR>import javax.servlet.http.HttpServletResponse;
	<BR>import javax.servlet.http.HttpSession;
	<BR>
	<BR>import org.springframework.context.ApplicationContext;
	<BR>import
	org.springframework.context.support.ClassPathXmlApplicationContext;
	<BR>
	<BR>import day11_16.model.Pro1;
	<BR>
	<BR>
	<BR>@WebServlet("/day11_16test2")
	<BR>public class day11_16test2 extends HttpServlet {
	<BR> private static final long serialVersionUID = 1L;
	<BR>
	<BR>
	<BR> public day11_16test2() {
	<BR> super();
	<BR> // TODO Auto-generated constructor stub
	<BR> }
	<BR>
	<BR> protected void doPost(HttpServletRequest request,
	HttpServletResponse response) throws ServletException, IOException {
	<BR> // TODO Auto-generated method stub
	<BR> ApplicationContext a1 = new
	ClassPathXmlApplicationContext("sp1.xml");
	<BR> Pro1 p1 = (Pro1)a1.getBean("p1"); //
	不使用new，而使用由sp1.xml中定義的p1定義檔
	<BR> String NAME = request.getParameter("name");
	<BR> int CHI = Integer.parseInt(request.getParameter("chi"));
	<BR> p1.getA().setName(NAME);
	<BR> p1.getA().setChi(CHI);
	<BR> HttpSession s = request.getSession();
	<BR> s.setAttribute("A",p1.getA());
	<BR>
	response.sendRedirect("day11_16/day11_16ex2_Spring_example_OK.jsp");
	<BR> }
	<BR>}
	<BR>

	<HR>
	<span class="functiontitle">表單內容：</span>
	<BR>
	<BR> &lt;form action=&quot;../day11_16test2.servlet&quot;
	method=&quot;post&quot;&gt;
	<BR> 名字：&lt;input type=&quot;text&quot; name=&quot;name&quot;
	/&gt;&lt;BR&gt; 國文：&lt;input type=&quot;number&quot;
	<BR> name=&quot;chi&quot; /&gt;&lt;BR&gt;
	<BR> &lt;button&gt;送出&lt;/button&gt;
	<BR> &lt;/form&gt;
	<BR>
	<BR>



</body>
</html>