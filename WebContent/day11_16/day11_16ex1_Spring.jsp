<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring簡介</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">Spring簡介</div>
	※老師目前所教的Spring，重點在於「依賴注入」，即是利用設定檔，先預設給類別資料，讓其取得設定檔時就有該值，例如
	<a href="#ex1">範例1</a>。
	<BR>
	<BR>※也有直接注入陣列或List的方式，例如
	<a href="#ex2">範例2</a>。

	<HR>
	<span class="functiontitle" id="ex1">範例1：</span>
	<BR>&lt;?xml version = &quot;1.0&quot; encoding =
	&quot;UTF-8&quot;?&gt;
	<BR>
	<BR>&lt;beans
	xmlns=&quot;http://www.springframework.org/schema/beans&quot;
	<BR>
	xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
	<BR>
	xsi:schemaLocation=&quot;http://www.springframework.org/schema/beans
	<BR>
	http://www.springframework.org/schema/beans/spring-beans-3.0.xsd&quot;&gt;
	<BR> &lt;bean id=&quot;a1&quot;
	class=&quot;day11_16.model.A&quot;&gt;
	<BR> &lt;property name=&quot;name&quot; value=&quot;aaa班&quot;
	/&gt;
	<BR> &lt;!-- 無論是字串或是int，指定值皆必須有雙引號「&quot;」--&gt;
	<BR> &lt;property name=&quot;chi&quot; value=&quot;80&quot; /&gt;
	<BR> &lt;/bean&gt;
	<BR> &lt;bean id=&quot;a1_1&quot;
	class=&quot;day11_16.model.A&quot;&gt;
	<BR> &lt;property name=&quot;name&quot; value=&quot;aaa班_1&quot;
	/&gt;
	<BR> &lt;property name=&quot;chi&quot; value=&quot;85&quot; /&gt;
	<BR> &lt;/bean&gt;
	<BR>
	<BR> &lt;!--利用建構式新增 --&gt;
	<BR> &lt;bean id=&quot;a1_2&quot;
	class=&quot;day11_16.model.A&quot;&gt;
	<BR> &lt;!-- index與name皆可，也可混合使用，但是一定都要有指定。 --&gt;
	<BR> &lt;constructor-arg index= &quot;0&quot; value =
	&quot;aaa班_2&quot;/&gt;
	<BR> &lt;constructor-arg name= &quot;chi&quot; value =
	&quot;86&quot;/&gt;
	<BR> &lt;/bean&gt;
	<BR>
	<BR> &lt;bean id=&quot;a1_3&quot;
	class=&quot;day11_16.model.A&quot;/&gt;
	<BR>
	<BR> &lt;bean id=&quot;b1&quot;
	class=&quot;day11_16.model.B&quot;&gt;
	<BR> &lt;property name=&quot;name&quot; value=&quot;bbb班&quot;
	/&gt;
	<BR> &lt;property name=&quot;eng&quot; value=&quot;100&quot; /&gt;
	<BR> &lt;/bean&gt;
	<BR> &lt;bean id=&quot;b1_1&quot;
	class=&quot;day11_16.model.B&quot;&gt;
	<BR> &lt;property name=&quot;name&quot; value=&quot;bbb班&quot;
	/&gt;
	<BR> &lt;property name=&quot;eng&quot; value=&quot;100&quot; /&gt;
	<BR> &lt;/bean&gt;
	<BR> &lt;bean id=&quot;c1&quot;
	class=&quot;day11_16.model.C&quot;&gt;
	<BR> &lt;property name=&quot;name&quot; value=&quot;ccc班&quot;
	/&gt;
	<BR> &lt;property name=&quot;math&quot; value=&quot;90&quot; /&gt;
	<BR> &lt;/bean&gt;
	<BR> &lt;bean id=&quot;p1&quot;
	class=&quot;day11_16.model.Pro1&quot;&gt;
	<BR> &lt;property name=&quot;a&quot; ref=&quot;a1_3&quot; /&gt;
	<BR> &lt;property name=&quot;b&quot; ref=&quot;b1&quot; /&gt;
	<BR> &lt;/bean&gt;
	<BR> &lt;bean id=&quot;p2&quot;
	class=&quot;day11_16.model.Pro2&quot;&gt;
	<BR> &lt;property name=&quot;a&quot; ref=&quot;a1_1&quot; /&gt;
	<BR> &lt;property name=&quot;b&quot; ref=&quot;b1_1&quot; /&gt;
	<BR> &lt;property name=&quot;c&quot; ref=&quot;c1&quot; /&gt;
	<BR> &lt;/bean&gt;
	<BR>&lt;/beans&gt;
	<BR>
	<BR>

	<HR>
	<span class="functiontitle" id="ex2">範例2：</span>
	<BR>&lt;?xml version = &quot;1.0&quot; encoding =
	&quot;UTF-8&quot;?&gt;
	<BR>
	<BR>&lt;beans
	xmlns=&quot;http://www.springframework.org/schema/beans&quot;
	<BR>
	xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
	<BR>
	xsi:schemaLocation=&quot;http://www.springframework.org/schema/beans
	<BR>
	http://www.springframework.org/schema/beans/spring-beans-3.0.xsd&quot;&gt;
	<BR>
	<BR>
	<BR> &lt;bean id=&quot;pro3&quot;
	class=&quot;day11_16.model.Pro3&quot;&gt;
	<BR> &lt;property name=&quot;Pname&quot; value=&quot;abc&quot;
	/&gt;
	<BR> &lt;property name=&quot;a&quot; ref=&quot;a&quot; /&gt;
	<BR> &lt;property name=&quot;Address&quot;&gt;
	<BR> &lt;list&gt;
	<BR> &lt;value&gt;台北&lt;/value&gt;
	<BR> &lt;value&gt;台中&lt;/value&gt;
	<BR> &lt;value&gt;台南&lt;/value&gt;
	<BR> &lt;value&gt;高雄&lt;/value&gt;
	<BR> &lt;/list&gt;
	<BR> &lt;/property&gt;
	<BR>
	<BR> &lt;property name=&quot;Pbook&quot;&gt;
	<BR> &lt;map&gt;
	<BR> &lt;entry key=&quot;Java7&quot;
	value=&quot;600&quot;&gt;&lt;/entry&gt;
	<BR> &lt;entry key=&quot;Java8&quot;
	value=&quot;700&quot;&gt;&lt;/entry&gt;
	<BR> &lt;entry key=&quot;Java Web&quot;
	value=&quot;800&quot;&gt;&lt;/entry&gt;
	<BR> &lt;/map&gt;
	<BR> &lt;/property&gt;
	<BR>
	<BR> &lt;property name=&quot;Address2&quot;&gt;
	<BR> &lt;list&gt;
	<BR> &lt;value&gt;北一&lt;/value&gt;
	<BR> &lt;value&gt;北二&lt;/value&gt;
	<BR> &lt;value&gt;北三&lt;/value&gt;
	<BR> &lt;value&gt;北四&lt;/value&gt;
	<BR> &lt;/list&gt;
	<BR> &lt;/property&gt;
	<BR>
	<BR> &lt;/bean&gt;
	<BR>
	<BR>&lt;/beans&gt;
	<BR>
	<BR>



</body>
</html>