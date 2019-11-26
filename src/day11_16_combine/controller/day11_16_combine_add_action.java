package day11_16_combine.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;

import day11_16_combine.dao.Fact;
import day11_16_combine.dao.member.memberDao;
import day11_16_combine.model.member;

public class day11_16_combine_add_action extends ActionSupport {

	private String name;
	private String user;
	private String password;
	private String Address;
	private String Mobile;
	private String Phone;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getMobile() {
		return Mobile;
	}

	public void setMobile(String mobile) {
		Mobile = mobile;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}
	
	public String execute() throws Exception {
		ClassPathXmlApplicationContext a2 = new ClassPathXmlApplicationContext("sp_11_16_combine.xml");
		member m1 = (member) a2.getBean("m1");
		Fact f1 = (Fact)a2.getBean("f1");
		a2.close();
		m1.setName(getName());
		m1.setUser(getUser());
		m1.setPassword(getPassword());
		//如果不為空值，才要指定值。
		if (!getAddress().equals(""))
			m1.setAddress(getAddress());
		if (!getMobile().equals(""))
			m1.setMobile(getMobile());
		if (!getPhone().equals(""))
			m1.setPhone(getPhone());
		
		int result =f1.getM().checkBeforeAdd(m1);

//		System.out.println("收到的NAME是===>"+NAME);
		// 依照結果導入不同頁面：
		/** 成功回傳1，失敗回傳0，已有重複回傳-1，輸入空值回傳-2 */
		switch (result) {
		case 1: // 成功
			return "AddSuccess";
		case 0: // 因為JDBC導致的失敗
			return "JDBCFail";
		case -1: // 已有重複
			return "HaveRepeat";
		case -2:// 輸入空值
			return "EnterNull";
		default:
			return "";
		}

	}
}
