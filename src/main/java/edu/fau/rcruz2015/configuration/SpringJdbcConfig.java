package edu.fau.rcruz2015.configuration;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
@Configuration
@ComponentScan("edu.fau.rcruz2015.week11model")
public class SpringJdbcConfig {
	String DATABASE_URL = "jdbc:mysql://66.228.61.104:3306/GROUP3DB";
	String DATABASE_USERNAME = "rcruz";
	String DATABASE_PASSWORD = "raquel";
	
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
