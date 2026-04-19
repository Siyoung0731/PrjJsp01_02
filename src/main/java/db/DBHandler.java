package db;

import java.sql.*;

public class DBHandler {
	private static String driver = "com.mysql.cj.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/mydb?serverTimezone=Asia/Seoul";
	private static String dbuid = "root";
	private static String dbpwd = "1234";
		
	public int list(String username) throws ClassNotFoundException, SQLException {
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, dbuid, dbpwd);
		
		String sql = "SELECT * FROM TUSER WHERE USERNAME LIKE ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%" + username + "%");
		
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String uid = rs.getString("userid");
			String uname = rs.getString("username");
			String uemail = rs.getString("email");
			
			String tag = "<li>" + uid + "," + uname + "," + uemail + "," + "</li>";
		}
		int aftcnt = pstmt.executeUpdate();
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return aftcnt;	
	}
}
