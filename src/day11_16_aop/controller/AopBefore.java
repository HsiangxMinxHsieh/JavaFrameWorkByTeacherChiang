package day11_16_aop.controller;

import java.lang.reflect.Method;

import org.springframework.aop.MethodBeforeAdvice;

public class AopBefore implements MethodBeforeAdvice{

	@Override
	public void before(Method method, Object[] args, Object target) throws Throwable {
		System.out.println("準備開始執行方法:"+method.getName());
		
	}

}