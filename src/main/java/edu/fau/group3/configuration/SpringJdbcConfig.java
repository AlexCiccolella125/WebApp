package edu.fau.group3.configuration;

import javax.sql.DataSource;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
@Configuration
@ComponentScan("edu.fau.group3")
public class SpringJdbcConfig {
	String DATABASE_URL = "jdbc:mysql://66.228.61.104:3306/DBGROUP3";
	String DATABASE_USERNAME = "group3db";
	String DATABASE_PASSWORD = "APPj4v4!";
	
	@Bean 
	public DataSource mysqlDataSource (){
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl(DATABASE_URL);
		dataSource.setUsername(DATABASE_USERNAME);
		dataSource.setPassword(DATABASE_PASSWORD);
		return dataSource;
	}
}
