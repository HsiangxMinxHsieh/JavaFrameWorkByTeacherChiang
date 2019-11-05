package day12.Dao.daoIm;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import day12.Dao.DaoIm;
import day12.DbConn.Conn;
import day12.Model.*;

public class MemberDao implements DaoIm {
	public static void main(String[] args) {
		new MemberDao().add(new member("九啾啾就領","gcccjolin","1234"));
//		new MemberDao().update(3, new member("九啾啾就領~~~", "abc123Jolin", "1234"));
//		new MemberDao().delete(2);
	}

	@Override
	public void add(Object o) {
		String sql = "INSERT INTO member(name,user,password) VALUES (?,?,?)";
		member p = (member) o;
		try {
			PreparedStatement ps = Conn.DbConn().prepareStatement(sql);
			ps.setString(1, p.getName());
			ps.setString(2, p.getUser());
			ps.setString(3, p.getPassword());
			ps.executeUpdate();

		} catch (Exception e) {
			System.out.println("no connection");
		}
	}

	@Override
	public ResultSet queryAll() {
		String sql = "SELECT * FROM member ORDER BY id DESC";
		try {
			return Conn.DbConn().createStatement().executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("no connction");
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void update(int id, Object o) {
		String sql = "UPDATE member SET name = ?,user = ?,password = ? WHERE ID = ?;";
		member m = (member) o;
		try {
			PreparedStatement ps = Conn.DbConn().prepareStatement(sql);
			ps.setString(1, m.getName());
			ps.setString(2, m.getUser());
			ps.setString(3, m.getPassword());
			ps.setInt(4, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("no connection");
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM  member WHERE ID = "+ id;
		try {
			Statement s = Conn.DbConn().createStatement();
			s.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
