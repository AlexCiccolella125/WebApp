package edu.fau.group3.services;

import java.util.List;
import javax.sql.DataSource;
import edu.fau.group3.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

@Component
public class UserService extends BaseService<User>{
	
	@Autowired
	public UserService(DataSource dataSource) {
		super(dataSource);
	}

	@Override
	public List<User> getAll() {
		String query ="SELECT * from User";
		return jdbcTemplate.query(query, new UserMapper());
	}
	
	@Override
	public User getById(int id){
		String query ="SELECT * FROM User WHERE UserID = ?";
		try{
		return jdbcTemplate.queryForObject(query, new Object[] {id}, new UserMapper());
		}
		catch (EmptyResultDataAccessException ex){
				return null;
	}
}

	@Override
	public List<User> getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean create(User t) {
		
		//String query = "UPDATE EMPLOYEE SET empId=?, firtname=?, lastname=?, email=?, salary=?, depId=? WHERE id=?";
		//return jdbcTemplate.update(query, e.getId(), e.getFirstName(), e.getLastName(), e.getEmail(), e.getSalary(), e.getDeptId()) > 0;

		return false;
	}
}