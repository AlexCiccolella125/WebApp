package edu.fau.rcruz2015.week11services;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.tree.RowMapper;

import edu.fau.rcruz2015.week11model.Employee;

public class EmployeeMapper implements RowMapper<Employee>{

	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException{
		Employee e = new Employee();
		e.setId(rs.getInt(1));
		e.setFirstName(rs.getString(2));
		e.setLastName(rs.getString(3));
		e.setEmail(rs.getString(4));
		e.setDeptId(rs.getInt(5));
		e.setSalary(rs.getDouble(6));
		return e;
	}
}
