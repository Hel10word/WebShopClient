package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*******************************************************************************
 * 
 * @author 张不凡  描述 数据库操作工具类
 * 
 */
public class DBHelper {

	// 获得连接 定义工具方法
	public static Connection getConn() {
		Connection conn = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			// 获得数据库连接
			conn = DriverManager.getConnection(
					"jdbc:sqlserver://localhost:1433; DatabaseName=ZhangBFWebShop_JSP",
					"sa", "sa");
			// 定义执行sql语句
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	// 关闭资源
	public static void closeResouce(Connection conn,PreparedStatement ps,ResultSet rs) {

		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

}
