package edu.fau.otoledo.week11.services;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import edu.fau.otoledo.week11.model.Department;

@Component
public class DepartmentService extends BaseService<Department>{
	
	@Autowired
	public DepartmentService(DataSource dataSource) {
		super(dataSource);
		
	}

	@Override
	public List<Department> getAll() {
		String sql = "select * from DEPARTMENT";
		return jdbcTemplate.query(sql, new DepartmentMapper());
	}

	@Override
	public Department getById(int id) {
		String sql = "select * from DEPARTMENT where id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[]{id}, new DepartmentMapper());
	}

	@Override
	public boolean create(Department t) {
		// TODO Auto-generated method stub
		return false;
	}

}
