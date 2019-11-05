package day11_16.controller;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

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
		//取出List的所有資料
		System.out.println(p3.getAddress());
		
		//取出String[]的所有資料
		System.out.println(p3.getAddress2());
		
		//取出List<String>的單一資料
		//String[] s=p.getAddress().toArray(new String[p.getAddress().size()]);//String[] s=new String[3];
		String[] s=p3.getAddress().toArray(new String[0]);
		System.out.println(s[1]);
		//取出String 陣列的單一資料
		String[] s2 =p3.getAddress2();
		System.out.println(s2[2]);
		//取出Map的所有資料
		Map m = p3.getPbook();
		System.out.println(m);
		//取出Map的單一資料
		Collection<String> c = m.values();
		Set<String> k = m.keySet();
		
		String[] c2 =  c.toArray(new String[0]);
		String[] k2 = k.toArray(new String[0]);
		
		System.out.println(c2[2]+"\t"+k2[2]);
		
		
		
	}

}
