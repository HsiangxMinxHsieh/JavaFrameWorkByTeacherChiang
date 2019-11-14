package day11_16_IOC.model;

public class B {
	private String name;
	private int eng;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	@Override
	public String toString() {
		return "B [name=" + name + ", eng=" + eng + "]";
	}

	

}
