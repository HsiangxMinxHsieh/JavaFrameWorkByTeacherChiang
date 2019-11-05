package day3456.Model;

public class porder {
	private String name;
	private int ruler;
	private int pen;
	private int sum;

	public porder(String name,int ruler, int pen) {
		super();
		this.name = name;
		this.ruler = ruler;
		this.pen = pen;
		this.sum = ruler * 39 + pen * 25;
	}

	public int getRuler() {
		return ruler;
	}

	public void setRuler(int ruler) {
		this.ruler = ruler;
	}

	public int getPen() {
		return pen;
	}

	public void setPen(int pen) {
		this.pen = pen;
	}

	public int getSum() {
		this.sum = ruler * 39 + pen * 25;
		return sum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "porder [name=" + name + ", ruler=" + ruler + ", pen=" + pen + ", sum=" + sum + "]";
	}

	


}
