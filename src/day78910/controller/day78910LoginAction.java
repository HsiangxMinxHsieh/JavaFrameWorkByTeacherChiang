package day78910.controller;

import java.sql.ResultSet;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import day78910.dao.member.memberDao;
import day78910.model.member;

public class day78910LoginAction extends ActionSupport {
	private String user;
	private String password;

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

	public String execute() throws Exception {
		// 蝦米寫法：比對資料庫中已儲存的資料
		memberDao dao = new memberDao();
		List<member> list = dao.queryAll();
		for (member m : list) {
			if (m.getUser() == null || m.getPassword() == null)
				continue;
			if (m.getUser().equals(getUser()) && m.getPassword().equals(getPassword())) {
//						return SUCCESS;//系統內建值
				ActionContext.getContext().getSession().put("M", m); // 放入Session的關鍵程式碼！
				return "LoginSuccess";
			}
		}
		// 登入失敗：(判斷是否此帳號，而將使用者導至錯誤頁面或新增頁面
		if (dao.checkUser(getUser()))
//				return ERROR;//系統內建值
			return "LoginFail";
		else
			return "NeedSignUp";

	}

}
