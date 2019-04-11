package edu.fau.otoledo.week11.services;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.fau.otoledo.week11.model.Department;

public class DepartmentMapper implements RowMapper<Department>{

	public Department mapRow(ResultSet rs, int rowNum) throws SQLException {
		Department d = new Department();
		d.setId(rs.getInt(1));
		d.setName(rs.getString(2));
		return d;
	}

}
