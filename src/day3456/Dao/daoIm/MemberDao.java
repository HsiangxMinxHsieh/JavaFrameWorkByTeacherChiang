package day3456.Dao.daoIm;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import day3456.Dao.DaoIm;
import day3456.DbConn.Conn;
import day3456.Model.*;

public class MemberDao implements DaoIm {

	public static void main(String[] args) {
//		new MemberDao().add(new member("吼黑哈", "ggg", "1234"));
//		new MemberDao().update(1, new member("yyy", "000", "1234"));
//		new MemberDao().delete(2);
		System.out.println(new MemberDao().checkBeforeAdd(new member("吼黑哈", "eee", "1234")));
//		String searchUser = "000";
//		System.out.println("測試取得"+searchUser+"的所有資料為：" + new MemberDao().queryByUser(searchUser));
//		System.out.println("測試找是否有" + searchUser + "的結果為：" + new MemberDao().checkUser(searchUser));
	}

	/** 成功回傳1，失敗回傳0，已有重複回傳-1，輸入空值回傳-2 */
	public int checkBeforeAdd(Object o) {
		member p = (member) o;
		if (p.getUser().equals(""))
			return -2;
		if (this.checkUser(p.getUser()))
			return -1;
		String sql = "INSERT INTO member(name,user,password) VALUES (?,?,?)";
		try {
			PreparedStatement ps = Conn.DbConn().prepareStatement(sql);
			ps.setString(1, p.getName());
			ps.setString(2, p.getUser());
			ps.setString(3, p.getPassword());
			ps.executeUpdate();
			return 1;
		} catch (SQLException e) {
			System.out.println("no connection");
		}
		return 0;
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

		} catch (SQLException e) {
			System.out.println("no connection");
		}
	}

	public Boolean checkUser(String user) {
		String sql = "SELECT user FROM company.member WHERE user = '" + user + "'";
		try {
			ResultSet rs = Conn.DbConn().createStatement().executeQuery(sql);
			return rs.next();
		} catch (SQLException e) {
			System.out.println("no connction");
			e.printStackTrace();
		}
		return false;
	}

	public ResultSet getUserMember(String user, String password) {
		String sql = "SELECT * FROM company.member WHERE user = '" + user + "' AND password = '" + password + "'";
		try {
			ResultSet rs = Conn.DbConn().createStatement().executeQuery(sql);
			
			if (rs.next()) {
//				System.out.println(rs.getString("name"));
				return rs ;
			}
			else
				return null;
		} catch (Exception e) {
			System.out.println("no data get");
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<member> queryByUser(String user) {
		ArrayList<member> needList = new ArrayList<member>();
		String sql = "SELECT * FROM member WHERE user = '" + user + "' ORDER BY id DESC";
		try {
			ResultSet rs = Conn.DbConn().createStatement().executeQuery(sql);
			while (rs.next()) {
				needList.add(new member(rs.getString("name"), rs.getString("user"), rs.getString("password")));
			}
			return needList;
		} catch (SQLException e) {
			System.out.println("no connction");
			e.printStackTrace();
		}
		return needList;
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
		String sql = "DELETE FROM  member WHERE ID = " + id;
		try {
			Statement s = Conn.DbConn().createStatement();
			s.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
