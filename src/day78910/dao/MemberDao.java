package day78910.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import day78910.model.member;

public class MemberDao {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		System.out.println(getSession());
//		member m = new member();
//		m.setName("吼黑");
//		m.setUser("xxxx000");
//		m.setPassword("xxx111");
//		MemberDao.Add(m);

//		System.out.println(getMember(4));
		
//		deleteMember(10);
//		member m = new member();
//		m.setName("測試測試789");
//		m.setUser("ccc678");
//		m.setPassword("4444");
//		update(11,m);
		
	}
	
	public static void Add(member m) {
		Session se = getSession();

		Transaction tx = se.beginTransaction();
		se.save(m);
		tx.commit();
		se.close();
	}
	
	public static void update(int id,member m) {
		Session se = getSession();
		Transaction tx = se.beginTransaction();
		member mn = getMember(id);
		mn.setId(id);
		//如果是沒有修改到的屬性，就用從舊的資料取出來的
		mn.setName((m.getName()==null)?mn.getName():m.getName());
		mn.setUser((m.getUser()==null)?mn.getUser():m.getUser());
		mn.setPassword((m.getPassword()==null)?mn.getPassword():m.getPassword());
		se.update(mn);
		tx.commit();
		se.close();
	}
	
	
	public static member getMember(int id) {
		return getSession().get(member.class, id);
	}

	public static void deleteMember(int id) {
		Session se = getSession();
		Transaction tx = se.beginTransaction();
		member m = getMember(id);
		se.delete(m);
		tx.commit();
		se.close();
	}
	public static Session getSession() {
//		Configuration con=new Configuration().configure();
//		SessionFactory sf=con.buildSessionFactory();
//		
//		Session se=sf.openSession();
		return new Configuration().configure().buildSessionFactory().openSession();
	}

}
