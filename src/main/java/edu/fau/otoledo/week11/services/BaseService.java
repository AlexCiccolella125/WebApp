package edu.fau.otoledo.week11.services;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

public abstract class BaseService<T> {
	
	protected JdbcTemplate jdbcTemplate;
	public BaseService (DataSource dataSource){
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public abstract List<T> getAll();
	public abstract List<T> getByName(String name);
	
	public abstract T getById();
	
	public abstract boolean create(T t);
}
