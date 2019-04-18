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
		}catch (EmptyResultDataAccessException ex){
				return null;
		}
	}	

	@Override
	public User getByName(String name) {
		String query = "SELECT * FROM User where UserID =?";
		return jdbcTemplate.queryForObject(query, new Object[] {name}, new UserMapper());
	}
	
	@Override
	public boolean create(User t) {
		String query = "INSERT INTO User (UserID, UserAdmin, UserFirstName, UserLastName, UserEmail, UserPassword, UserPhone) value (?,?,?,?,?,?,?)";
		return jdbcTemplate.update(query, t.getUserId(), t.getAdminStatus(), t.getFirstName(), t.getLastName(), t.getEmail(), t.getPassword(), t.getPhone()) > 0;
	}
	
	@Override
	public boolean update(User t) {
		String query = "UPDATE User SET UserID=?, UserAdmin=?, UserFirstName=?, UserLastName=?, UserEmail=?, UserPassword=?, UserPhone=?, WHERE UserID=?";
		return jdbcTemplate.update(query, t.getUserId(), t.getAdminStatus(), t.getFirstName(), t.getLastName(), t.getEmail(), t.getPassword(), t.getPhone()) > 0;
	}
	public boolean DELETE(User t){
		String query = "DELETE FROM User WHERE UserID = ?";
		return jdbcTemplate.update(query, t.getUserId()) > 0;
	}

	@Override
	public List<User> getSortedList(int id) {
		// TODO Auto-generated method stub
		return null;
	}
}