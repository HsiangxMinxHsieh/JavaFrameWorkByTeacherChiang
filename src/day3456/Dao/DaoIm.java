package day3456.Dao;

import java.sql.ResultSet;

public interface DaoIm {
	void add(Object o);
	ResultSet queryAll();
	void update(int id, Object o);
	void delete(int id);
	
}