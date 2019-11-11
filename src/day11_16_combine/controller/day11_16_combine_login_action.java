package day11_16_combine.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import day11_16_combine.model.member;
import day11_16_combine.dao.member.memberDao;

public class day11_16_combine_login_action extends ActionSupport {
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

