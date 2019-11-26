package day11_16_combine.dao;

import day11_16_combine.dao.member.memberDao;
import day11_16_combine.dao.porder.porderDao;

public class Fact {
	private porderDao p;
	private memberDao m;
	public porderDao getP() {
		return p;
	}
	public void setP(porderDao p) {
		this.p = p;
	}
	public memberDao getM() {
		return m;
	}
	public void setM(memberDao m) {
		this.m = m;
	}
}
