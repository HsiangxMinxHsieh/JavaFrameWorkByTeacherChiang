package day11_16_aop.controller;

import java.lang.reflect.Method;

import org.springframework.aop.AfterReturningAdvice;

public class AopAfter implements AfterReturningAdvice{

	@Override
	public void afterReturning(Object returnValue, Method method, Object[] args, Object target) throws Throwable {
		System.out.println("方法"+method.getName()+" 執行完畢");
		
	}

}