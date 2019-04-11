package edu.fau.rcruz2015.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
//import edu.fau.rcruz2015.util.*; if not in same pacakge

public class TestLab {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		DBUtil db = new DBUtil();
		List<Employee> empList = db.getAllEmployees();
		
		for (int index = 0; index < empList.size(); index++ ){
			System.out.println(empList.get(index).getId() + " " + empList.get(index).getFirstName());
		}
		
//		Class.forName("com.mysql.jdbc.Driver");
//		String url = "jdbc:mysql://66.228.61.104/FAUDB";
//		String username = "group3db";
//		String password = "APPj4v4!";
		// don't need anymore bc its in DBConfig
		
//		Connection connection = DriverManager.getConnection(url, username, password);
//
//		DBConfig db = new DBConfig();
//		Connection connection = db.getConnection();
//		
//		String sql = "select * from EMP";
//		Statement statement = connection.createStatement();
//		ResultSet rs = statement.executeQuery(sql);
//
//		while (rs.next()){
//			System.out.println(rs.getString(1));
//			System.out.println(rs.getString(2));
//			System.out.println(rs.getString(3));
//			System.out.println(rs.getString(4));
//			System.out.println(rs.getDouble(5));
//			System.out.println(rs.getInt(6));
//			System.out.println(" ");
//			
//		}
		
		
		
	}

}
