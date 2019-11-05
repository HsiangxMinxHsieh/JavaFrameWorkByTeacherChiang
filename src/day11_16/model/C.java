package day11_16.model;

public class C {
	private String name ;
	private int math;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}	
	
	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		this.math = math;
	}

	@Override
	public String toString() {
		return "C [name=" + name + ", math=" + math + "]";
	}

	
	
}
