package day11_16_aop.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test4 {

	public static void main(String[] args) throws Exception {
		ApplicationContext a1 = new ClassPathXmlApplicationContext("sp3.xml");

		AopImpl hello = (AopImpl) a1.getBean("aopService");

		hello.withAop();
//		 hello.withoutAop();
		hello.withAop2();
	}

}
