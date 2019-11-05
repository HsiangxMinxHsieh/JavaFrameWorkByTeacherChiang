package day3456.Model;

public class member {

	private String name;
	private String user;
	private String password;

	public member(String name, String user, String password) {
		super();
		this.name = name;
		this.user = user;
		this.password = password;
	}

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

	@Override
	public String toString() {
		return "member [name=" + name + ", user=" + user + ", password=" + password + "]";
	}

}
