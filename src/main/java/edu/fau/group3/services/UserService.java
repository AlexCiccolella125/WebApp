package edu.fau.group3.services;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import edu.fau.otoledo.week11.model.User;

@Component
public class UserService extends BaseService<User>{
	
	@Autowired
	public UserService(DataSource dataSource) {
		super(dataSource);
	}

	@Override
	public List<User> getAll() {
		String query ="select * from user_info";
		return jdbcTemplate.query(query, new UserMapper());
	}
}
