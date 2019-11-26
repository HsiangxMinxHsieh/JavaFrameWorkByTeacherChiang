package day11_16_combine.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import day11_16_combine.dao.Fact;
import day11_16_combine.dao.member.memberDao;
import day11_16_combine.dao.porder.porderDao;
import day11_16_combine.model.member;
import day11_16_combine.model.porder;

public class day11_16_combine_edit_porder_action extends ActionSupport {
	
	private Integer id;
	private String name;
	private Integer pro1;
	private Integer pro2;
	private Integer pro3;
	private Integer sum;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPro1() {
		return pro1;
	}

	public void setPro1(Integer pro1) {
		this.pro1 = pro1;
	}

	public Integer getPro2() {
		return pro2;
	}

	public void setPro2(Integer pro2) {
		this.pro2 = pro2;
	}

	public Integer getPro3() {
		return pro3;
	}

	public void setPro3(Integer pro3) {
		this.pro3 = pro3;
	}

	public Integer getSum() {
		return sum;
	}

	public void setSum(Integer sum) {
		this.sum = sum;
	}

	public String execute() throws Exception {
		ClassPathXmlApplicationContext a2 = new ClassPathXmlApplicationContext("sp_11_16_combine.xml");
		Fact f1 = (Fact)a2.getBean("f1");
		porder p = f1.getP().getobject(getId());
		p.setName(getName());
		p.setPro1(getPro1());
		p.setPro2(getPro2());
		p.setPro3(getPro3());
		p.setSum(p.getSum());
		
		int result = f1.getP().checkBeforeEdit(getId(),p);
//		System.out.println("收到的NAME是===>"+NAME);
		// 依照結果導入不同頁面：
		/** 成功回傳1，失敗回傳0，已有重複回傳-1，輸入空值回傳-2 */
		switch (result) {
		case 1: // 成功
//			ActionContext.getContext().getSession().put("P", p); // 放入Session的關鍵程式碼！
			return "EditSuccess";
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
