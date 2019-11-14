package day11_16_IOC.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import day11_16_IOC.model.pro;
import day11_16_IOC.setting.sp1;

public class test5 {

	public static void main(String[] args) {
		// 舊式寫法
		sp1 sp = new sp1();		
		System.out.println(sp.getA());//A [name=null, chi=0]
		sp.getA().setName("abc");// 要幾個會new幾個，因此無效
		System.out.println(sp.getA());//A [name=null, chi=0]
		System.out.println("==========================================");
		// 註釋注入法
		ApplicationContext a1 = new AnnotationConfigApplicationContext(sp1.class);
		pro p = (pro) a1.getBean("p1");
		System.out.println(p.getA());//A [name=null, chi=0]
		p.getA().setName("abc");
		p.setA(p.getA());// 將不會重新new，而是用舊的傳入
		System.out.println(p.getA());//A [name=abc, chi=0]
		System.out.println("==========================================");
		// 直接在類別方法內指定值的作法
		pro p2 = (pro) a1.getBean("p2");
		System.out.println(p2.getA());//A [name=我們的愛~~~哎呀，過了就不再回來, chi=0]
		p2.getA().setName("吼黑哈哈222");
		p2.setA(p2.getA());// 將不會重新new，而是用舊的傳入
		System.out.println(p2.getA());//A [name=吼黑哈哈222, chi=0]
		System.out.println("==========================================");
//		// xml的autowire，用於取代ref。
		ApplicationContext a2 = new ClassPathXmlApplicationContext("sp4.xml");
		//注入contructor時印出，因此將於此處印出 a.name===>null	b.name===>null
		pro p3 = (pro) a2.getBean("p1");
		System.out.println(p3.getA());
		p3.getA().setName("吼黑哈哈333");
		p3.setA(p3.getA());// 將不會重新new，而是用舊的傳入
		System.out.println(p3.getA());
		System.out.println("==========================================");
		pro p4 = (pro) a2.getBean("p2");
		System.out.println(p4.getA());//A [name=吼黑哈哈333, chi=0]
		p4.getA().setName("吼黑哈哈444");
		p4.setA(p4.getA());// 將不會重新new，而是用舊的傳入
		System.out.println(p4.getA());
		System.out.println("==========================================");
		
	}

}
