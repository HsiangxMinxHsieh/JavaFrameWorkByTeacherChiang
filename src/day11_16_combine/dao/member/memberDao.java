package day11_16_combine.dao.member;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import day11_16_combine.model.member;
import day11_16_combine.dao.impl;

public class memberDao implements impl {

	public static void main(String[] args) {
		// ADD
//		member m = new member();
//		m.setName("吼黑哈黑");
//		m.setUser("xxx443");
//		m.setPassword("xxx111");
//		new memberDao().add(m);
		// GET
//		System.out.println(new memberDao().getobject(20));
		// Query All
//		List l = new memberDao().queryAll();
//		l.forEach(s -> System.out.println(s));
		// DELETE
//		new memberDao().deleteObject(56);
		// UPDATE
//		member m = new member();
//		m.setName("吼黑哈黑");
//		m.setUser("xxx447");
//		m.setPassword("xxx111");
//		new memberDao().updateObject(20,m);

	}

	public Boolean checkUser(String user) {
		try {
			ArrayList<member> arr = new ArrayList<member>();
			arr.addAll(queryAll());
			boolean isHaveSameData = false;
			if (arr.size() != 0) {
				for (member m : arr) {
					if (user.equals(m.getUser()))
						isHaveSameData = true;
				}
			}
			return isHaveSameData;
		} catch (Exception e) {
			System.out.println("finding_error");
			e.printStackTrace();
		}
		return false;
	}

	/** 成功回傳1，失敗回傳0，已有重複回傳-1，輸入空值回傳-2 */
	public int checkBeforeAdd(Object o) {
		member p = (member) o;
		try {
			if (p.getUser().equals(""))
				return -2;
			if (this.checkUser(p.getUser()))
				return -1;
			add(o);
			return 1;
		} catch (Exception e) {
			System.out.println("no connection");
		}
		return 0;
	}

	public List<member> queryAll() {
		Session se = impl.getSe();
		Transaction tx = se.beginTransaction();
		String hql = "from member";

		Query q = se.createQuery(hql);
		tx.commit();
		List<member> l = q.list();
//		l.forEach(s -> System.out.println(s));
		se.close();
		return l;
	}

	@Override
	public void add(Object o) {
		Session se = impl.getSe();
		Transaction tx = se.beginTransaction();
		se.save(o);
		tx.commit();
		se.close();
	}

	@Override
	public member getobject(int id) {
		return (member) impl.getSe().get(member.class, id);
	}

	@Override
	public void deleteObject(int id) {
		Session se = impl.getSe();
		Transaction tx = se.beginTransaction();
		member m = getobject(id);
		se.delete(m);
		tx.commit();
		se.close();

	}

	@Override
	public void updateObject(int id, Object o) {
		Session se = impl.getSe();
		Transaction tx = se.beginTransaction();
		member mn = (member) getobject(id);
		member mo = (member) o;
		mn.setId(id);
		// 如果是沒有修改到的屬性，就用從舊的資料取出來的
		mn.setName((mo.getName() == null) ? mn.getName() : mo.getName());
		mn.setUser((mo.getUser() == null) ? mn.getUser() : mo.getUser());
		mn.setPassword((mo.getPassword() == null) ? mn.getPassword() : mo.getPassword());
		se.update(mn);
		tx.commit();
		se.close();

	}

}
