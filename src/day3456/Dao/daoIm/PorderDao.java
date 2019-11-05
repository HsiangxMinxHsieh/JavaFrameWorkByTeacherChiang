package day3456.Dao.daoIm;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import day3456.Dao.DaoIm;
import day3456.DbConn.Conn;
import day3456.Model.porder;

public class PorderDao implements DaoIm {

	public static void main(String[] args) {
//		new PorderDao().add(new porder(1,2));
//		new PorderDao().update(1,new porder(2,2));
//		new PorderDao().delete(1);
		
	}

	@Override
	public void add(Object o) {
		String sql = "INSERT INTO porder(name,ruler,pen,sum) VALUES (?,?,?,?)";
		porder p = (porder) o;
		try {
			PreparedStatement ps = Conn.DbConn().prepareStatement(sql);
			ps.setString(1, p.getName());
			ps.setInt(2, p.getRuler());
			ps.setInt(3, p.getPen());
			ps.setInt(4, p.getSum());
			ps.executeUpdate();

		} catch (SQLException e) {
			System.out.println("no connection");
		}
	}

	@Override
	public ResultSet queryAll() {
		String sql = "SELECT * FROM porder ORDER BY id DESC";
		try {
			return Conn.DbConn().createStatement().executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("no connction");
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void update(int id,Object o) {
		String sql = "UPDATE  porder SET ruler = ?,pen = ?,sum = ? WHERE ID = ?;";
		porder p = (porder) o;
		try {
			PreparedStatement ps = Conn.DbConn().prepareStatement(sql);
			ps.setInt(1, p.getRuler());
			ps.setInt(2, p.getPen());
			ps.setInt(3, p.getSum());
			ps.setInt(4, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("no connection");
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM  porder WHERE ID = "+ id;
		try {
			Statement s = Conn.DbConn().createStatement();
			s.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
