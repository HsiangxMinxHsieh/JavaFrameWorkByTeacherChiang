package day11_16.model;

public class A {
	private String name;
	private int chi;

	public A() {}
	public A(String name,int chi) {
		this.name = name;
		this.chi = chi;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getChi() {
		return chi;
	}

	public void setChi(int chi) {
		this.chi = chi;
	}

	@Override
	public String toString() {
		return "A [name=" + name + ", chi=" + chi + "]";
	}

}
