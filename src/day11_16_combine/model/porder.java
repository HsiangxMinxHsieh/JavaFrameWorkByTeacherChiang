package day11_16_combine.model;

public class porder {
	private Integer id;
	private String name;
	private Integer ruler=0;
	private Integer pen=0;
	private Integer sum;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getRuler() {
		return ruler;
	}
	public void setRuler(Integer ruler) {
		this.ruler = ruler;
	}
	public Integer getPen() {
		return pen;
	}
	public void setPen(Integer pen) {
		this.pen = pen;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setSum(Integer sum) {
		this.sum = sum;
	}
	public Integer getSum() {
		this.sum = ruler * 39 + pen * 25;
		return sum;
	}
	
	@Override
	public String toString() {
		return "porder [id=" + id + ", name=" + name + ", ruler=" + ruler + ", pen=" + pen + ", sum=" + sum + "]";
	}
	
}
