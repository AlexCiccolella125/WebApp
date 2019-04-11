package edu.fau.rcruz2015.week11services;

import java.util.List;

public abstract class BaseServices<T> {
	protected JdbcTemplate jdbcTemplate; 
	
	public BaseService(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public abstract List<T> getAll();
	
	public abstract T getById();
	
	public abstract boolean create(T t);
}
