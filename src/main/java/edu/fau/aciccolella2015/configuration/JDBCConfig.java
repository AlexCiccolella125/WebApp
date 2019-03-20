package edu.fau.aciccolella2015.configuration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConfig {
	//credentials
	protected final static String DB_URL = "jdbc:mysql://66.228.61.104:3306/FAUDB";
	protected final static String DB_USERNAME = "group3db";
	protected final static String DB_PASSWORD = "APPj4v4!";

	//method that takes credentials and connects to database
	public Connection getConnection() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
		return connection; 
	}
}
