package day11_16.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import day11_16.model.A;
import day11_16.model.B;
import day11_16.model.Pro1;
import day11_16.model.Pro2;

public class test {

	public static void main(String[] args) {
		//共同起始宣告(找到a1物件並使用)
		ApplicationContext a1 = new ClassPathXmlApplicationContext("sp1.xml");
		
		//取得p1與p2的宣告物件(於依賴注入中注入A與B類別之值)
		Pro1 p1 = (Pro1)a1.getBean("p1");
		Pro2 p2 = (Pro2)a1.getBean("p2");
		System.out.println(p1);
		System.out.println(p2);
		//=============================
		//取得物件內的名稱(於xml內依賴注入的值)
		Pro1 p3 = (Pro1)a1.getBean("p1");
		System.out.println(p3.getA().getName());
		System.out.println(p3.getB().getName());
		
		Pro2 p4 = (Pro2)a1.getBean("p2");
		System.out.println(p4.getA().getName());
		System.out.println(p4.getB().getName());
		System.out.println(p4.getC().getName());
		
//		//=============================
//		//取得a與b的宣告物件(於xml內依賴注入的值)
		A a = (A)a1.getBean("a1");
		System.out.println(a.getName());
		System.out.println(a.getChi());
		
		B b = (B)a1.getBean("b1");
		System.out.println(b.getName());
		System.out.println(b.getEng());
//		
		//=============================
		//舊寫法：手動寫，new出來。
		Pro1 p = new Pro1();
		A ao = new A();
		B bo = new B();
		p.setA(ao);
		p.setB(bo);
//		
		p.getA().setName("bbc");
		System.out.println("Project內的A Name是===>" + p.getA().getName());//bbc

	}

}
