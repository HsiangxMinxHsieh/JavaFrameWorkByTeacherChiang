package day3456.DbConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conn {

	public static Connection DbConn() {//連接老師資料庫，改用3305(正常為3306)
		String url = "jdbc:mysql://localhost:3306/company?characterEncoding=utf-8";
		String user = "root";
		String password = "1234";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("連接成功。");
			return con;
		} catch (ClassNotFoundException e) {
			System.out.println("no driver");
		} catch (SQLException e) {
			System.out.println("no Connection");
		}
		return null;
	}

	public static void main(String[] args) {
		System.out.println(DbConn());
	}

}
