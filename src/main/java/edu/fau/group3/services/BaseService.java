package edu.fau.group3.services;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;


public abstract class BaseService<T> {

	protected JdbcTemplate jdbcTemplate;
	
	public BaseService(DataSource dataSource){
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public abstract T getById(int id);
	
	public abstract List<T> getAll();
	
	public abstract List<T> getByName(String name);
	
	public abstract boolean create(T t);
}
