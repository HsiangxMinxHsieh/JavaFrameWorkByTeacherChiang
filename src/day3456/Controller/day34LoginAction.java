package day3456.Controller;

import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionSupport;

import day3456.Dao.daoIm.MemberDao;

public class day34LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

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
		ResultSet rs = new MemberDao().queryAll();
		while (rs.next()) {
			if(rs.getString("user")== null ||rs.getString("password") ==null)
				continue;
			if (rs.getString("user").
					equals(getUser()) 
					&&
					rs.getString("password").
					equals(getPassword()))
//				return SUCCESS;//系統內建值
				return "LoginSuccess";
		}
		// 登入失敗：(判斷是否此帳號，而將使用者導至錯誤頁面或新增頁面
		if (new MemberDao().checkUser(getUser()))
//		return ERROR;//系統內建值
			return "LoginFail";
		else
			return "NeedSignUp";
	}
}