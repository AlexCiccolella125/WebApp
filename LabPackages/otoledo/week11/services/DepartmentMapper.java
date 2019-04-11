package edu.fau.otoledo.week11.services;

import edu.fau.otoledo.week11.model.*;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
public class DepartmentMapper implements RowMapper<Department>{

	public Department mapRow(ResultSet rs, int arg1) throws SQLException {
		Department d = new Department();
		d.setId(rs.getInt(1));
		
		return null;
	}

}

