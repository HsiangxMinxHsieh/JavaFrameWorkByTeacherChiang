package day11_16_IOC.model;

public class pro {
	private A a;
	private	B b;
	public pro() {}
	public pro(A a,B b) {
		System.out.println("a.name===>"+a.getName()+"\t"+"b.name===>"+b.getName());
		this.a=a;
		this.b=b;
	}
	
	public A getA() {
		return a;
	}
	public void setA(A a) {
		this.a = a;
	}
	public B getB() {
		return b;
	}
	public void setB(B b) {
		this.b = b;
	}
	@Override
	public String toString() {
		return "Pro1 [a=" + a + ", b=" + b + "]";
	}

}
