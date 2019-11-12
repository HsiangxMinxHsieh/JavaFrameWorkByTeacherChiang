<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring-AOP類別使用範例</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">Spring-AOP類別使用範例</div>
	<span class="functiontitle">簡介：</span>
	<BR> ※由於重複的動作(方法)可能需要一直做，因此Spring設計了這個AOP方法，
	<BR>
	<BR>讓程式設計師在使用時，可以利用「撰寫xml並利用依賴注入的方法」
	<BR>
	<BR>來達成「 在方法前、方法後執行固定動作的效果。」
	<BR>
	<HR>
	<span class="functiontitle">類別程式碼：</span>
	<BR>
	<BR>
	<BR>//=========================== AopImpl
	===========================
	<BR>
	<BR>package day11_16_aop.controller;
	<BR>
	<BR>public interface AopImpl {
	<BR> void withAop() throws Exception;
	<BR> void withAop2() throws Exception;
	<BR> void withoutAop() throws Exception;
	<BR>}
	<BR>
	<BR>

	<BR>//=========================== AopService
	===========================
	<BR>
	<BR>package day11_16_aop.controller;
	<BR>
	<BR>import javax.security.auth.login.AccountException;
	<BR>
	<BR>public class AopService implements AopImpl {
	<BR>
	<BR> private String name;
	<BR>
	<BR> @Override
	<BR> public void withAop() throws Exception {
	<BR> System.out.println("有aop的函數執行 name:" + name);
	<BR> if (name.trim().length() == 0)
	<BR> throw new AccountException("name不可為空");
	<BR>
	<BR> }
	<BR>
	<BR> @Override
	<BR> public void withoutAop() throws Exception {
	<BR> System.out.println("沒有Aop的函數執行");
	<BR>
	<BR> }
	<BR> public void withAop2() throws Exception {
	<BR> System.out.println("有aop的第二個函數執行 name:" + name);
	<BR>
	<BR> }
	<BR> public String getName() {
	<BR> return name;
	<BR> }
	<BR>
	<BR> public void setName(String name) {
	<BR> this.name = name;
	<BR> }
	<BR>
	<BR>}
	<BR>
	<BR>


	<BR>//=========================== AopBefore
	===========================
	<BR>
	<BR> package day11_16_aop.controller;
	<BR>
	<BR>import java.lang.reflect.Method;
	<BR>
	<BR>import org.springframework.aop.MethodBeforeAdvice;
	<BR>
	<BR>public class AopBefore implements MethodBeforeAdvice{
	<BR>
	<BR> @Override
	<BR> public void before(Method method, Object[] args, Object
	target) throws Throwable {
	<BR> System.out.println("準備開始執行方法:"+method.getName());
	<BR>
	<BR> }
	<BR>
	<BR>}
	<BR>
	<BR>//=========================== AopAfter
	===========================
	<BR>
	<BR> package day11_16_aop.controller;
	<BR>
	<BR>import java.lang.reflect.Method;
	<BR>
	<BR>import org.springframework.aop.AfterReturningAdvice;
	<BR>
	<BR>public class AopAfter implements AfterReturningAdvice{
	<BR>
	<BR> @Override
	<BR> public void afterReturning(Object returnValue, Method method,
	Object[] args, Object target) throws Throwable {
	<BR> System.out.println("方法"+method.getName()+" 執行完畢");
	<BR>
	<BR> }
	<BR>
	<BR>}
	<BR>
	<BR>

	<HR>
	<span class="functiontitle">xml內容：</span>
	<BR>
	<BR> &lt;?xml version=&quot;1.0&quot;
	encoding=&quot;UTF-8&quot;?&gt;
	<BR>&lt;beans
	xmlns=&quot;http://www.springframework.org/schema/beans&quot;
	<BR>
	xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
	<BR>
	xsi:schemaLocation=&quot;http://www.springframework.org/schema/beans
	<BR>
	http://www.springframework.org/schema/beans/spring-beans-3.0.xsd&quot;&gt;
	<BR> &lt;bean id=&quot;aopBefore2&quot;
	<BR>
	class=&quot;org.springframework.aop.support.NameMatchMethodPointcutAdvisor&quot;&gt;
	<BR> &lt;property name=&quot;advice&quot;&gt;
	<BR> &lt;bean class=&quot;day11_16_aop.controller.AopBefore&quot;
	/&gt;
	<BR> &lt;/property&gt;
	<BR> &lt;property name=&quot;mappedName&quot;
	value=&quot;withAop2&quot; /&gt;
	<BR> &lt;/bean&gt;
	<BR>
	<BR> &lt;bean id=&quot;aopAfter2&quot;
	<BR>
	class=&quot;org.springframework.aop.support.NameMatchMethodPointcutAdvisor&quot;&gt;
	<BR> &lt;property name=&quot;advice&quot;&gt;
	<BR> &lt;bean
	class=&quot;day11_16_aop.controller.AopAfter&quot;&gt;&lt;/bean&gt;
	<BR> &lt;/property&gt;
	<BR> &lt;property name=&quot;mappedName&quot;
	value=&quot;withAop2&quot;/&gt;
	<BR> &lt;/bean&gt;
	<BR>
	<BR> &lt;bean id=&quot;aopBefore&quot;
	<BR>
	class=&quot;org.springframework.aop.support.NameMatchMethodPointcutAdvisor&quot;&gt;
	<BR> &lt;!-- advice為
	org.springframework.aop.support.NameMatchMethodPointcutAdvisor
	類別內值，不可更改。--&gt;
	<BR> &lt;property name=&quot;advice&quot;&gt;
	<BR> &lt;bean class=&quot;day11_16_aop.controller.AopBefore&quot;
	/&gt;
	<BR> &lt;/property&gt;
	<BR> &lt;!-- mappedName為
	org.springframework.aop.support.NameMatchMethodPointcutAdvisor
	類別內值，不可更改。--&gt;
	<BR> &lt;property name=&quot;mappedName&quot;
	value=&quot;withAop&quot;&gt;&lt;/property&gt;
	<BR> &lt;/bean&gt;
	<BR>
	<BR>
	<BR> &lt;bean id=&quot;aopAfter&quot;
	<BR>
	class=&quot;org.springframework.aop.support.NameMatchMethodPointcutAdvisor&quot;&gt;
	<BR> &lt;!-- advice為
	org.springframework.aop.support.NameMatchMethodPointcutAdvisor
	類別內值，不可更改。--&gt;
	<BR> &lt;property name=&quot;advice&quot;&gt;
	<BR> &lt;bean class=&quot;day11_16_aop.controller.AopAfter&quot;
	/&gt;
	<BR> &lt;/property&gt;
	<BR> &lt;!-- mappedName為
	org.springframework.aop.support.NameMatchMethodPointcutAdvisor
	類別內值，不可更改。--&gt;
	<BR> &lt;property name=&quot;mappedName&quot;
	value=&quot;withAop&quot;&gt;&lt;/property&gt;
	<BR> &lt;/bean&gt;
	<BR>
	<BR> &lt;bean id=&quot;aopService&quot;
	class=&quot;org.springframework.aop.framework.ProxyFactoryBean&quot;&gt;
	<BR> &lt;!--
	interceptorNames為org.springframework.aop.framework.ProxyFactoryBean
	類別內值，不可更改。--&gt;
	<BR> &lt;property name=&quot;interceptorNames&quot;&gt;
	<BR> &lt;list&gt;
	<BR> &lt;!-- 注意：這兩個值不會因為順序而在呼叫時做改變，因為其當初實作的方法不同。 --&gt;
	<BR> &lt;value&gt;aopBefore&lt;/value&gt;
	<BR> &lt;value&gt;aopAfter&lt;/value&gt;
	<BR> &lt;value&gt;aopAfter2&lt;/value&gt;
	<BR> &lt;value&gt;aopBefore2&lt;/value&gt;
	<BR> &lt;/list&gt;
	<BR> &lt;/property&gt;
	<BR> &lt;!--
	target為org.springframework.aop.framework.ProxyFactoryBean
	類別內值，不可更改。--&gt;
	<BR> &lt;property name=&quot;target&quot;&gt;
	<BR> &lt;bean
	class=&quot;day11_16_aop.controller.AopService&quot;&gt;
	<BR> &lt;!-- 指定類別並利用set方法給定初始值給初始值 --&gt;
	<BR> &lt;property name=&quot;name&quot;
	value=&quot;Hello,TimmyMike&quot;&gt;&lt;/property&gt;
	<BR> &lt;/bean&gt;
	<BR> &lt;/property&gt;
	<BR> &lt;/bean&gt;
	<BR>&lt;/beans&gt;
	<BR>

	<HR>
	<span class="functiontitle">實際使用範例：</span>
	<BR>package day11_16_aop.controller;
	<BR>
	<BR>import org.springframework.context.ApplicationContext;
	<BR>import
	org.springframework.context.support.ClassPathXmlApplicationContext;
	<BR>
	<BR>public class test4 {
	<BR>
	<BR> public static void main(String[] args) throws Exception {
	<BR> ApplicationContext a1 = new
	ClassPathXmlApplicationContext("sp3.xml");
	<BR>
	<BR> AopImpl hello = (AopImpl) a1.getBean("aopService");
	<BR>
	<BR> hello.withAop();
	<BR>// hello.withoutAop();
	<BR> hello.withAop2();
	<BR> }
	<BR>
	<BR>}
	<BR>
	<BR>//預期輸出：
	<BR>準備開始執行方法:withAop
	<BR>有aop的函數執行 name:Hello,TimmyMike
	<BR>方法withAop 執行完畢
	<BR>準備開始執行方法:withAop2
	<BR>有aop的第二個函數執行 name:Hello,TimmyMike
	<BR>方法withAop2 執行完畢
	<BR>
	<BR>
	<BR>


</body>
</html>