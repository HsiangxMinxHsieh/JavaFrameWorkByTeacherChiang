package day78910.dao.porder;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import day78910.dao.impl;
import day78910.model.porder;

public class porderDao implements impl{

	public static void main(String[] args) {
		// ADD
//		porder p = new porder();
//		p.setName("�暺����");
//		p.setRuler(5);
//		p.setPen(11);
//		p.getSum();
//		new porderDao().add(p);
		// GET
//		System.out.println(new porderDao().getobject(15));
		// Query All
//		List l = new porderDao().queryAll();
//		l.forEach(s -> System.out.println(s));
		// DELETE
//		new porderDao().deleteObject(14);
		// UPDATE
//		porder m = new porder();
//		m.setName("�暺����");
//		m.setRuler(12);
//		m.setPen(14);
//		m.getSum();
//		new porderDao().updateObject(15,m);
		
	}
	public List<porder> queryAll() {
		Session se = impl.getSe();
		Transaction tx = se.beginTransaction();
		String hql = "from porder";

		Query q = se.createQuery(hql);
		tx.commit();
		List<porder> l = q.list();
//		l.forEach(s -> System.out.println(s));
		se.close();
		return l;
	}
	
	
	@Override
	public void add(Object o) {
		System.out.println("存入前的ｐｏｒｄｅｒ是＝＝＝＞"+(porder)o);
		Session se = impl.getSe();
		Transaction tx = se.beginTransaction();
		se.save((porder)o);
		tx.commit();
		se.close();
	}

	@Override
	public porder getobject(int id) {
		return (porder) impl.getSe().get(porder.class, id);
	}

	@Override
	public void deleteObject(int id) {
		Session se = impl.getSe();
		Transaction tx = se.beginTransaction();
		porder p = getobject(id);
		se.delete(p);
		tx.commit();
		se.close();

	}

	@Override
	public void updateObject(int id, Object o) {
		Session se = impl.getSe();
		Transaction tx = se.beginTransaction();
		porder pn = (porder) getobject(id);
		porder po = (porder) o;
		
		pn.setId(id);
		// 憒�瘝�耨����惇�改�停�敺�����靘��
		pn.setName((po.getName() == null) ? pn.getName() : po.getName());
		pn.setRuler((po.getRuler() == null) ? pn.getRuler() : po.getRuler());
		pn.setPen((po.getPen() == null) ? pn.getPen() : po.getPen());
		pn.setSum(pn.getSum());
		se.update(pn);
		tx.commit();
		se.close();
	}

	

}
