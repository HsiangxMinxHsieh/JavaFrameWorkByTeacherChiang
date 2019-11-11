<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring類別使用範例</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">Spring類別使用範例</div>
	類別使用範例請
	<a href="#classEx">點我</a>：
	<BR> 實際使用範例請
	<a href="#useEx">點我</a>：
	<BR>
	<HR>
	<span class="functiontitle" id="classEx">類別使用範例：</span>
	<BR>
	<BR>//=========================== class A
	===========================
	<BR>
	<BR> package day11_16.model;
	<BR>
	<BR>public class A {
	<BR> private String name;
	<BR> private int chi;
	<BR>
	<BR> public A() {}
	<BR> public A(String name,int chi) {
	<BR> this.name = name;
	<BR> this.chi = chi;
	<BR> }
	<BR>
	<BR> public String getName() {
	<BR> return name;
	<BR> }
	<BR>
	<BR> public void setName(String name) {
	<BR> this.name = name;
	<BR> }
	<BR>
	<BR> public int getChi() {
	<BR> return chi;
	<BR> }
	<BR>
	<BR> public void setChi(int chi) {
	<BR> this.chi = chi;
	<BR> }
	<BR>
	<BR> @Override
	<BR> public String toString() {
	<BR> return "A [name=" + name + ", chi=" + chi + "]";
	<BR> }
	<BR>
	<BR>}
	<BR>
	<BR>//=========================== class B
	===========================
	<BR>
	<BR>package day11_16.model;
	<BR>
	<BR>public class B {
	<BR> private String name;
	<BR> private int eng;
	<BR>
	<BR> public String getName() {
	<BR> return name;
	<BR> }
	<BR>
	<BR> public void setName(String name) {
	<BR> this.name = name;
	<BR> }
	<BR>
	<BR> public int getEng() {
	<BR> return eng;
	<BR> }
	<BR>
	<BR> public void setEng(int eng) {
	<BR> this.eng = eng;
	<BR> }
	<BR>
	<BR> @Override
	<BR> public String toString() {
	<BR> return "B [name=" + name + ", eng=" + eng + "]";
	<BR> }
	<BR>
	<BR>}
	<BR>
	<BR>//=========================== class C
	===========================
	<BR>
	<BR>package day11_16.model;
	<BR>
	<BR>public class C {
	<BR> private String name ;
	<BR> private int math;
	<BR> public String getName() {
	<BR> return name;
	<BR> }
	<BR>
	<BR> public void setName(String name) {
	<BR> this.name = name;
	<BR> }
	<BR>
	<BR> public int getMath() {
	<BR> return math;
	<BR> }
	<BR>
	<BR> public void setMath(int math) {
	<BR> this.math = math;
	<BR> }
	<BR>
	<BR> @Override
	<BR> public String toString() {
	<BR> return &quot;C [name=&quot; + name + &quot;, math=&quot; +
	math + &quot;]&quot;;
	<BR> }
	<BR>
	<BR>
	<BR>}
	<BR>
	<BR>//=========================== class Pro1 (組合式類別)
	===========================
	<BR>
	<BR>package day11_16.model;
	<BR>
	<BR>public class Pro1 {
	<BR> private A a;
	<BR> private B b;
	<BR> public A getA() {
	<BR> return a;
	<BR> }
	<BR> public void setA(A a) {
	<BR> this.a = a;
	<BR> }
	<BR> public B getB() {
	<BR> return b;
	<BR> }
	<BR> public void setB(B b) {
	<BR> this.b = b;
	<BR> }
	<BR> @Override
	<BR> public String toString() {
	<BR> return &quot;Pro1 [a=&quot; + a + &quot;, b=&quot; + b +
	&quot;]&quot;;
	<BR> }
	<BR>
	<BR>}
	<BR>
	<BR>//=========================== class Pro2 (組合式類別)
	===========================
	<BR>
	<BR>package day11_16.model;
	<BR>
	<BR>public class Pro2 {
	<BR> private A a;
	<BR> private B b;
	<BR> private C c;
	<BR> public A getA() {
	<BR> return a;
	<BR> }
	<BR> public void setA(A a) {
	<BR> this.a = a;
	<BR> }
	<BR> public B getB() {
	<BR> return b;
	<BR> }
	<BR> public void setB(B b) {
	<BR> this.b = b;
	<BR> }
	<BR> public C getC() {
	<BR> return c;
	<BR> }
	<BR> public void setC(C c) {
	<BR> this.c = c;
	<BR> }
	<BR> @Override
	<BR> public String toString() {
	<BR> return &quot;Pro2 [a=&quot; + a + &quot;, b=&quot; + b +
	&quot;, c=&quot; + c + &quot;]&quot;;
	<BR> }
	<BR>
	<BR>}
	<BR>
	<BR>//=========================== class Pro3 (List)
	===========================
	<BR>
	<BR>package day11_16.model;
	<BR>
	<BR>import java.util.List;
	<BR>import java.util.Map;
	<BR>
	<BR>/**
	<BR> *
	<BR> * @author Student A4
	<BR> * @version 1.0 &lt;BR&gt;
	<BR> * &lt;BR&gt;
	<BR> * Pro3 規格，用於展示Spring中各個集合的用法。
	<BR> */
	<BR>public class Pro3 {
	<BR> private String Pname;
	<BR> private A a;
	<BR> private List&lt;String&gt; Address;
	<BR> private Map&lt;String, String&gt; Pbook;
	<BR> private String[] Address2;
	<BR>
	<BR> /**
	<BR> *
	<BR> * @return Pname 回傳Pname
	<BR> */
	<BR> public String getPname() {
	<BR> return Pname;
	<BR> }
	<BR>
	<BR> /**
	<BR> *
	<BR> * @param pname 修改Pname&lt;BR&gt;
	<BR> * ex:&lt;BR&gt;
	<BR> * p.setPname(&quot;小粒蝦米不加辣辣&quot;);
	<BR> */
	<BR> public void setPname(String pname) {
	<BR> Pname = pname;
	<BR> }
	<BR>
	<BR> public A getA() {
	<BR> return a;
	<BR> }
	<BR>
	<BR> public void setA(A a) {
	<BR> this.a = a;
	<BR> }
	<BR>
	<BR> /**
	<BR> *
	<BR> * @return Address的List
	<BR> */
	<BR> public List&lt;String&gt; getAddress() {
	<BR> return Address;
	<BR> }
	<BR>
	<BR> /**
	<BR> *
	<BR> * @param address 供Spring修改List。
	<BR> */
	<BR> public void setAddress(List&lt;String&gt; address) {
	<BR> Address = address;
	<BR> }
	<BR> /**
	<BR> *
	<BR> * @return Map回傳
	<BR> */
	<BR> public Map&lt;String, String&gt; getPbook() {
	<BR> return Pbook;
	<BR> }
	<BR> /**
	<BR> *
	<BR> * @param pbook 供Spring修改此Map。
	<BR> */
	<BR> public void setPbook(Map&lt;String, String&gt; pbook) {
	<BR> Pbook = pbook;
	<BR> }
	<BR> /**
	<BR> *
	<BR> * @return String[]回傳
	<BR> */
	<BR> public String[] getAddress2() {
	<BR> return Address2;
	<BR> }
	<BR> /**
	<BR> *
	<BR> * @param pbook 供Spring修改此字串。
	<BR> */
	<BR> public void setAddress2(String[] address2) {
	<BR> Address2 = address2;
	<BR> }
	<BR>
	<BR>}
	<BR>
	<HR>
	<span class="functiontitle" id="useEx">實際使用範例：</span>
	<BR>
	<BR>//=========================== class 一般依賴注入使用
	===========================
	<BR>
	<BR> package day11_16.controller;
	<BR>
	<BR>import org.springframework.context.ApplicationContext;
	<BR>import
	org.springframework.context.support.ClassPathXmlApplicationContext;
	<BR>
	<BR>import day11_16.model.A;
	<BR>import day11_16.model.B;
	<BR>import day11_16.model.Pro1;
	<BR>import day11_16.model.Pro2;
	<BR>
	<BR>public class test {
	<BR>
	<BR> public static void main(String[] args) {
	<BR> //共同起始宣告(找到a1物件並使用)
	<BR> ApplicationContext a1 = new
	ClassPathXmlApplicationContext("sp1.xml");
	<BR>
	<BR> //取得p1與p2的宣告物件(於依賴注入中注入A與B類別之值)
	<BR> Pro1 p1 = (Pro1)a1.getBean("p1");
	<BR> Pro2 p2 = (Pro2)a1.getBean("p2");
	<BR> System.out.println(p1);
	<BR> System.out.println(p2);
	<BR> //=============================
	<BR> //取得物件內的名稱(於xml內依賴注入的值)
	<BR> Pro1 p3 = (Pro1)a1.getBean("p1");
	<BR> System.out.println(p3.getA().getName());
	<BR> System.out.println(p3.getB().getName());
	<BR>
	<BR> Pro2 p4 = (Pro2)a1.getBean("p2");
	<BR> System.out.println(p4.getA().getName());
	<BR> System.out.println(p4.getB().getName());
	<BR> System.out.println(p4.getC().getName());
	<BR>
	<BR>// //=============================
	<BR>// //取得a與b的宣告物件(於xml內依賴注入的值)
	<BR> A a = (A)a1.getBean("a1");
	<BR> System.out.println(a.getName());
	<BR> System.out.println(a.getChi());
	<BR>
	<BR> B b = (B)a1.getBean("b1");
	<BR> System.out.println(b.getName());
	<BR> System.out.println(b.getEng());
	<BR>//
	<BR> //=============================
	<BR> //舊寫法：手動寫，new出來。
	<BR> Pro1 p = new Pro1();
	<BR> A ao = new A();
	<BR> B bo = new B();
	<BR> p.setA(ao);
	<BR> p.setB(bo);
	<BR>//
	<BR> p.getA().setName("bbc");
	<BR> System.out.println("Project內的A Name是===>" +
	p.getA().getName());//bbc
	<BR>
	<BR> }
	<BR>
	<BR>}
	<BR>
	<BR>
	<BR>//=========================== class List依賴注入使用
	===========================
	<BR>
	<BR>package day11_16.controller;
	<BR>
	<BR>import java.util.Collection;
	<BR>import java.util.Map;
	<BR>import java.util.Set;
	<BR>
	<BR>import org.springframework.context.ApplicationContext;
	<BR>import
	org.springframework.context.support.ClassPathXmlApplicationContext;
	<BR>
	<BR>import day11_16.model.Pro3;
	<BR>
	<BR>public class test3 {
	<BR>
	<BR> public static void main(String[] args) {
	<BR> ApplicationContext a2 = new
	ClassPathXmlApplicationContext("sp2.xml");
	<BR> Pro3 p3 = (Pro3)a2.getBean("pro3");
	<BR>
	<BR> p3.setPname("bbbb");
	<BR> System.out.println(p3.getPname());
	<BR>
	<BR> p3.getA().setName("tt");
	<BR> System.out.println(p3.getA().getName());
	<BR> //取出List的所有資料
	<BR> System.out.println(p3.getAddress());
	<BR>
	<BR> //取出String[]的所有資料
	<BR> System.out.println(p3.getAddress2());
	<BR>
	<BR> //取出List
	<String>的單一資料 <BR>
	//String[] s=p.getAddress().toArray(new
	String[p.getAddress().size()]);//String[] s=new String[3]; <BR>
	String[] s=p3.getAddress().toArray(new String[0]); <BR>
	System.out.println(s[1]); <BR>
	//取出String 陣列的單一資料 <BR>
	String[] s2 =p3.getAddress2(); <BR>
	System.out.println(s2[2]); <BR>
	//取出Map的所有資料 <BR>
	Map m = p3.getPbook(); <BR>
	System.out.println(m); <BR>
	//取出Map的單一資料 <BR>
	Collection<String> c = m.values(); <BR>
	Set<String> k = m.keySet(); <BR>
	<BR>
	String[] c2 = c.toArray(new String[0]); <BR>
	String[] k2 = k.toArray(new String[0]); <BR>
	<BR>
	System.out.println(c2[2]+"\t"+k2[2]); <BR>
	<BR>
	<BR>
	<BR>
	} <BR>
	<BR>
	} <BR>
	<BR>
</body>
</html>