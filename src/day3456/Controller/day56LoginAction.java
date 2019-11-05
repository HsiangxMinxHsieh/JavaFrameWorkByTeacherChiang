package day3456.Controller;

import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import day3456.Dao.daoIm.MemberDao;
import day3456.Model.member;

public class day56LoginAction extends ActionSupport {

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
		// 蝦米寫法：找到資料庫中已儲存的資料(是否有此M)
		ResultSet rs = (ResultSet) new MemberDao().getUserMember(getUser(), getPassword());
			
		// 此處只判斷是否有此使用者
		if (rs== null)
			return "LoginFail";
		else {
			member m=new member(rs.getString("name"),rs.getString("user"),rs.getString("password"));
			ActionContext.getContext().getSession().put("M", m); // 放入Session的關鍵程式碼！
			return "LoginSuccess";
		}

	}
}