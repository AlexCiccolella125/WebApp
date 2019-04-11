package edu.fau.rcruz2015.week11services;

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
	public User getById(int id) {
		String query = "select * from user_info where userId = ?";
		return jdbcTemplate.queryForObject(query, new Object[] {id}, new UserMapper());
	}

	@Override
	public List<User> getAll() {
		String query ="select * from user_info";
		return jdbcTemplate.query(query, new UserMapper());
	}

	@Override
	public boolean create(User user) {
		String query ="insert into user_info (userId, firstName, lastName, email, password, mobile, address1, username) "
				+ "values(?, ?, ?, ?, ?, ?, ?, ?)";
		return jdbcTemplate.update(query, user.getUserId(), user.getFisrtName(), user.getLastName(), user.getEmail(), 
				user.getPassword(), user.getMobile(), user.getAddress1(), user.getUsername())>0;
	}


}
