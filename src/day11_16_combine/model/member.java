package day11_16_combine.model;

public class member {
	private Integer id;
	private String name;
	private String user;
	private String password;
	private String Address;
	private String Mobile;
	private String Phone;
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
	
	@Override
	public String toString() {
		return "member [id=" + id + ", name=" + name + ", user=" + user + ", password=" + password + ", Address="
				+ Address + ", Mobile=" + Mobile + ", Phone=" + Phone + "]";
	}

	
	
}
