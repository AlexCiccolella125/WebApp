package edu.fau.rcruz2015.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConfig {
	
	protected static final String url = "jdbc:mysql://66.228.61.104/FAUDB";
	protected static final String username = "group3db";
	protected static final String password = "APPj4v4!";
	
	public Connection getConnection () throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(url, username, password);
		
		return connection; 
	}
	

}
