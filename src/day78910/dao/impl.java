package day78910.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public interface impl {
	static Session getSe()
	{
		Configuration conn=new Configuration().configure("hibernate.cfg.xml");
		SessionFactory sf=conn.buildSessionFactory();
		Session se=sf.openSession();
		return se;
		
	}
	
	void add(Object o);
	Object getobject(int id);	
	void deleteObject(int id);
	void updateObject(int id,Object o);
	
	

}