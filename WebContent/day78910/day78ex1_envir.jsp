<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hibernate 環境安裝</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">Hibernate 環境安裝</div>
	<BR>
	<b>1.安裝Eclispe之Hibernate精靈</b>
	<BR> (1).依照
	<a
		href="https://gotoapp.wordpress.com/2015/02/17/java-eclipse-hibernate-tools/">此網頁</a>說明依序安裝
	<BR> (2).搜尋出Hibernate後，點擊安裝所有有Hibernate的tool。
	<BR>
	<BR>
	<b> 2.將下載來的Hibernate.jar檔全部丟到WEB-INF/lib/內</b>
	<BR>
	<BR>
	<b>3.新增連線資料庫設定檔<a href="#databaseConfig">範例</a></b>
	<BR>
	<BR>
	<b> 4.新增一個類別</b>
	<a href="#hbmClassEx">範例</a>
	<BR> (1).並製作hbm.xml資料庫對應檔
	<a href="#hbmClassConfig">範例</a>
	<BR> (2).並增加對應文字(參考到步驟3.製作的對應檔)(如下)
	<BR>&lt;mapping resource="day78910/model/member.hbm.xml"/&gt;
	<BR>
	<BR>
	<b>5.建立連線用之Session物件：(可寫在interface中，如<a href="#getSeExample">範例</a>)</b>
	<BR> public static Session getSession() {
	<BR>return new
	Configuration().configure().buildSessionFactory().openSession();
	<BR> }
	<BR>
	<b>6.依照<a href="#daoExample">範例</a>撰寫Dao：
	</b>
	<BR>
	<HR>

	<span class="functiontitle" id="databaseConfig">步驟3：連線資料庫設定檔範例：</span>
	<BR>&lt;?xml version=&quot;1.0&quot;
	encoding=&quot;UTF-8&quot;?&gt;
	<BR>&lt;!DOCTYPE hibernate-configuration PUBLIC
	&quot;-//Hibernate/Hibernate Configuration DTD 3.0//EN&quot;
	<BR>
	&quot;http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd&quot;&gt;
	<BR>&lt;hibernate-configuration&gt;
	<BR> &lt;session-factory &gt;
	<BR> &lt;property
	name=&quot;hibernate.connection.driver_class&quot;&gt;com.mysql.jdbc.Driver&lt;/property&gt;
	<BR> &lt;property
	name=&quot;hibernate.connection.password&quot;&gt;1234&lt;/property&gt;
	<BR> &lt;property
	name=&quot;hibernate.connection.url&quot;&gt;jdbc:mysql://localhost:3306/company?characterEncoding=utf-8&lt;/property&gt;
	<BR> &lt;property
	name=&quot;hibernate.connection.username&quot;&gt;root&lt;/property&gt;
	<BR> &lt;property
	name=&quot;hibernate.dialect&quot;&gt;org.hibernate.dialect.MySQLDialect&lt;/property&gt;
	<BR> &lt;!--↓為步驟4.(2)之動作--!&gt;
	<BR>
	<font color="red"> &lt;mapping
		resource=&quot;day78910/model/member.hbm.xml&quot;/&gt;</font>
	<BR> &lt;/session-factory&gt;
	<BR>&lt;/hibernate-configuration&gt;
	<BR>
	<BR>

	<span class="functiontitle" id="hbmClassEx">步驟4：範例類別：</span>
	<BR>package day78910.model;
	<BR>
	<BR>public class member {
	<BR> private Integer id;
	<BR> private String name;
	<BR> private String user;
	<BR> private String password;
	<BR>
	<BR> public String getName() {
	<BR> return name;
	<BR> }
	<BR> public void setName(String name) {
	<BR> this.name = name;
	<BR> }
	<BR> public String getUser() {
	<BR> return user;
	<BR> }
	<BR> public void setUser(String user) {
	<BR> this.user = user;
	<BR> }
	<BR> public String getPassword() {
	<BR> return password;
	<BR> }
	<BR> public void setPassword(String password) {
	<BR> this.password = password;
	<BR> }
	<BR> public Integer getId() {
	<BR> return id;
	<BR> }
	<BR>
	<BR> public void setId(Integer id) {
	<BR> this.id = id;
	<BR> }
	<BR> @Override
	<BR> public String toString() {
	<BR> return "member [id=" + id + ", name=" + name + ", user=" +
	user + ", password=" + password + "]";
	<BR> }
	<BR>
	<BR>}
	<BR>

	<span class="functiontitle" id="hbmClassConfig">步驟4(1)：範例資料庫對應檔：</span>
	<BR>&lt;?xml version=&quot;1.0&quot;?&gt;
	<BR>&lt;!DOCTYPE hibernate-mapping PUBLIC
	&quot;-//Hibernate/Hibernate Mapping DTD 3.0//EN&quot;
	<BR>&quot;http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd&quot;&gt;
	<BR>&lt;!-- Generated 2019/10/17 ?U?? 08:47:39 by Hibernate Tools
	3.4.0.CR1 --&gt;
	<BR>&lt;hibernate-mapping&gt;
	<BR> &lt;class name=&quot;day78910.model.member&quot;
	table=&quot;MEMBER&quot;&gt;
	<BR> &lt;id name=&quot;id&quot; type=&quot;java.lang.Integer&quot;
	access=&quot;field&quot;&gt;
	<BR> &lt;column name=&quot;ID&quot; /&gt;
	<BR> &lt;generator class=&quot;
	<font color="red">native</font>&quot; /&gt;
	<BR> &lt;/id&gt;
	<BR> &lt;property name=&quot;name&quot;
	type=&quot;java.lang.String&quot;&gt;
	<BR> &lt;column name=&quot;NAME&quot; /&gt;
	<BR> &lt;/property&gt;
	<BR> &lt;property name=&quot;user&quot;
	type=&quot;java.lang.String&quot;&gt;
	<BR> &lt;column name=&quot;USER&quot; /&gt;
	<BR> &lt;/property&gt;
	<BR> &lt;property name=&quot;password&quot;
	type=&quot;java.lang.String&quot;&gt;
	<BR> &lt;column name=&quot;PASSWORD&quot; /&gt;
	<BR> &lt;/property&gt;
	<BR> &lt;/class&gt;
	<BR>&lt;/hibernate-mapping&gt;
	<BR>
	<span class="functiontitle" id="getSeExample">步驟5：取得Session(寫在Interface中)之範例</span>
	<BR> static Session getSe()
	<BR> {
	<BR> Configuration conn=new Configuration().configure();
	<BR> SessionFactory sf=conn.buildSessionFactory();
	<BR> Session se=sf.openSession();
	<BR> return se;
	<BR>
	<BR> }
	<BR>
	<BR>
	<span class="functiontitle" id="daoExample">步驟6：完整Dao範例</span>
	<BR> package day78910.dao;
	<BR>
	<BR>import org.hibernate.Session;
	<BR>import org.hibernate.Transaction;
	<BR>import org.hibernate.cfg.Configuration;
	<BR>
	<BR>import day78910.model.member;
	<BR>
	<BR>public class MemberDao {
	<BR>
	<BR> public static void main(String[] args) {
	<BR> // TODO Auto-generated method stub
	<BR>
	<BR>// System.out.println(getSession());
	<BR>// member m = new member();
	<BR>// m.setName("吼黑");
	<BR>// m.setUser("xxxx000");
	<BR>// m.setPassword("xxx111");
	<BR>// MemberDao.Add(m);
	<BR>
	<BR>// System.out.println(getMember(4));
	<BR>
	<BR>// deleteMember(10);
	<BR>// member m = new member();
	<BR>// m.setName("測試測試789");
	<BR>// m.setUser("ccc678");
	<BR>// m.setPassword("4444");
	<BR>// update(11,m);
	<BR>
	<BR> }
	<BR>
	<BR> public static void Add(member m) {
	<BR> Session se = getSession();
	<BR>
	<BR> Transaction tx = se.beginTransaction();
	<BR> se.save(m);
	<BR> tx.commit();
	<BR> se.close();
	<BR> }
	<BR>
	<BR> public static void update(int id,member m) {
	<BR> Session se = getSession();
	<BR> Transaction tx = se.beginTransaction();
	<BR> member mn = getMember(id);
	<BR> mn.setId(id);
	<BR> //如果是沒有修改到的屬性，就用從舊的資料取出來的
	<BR> mn.setName((m.getName()==null)?mn.getName():m.getName());
	<BR> mn.setUser((m.getUser()==null)?mn.getUser():m.getUser());
	<BR>
	mn.setPassword((m.getPassword()==null)?mn.getPassword():m.getPassword());
	<BR> se.update(mn);
	<BR> tx.commit();
	<BR> se.close();
	<BR> }
	<BR>
	<BR>
	<BR> public static member getMember(int id) {
	<BR> return getSession().get(member.class, id);
	<BR> }
	<BR>
	<BR> public static void deleteMember(int id) {
	<BR> Session se = getSession();
	<BR> Transaction tx = se.beginTransaction();
	<BR> member m = getMember(id);
	<BR> se.delete(m);
	<BR> tx.commit();
	<BR> se.close();
	<BR> }
	<BR> public static Session getSession() {
	<BR>// Configuration con=new Configuration().configure();
	<BR>// SessionFactory sf=con.buildSessionFactory();
	<BR>//
	<BR>// Session se=sf.openSession();
	<BR> return new
	Configuration().configure().buildSessionFactory().openSession();
	<BR> }
	<BR>
	<BR>}
	<BR>
	<BR>
	<BR>

</body>
</html>