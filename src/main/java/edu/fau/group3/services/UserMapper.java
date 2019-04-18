package edu.fau.group3.services;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import edu.fau.group3.model.User;

public class UserMapper implements RowMapper<User>{

	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setUserId(rs.getInt("UserID"));
		user.setFirstName(rs.getString("UserFirstName"));
		user.setLastName(rs.getString("UserLastName"));
		user.setEmail(rs.getString("UserEmail"));
		user.setPassword(rs.getString("UserPassword"));
		user.setPhone(rs.getInt("UserPhone"));
		user.setAdminStatus(rs.getBoolean("UserAdmin"));
		return user;
	}
}