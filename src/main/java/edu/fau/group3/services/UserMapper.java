package edu.fau.group3.services;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.fau.group3.model.User;

public class UserMapper implements RowMapper<User>{

	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setUserId(rs.getString("UserID"));
		user.setFirstName(rs.getString("UserFirstName"));
		user.setLastName(rs.getString("UserLastName"));
		user.setEmail(rs.getString("UserEmail"));
		user.setPassword(rs.getString("UserPassword"));
		user.setPhone(rs.getInt("Phone"));
		user.setShipID(rs.getString("UserShipID"));
		user.setBillID(rs.getString("UserBillID"));
		user.setAdminStatus(rs.getBoolean("UserAdmin"));
		user.setUsername(rs.getString("UserName"));
		return user;
	}
}
