package day11_16.model;

import java.util.List;
import java.util.Map;

/**
 * 
 * @author Student A4
 * @version 1.0 <BR>
 *          <BR>
 *          Pro3 規格，用於展示Spring中各個集合的用法。
 */
public class Pro3 {
	private String Pname;
	private A a;
	private List<String> Address;
	private Map<String, String> Pbook;
	private String[] Address2;

	/**
	 * 
	 * @return Pname 回傳Pname
	 */
	public String getPname() {
		return Pname;
	}

	/**
	 * 
	 * @param pname 修改Pname<BR>
	 *              ex:<BR>
	 *              p.setPname("小粒蝦米不加辣辣");
	 */
	public void setPname(String pname) {
		Pname = pname;
	}

	public A getA() {
		return a;
	}

	public void setA(A a) {
		this.a = a;
	}

	/**
	 * 
	 * @return Address的List
	 */
	public List<String> getAddress() {
		return Address;
	}

	/**
	 * 
	 * @param address 供Spring修改List。
	 */
	public void setAddress(List<String> address) {
		Address = address;
	}
	/**
	 * 
	 * @return Map回傳
	 */
	public Map<String, String> getPbook() {
		return Pbook;
	}
	/**
	 * 
	 * @param pbook 供Spring修改此Map。
	 */
	public void setPbook(Map<String, String> pbook) {
		Pbook = pbook;
	}
	/**
	 * 
	 * @return String[]回傳
	 */
	public String[] getAddress2() {
		return Address2;
	}
	/**
	 * 
	 * @param pbook 供Spring修改此字串。
	 */
	public void setAddress2(String[] address2) {
		Address2 = address2;
	}

}
