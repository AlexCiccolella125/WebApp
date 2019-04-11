package edu.fau.otoledo.week11.services;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import edu.fau.otoledo.week11.model.Employee;

public abstract class BaseService<T> {
	protected JdbcTemplate jdbcTemplate;
	
	public BaseService(DataSource dataSource){
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public abstract List<T> getAll();
	
	public abstract T getById(int id);
	
	public abstract boolean create(T t);

	public List<Employee> getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}
}