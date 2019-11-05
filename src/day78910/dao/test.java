package day78910.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import day78910.model.member;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		

		Session se2 = impl.getSe();
		Transaction tx2 = se2.beginTransaction();
		
		String sql = "SELECT * FROM member";
		SQLQuery sql1=se2.createSQLQuery("SELECT * FROM member");

		sql1.addEntity("member",member.class);
		
		List<member> l = sql1.list();
		
		l.forEach(s -> System.out.println(s));
		
		se2.close();
		
		
//		
//		

	}

	static void showByHQL() {
		Session se = impl.getSe();
		Transaction tx = se.beginTransaction();
		String hql = "from member";
		hql = "from member where id >=50";
		hql = "from member where id >=50 or id<=40";
		hql = "from member where id >=30 and id <= 35 ";
		hql = "from member where (id between 35 and 40)";
		hql = "from member where name = '我不會'";
		hql = "from member where name in ('我不會')";
		hql = "from member where name in ('我不會','吼黑')";
		hql = "from member as m where m.name in ('我不會','吼黑') and m.id >40";

		Query q = se.createQuery(hql);

		tx.commit();

		List<member> l = q.list();
		l.forEach(s -> System.out.println(s));
		
		se.close();
	}
}
