package day11_16.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import day11_16.model.Pro3;

public class test3 {

	public static void main(String[] args) {
		ApplicationContext a2 = new ClassPathXmlApplicationContext("sp2.xml");
		Pro3 p3 = (Pro3)a2.getBean("pro3");
		p3.setPname("bbbb");
		System.out.println(p3.getPname());
		p3.getA().setName("tt");
		System.out.println(p3.getA().getName());
		
		//System.out.println(p3.getAddress());
		//System.out.println(p3.getAddress2());
		
		//String[] s=p.getAddress().toArray(new String[p.getAddress().size()]);//String[] s=new String[3];
		String[] s=p3.getAddress().toArray(new String[0]);
		System.out.println(s[1]);
		
		String[] s2 =p3.getAddress2();
		System.out.println(s2[2]);
		
	}

}
