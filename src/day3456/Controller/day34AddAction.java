package day3456.Controller;

import com.opensymphony.xwork2.ActionSupport;

import day3456.Dao.daoIm.MemberDao;
import day3456.Model.member;

public class day34AddAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private String name;
	private String user;
	private String password;

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

	public String execute() throws Exception {
		String NAME = getName();
		String USER = getUser();
		String PASSWORD = getPassword();
		member m1 = new member(NAME, USER, PASSWORD);
		int result = new MemberDao().checkBeforeAdd(m1);
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
