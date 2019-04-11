package edu.fau.otoledo.week11.services;
import edu.fau.otoledo.week11.model.*;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class EmployeeMapper implements RowMapper<Employee>{

	public Employee mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		Employee e = new Employee();
		e.setId(rs.getInt(1));
		e.setFirstName(rs.getString(2));
		e.setLastName(rs.getString(3));
		e.setEmail(rs.getString(4));
		e.setSalary(rs.getDouble(5));
		e.setDeptId(rs.getInt(6));
		return e;
	}
}
