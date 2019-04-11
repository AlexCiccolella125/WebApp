package edu.fau.otoledo.week11.configuration;

import javax.sql.DataSource;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
@Configuration
@ComponentScan("edu.fau.otoledo.week11")
public class SpringJdbcConfig {
	String DATABASE_URL = "jdbc:mysql://66.228.61.104:3306/MYAPPDB";
	String DATABASE_USERNAME = "APP";
	String DATABASE_PASSWORD = "Abcd1234!";
	
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
