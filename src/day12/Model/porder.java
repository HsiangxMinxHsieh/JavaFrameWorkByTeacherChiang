package day12.Model;

public class porder {
	private int ruler;
	private int pen;
	private int sum;

	public porder(int ruler, int pen) {
		super();
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

	@Override
	public String toString() {
		return "porder [ruler=" + ruler + ", pen=" + pen + ", sum=" + sum + "]";
	}

}
