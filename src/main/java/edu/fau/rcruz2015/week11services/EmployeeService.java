package edu.fau.rcruz2015.week11services;

import java.util.List;

import javax.sql.DataSource;

import edu.fau.rcruz2015.week11model.Employee;

@Component
public class EmployeeService extends BaseServices<Employee> {

	public EmployeeService(DataSource dataSource) {
		super(dataSource);
	}
	
	
	
	@Override
	public List<Employee> getAll() {
		String sql = "select * from EMPLOYEE";
		return jdbcTemplate.query(sql, new EmployeeMapper());
	}

	@Override
	public Employee getById() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean create(Employee t) {
		// TODO Auto-generated method stub
		return false;
	}

}
