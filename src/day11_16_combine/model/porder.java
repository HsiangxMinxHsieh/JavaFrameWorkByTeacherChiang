package day11_16_combine.model;

public class porder {
	private Integer id;
	private String name;
	private Integer Pro1;
	private Integer Pro2;
	private Integer Pro3;
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
		return Pro1;
	}
	public void setPro1(Integer pro1) {
		Pro1 = pro1;
	}
	public Integer getPro2() {
		return Pro2;
	}
	public void setPro2(Integer pro2) {
		Pro2 = pro2;
	}
	public Integer getPro3() {
		return Pro3;
	}
	public void setPro3(Integer pro3) {
		Pro3 = pro3;
	}
	public Integer getSum() {
		this.sum = Pro1*150+Pro2*300+Pro3*500;
		return sum;
	}
	public void setSum(Integer sum) {
		this.sum = sum;
	}
	@Override
	public String toString() {
		return "porder [id=" + id + ", name=" + name + ", Pro1=" + Pro1 + ", Pro2=" + Pro2 + ", Pro3=" + Pro3 + ", sum="
				+ sum + "]";
	}
}
