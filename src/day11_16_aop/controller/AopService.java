package day11_16_aop.controller;

import javax.security.auth.login.AccountException;

public class AopService implements AopImpl {

	private String name;

	@Override
	public void withAop() throws Exception {
		System.out.println("有aop的函數執行 name:" + name);
		if (name.trim().length() == 0)
			throw new AccountException("name不可為空");

	}

	@Override
	public void withoutAop() throws Exception {
		System.out.println("沒有Aop的函數執行");

	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}