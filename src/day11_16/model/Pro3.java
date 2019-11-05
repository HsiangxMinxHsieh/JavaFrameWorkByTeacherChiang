package day11_16.model;

import java.util.List;
import java.util.Map;

public class Pro3 {
	private String Pname;
	private A a;
	private List<String> Address;
	private Map<String,String> Pbook;
	private String[] Address2;
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
	}
	public A getA() {
		return a;
	}
	public void setA(A a) {
		this.a = a;
	}
	public List<String> getAddress() {
		return Address;
	}
	public void setAddress(List<String> address) {
		Address = address;
	}
	public Map<String, String> getPbook() {
		return Pbook;
	}
	public void setPbook(Map<String, String> pbook) {
		Pbook = pbook;
	}
	public String[] getAddress2() {
		return Address2;
	}
	public void setAddress2(String[] address2) {
		Address2 = address2;
	}
	
	
	
	
}
