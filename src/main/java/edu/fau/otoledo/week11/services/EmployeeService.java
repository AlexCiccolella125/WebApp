package edu.fau.otoledo.week11.services;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import edu.fau.otoledo.week11.model.Employee;

@Component
public class EmployeeService extends BaseService<Employee>{

	
	@Autowired
	public EmployeeService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<Employee> getAll() {
		String sql = "select * from EMPLOYEE";
		return jdbcTemplate.query(sql, new EmployeeMapper());
	}

	@Override
	public List<Employee> getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee getById(int id) {
		String sql = "select * from EMPLOYEE where empId = ?";
		return jdbcTemplate.queryForObject(sql, new Object[]{id}, new EmployeeMapper());
	}

	@Override
	public boolean create(Employee e) {
		String sql = "insert into EMPLOYEE (empId, firstname, lastname, email, salary, depId)"
	+				"values (?,?,?,?,?,?)";
		return jdbcTemplate.update(sql, e.getId(), e.getFirstName(), e.getLastName(),e.getEmail(),e.getSalary(),e.getDeptId()) > 0;
	}

	public boolean update(Employee emp) {
		// TODO Auto-generated method stub
		return false;
	}

	

}
