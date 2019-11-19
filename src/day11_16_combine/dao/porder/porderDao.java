package day11_16_combine.dao.porder;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import day11_16_combine.dao.impl;
import day11_16_combine.model.member;
import day11_16_combine.model.porder;

public class porderDao implements impl {

	public static void main(String[] args) {
		// ADD
//		porder p = new porder();
//		p.setName("吼黑哈");
//		p.setPro1(5);
//		p.setPro2(11);
//		p.setPro3(0);
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
//		m.setName("吼黑哈ㄏㄧㄏㄧㄡˇ~~~");
//		m.setRuler(12);
//		m.setPen(14);
//		m.getSum();
//		new porderDao().updateObject(15,m);

		System.out.println(new porderDao().queryByUserAndJudgeIsAdmin("222"));

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

	public List<porder> queryByUserAndJudgeIsAdmin(String user) {
		Session se = impl.getSe();
		Transaction tx = se.beginTransaction();
		String hql = "";
		if (user.equals("管理者AAABBBCCC"))
			hql = "from porder";
		else
			hql = "from porder where name = '" + user + "'";

		Query<porder> q = se.createQuery(hql);
		tx.commit();
		List<porder> l = q.list();
//		l.forEach(s -> System.out.println(s));
		se.close();
		return l;
	}

	@Override
	public void add(Object o) {
		System.out.println("存入前的ｐｏｒｄｅｒ是＝＝＝＞" + (porder) o);
		Session se = impl.getSe();
		Transaction tx = se.beginTransaction();
		se.save((porder) o);
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
		pn.setName((po.getName() == null) ? pn.getName() : po.getName());
		pn.setPro1((po.getPro1() == null) ? pn.getPro1() : po.getPro1());
		pn.setPro2((po.getPro2() == null) ? pn.getPro2() : po.getPro2());
		pn.setPro3((po.getPro3() == null) ? pn.getPro3() : po.getPro3());
		pn.setSum(pn.getSum());
		se.update(pn);
		tx.commit();
		se.close();
	}

	/** 成功回傳1，失敗回傳0，已有重複回傳-1，輸入空值回傳-2 */
	public int checkBeforeEdit(Integer id,Object o) {
		porder p = (porder) o;
		try {
			if (p.getName().equals(""))
				return -2;
			updateObject(id, p);
			return 1;
		} catch (Exception e) {
			System.out.println("porder CheckBeforeEdit Error");
			e.printStackTrace();
		}
		return 0;
	}

}
