package asd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Driver;
import com.mysql.jdbc.Statement;

public class dsfsdf {

	public static void main(String[] args) throws SQLException {
		DriverManager.registerDriver(new Driver());
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstsql", "root","132207");
//		Statement st = (Statement) con.createStatement();
//
//		// 4.操作sql语句
//		String sql = "select * from employee";
//
//		// 操作sql语句(select语句),会得到一个ResultSet结果集
//		ResultSet rs = st.executeQuery(sql);
//
//		// 5.遍历结果集
//		// boolean flag = rs.next(); // 向下移动，返回值为true，代表有下一条记录.
//		// int id = rs.getInt("id");
//		// String username=rs.getString("username");
//		// System.out.println(id);
//		// System.out.println(username);
//		
//		while(rs.next()){
//			int id=rs.getInt("1");
//			String username=rs.getString("2");
//			
//			
//			System.out.println(id+"  "+username);
//		}

	}

}
